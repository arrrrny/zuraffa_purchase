import 'package:get_it/get_it.dart';
import 'package:zuraffa/zuraffa.dart';

import 'domain/entities/entitlement/entitlement.dart';
import 'domain/entities/entitlement_snapshot/entitlement_snapshot.dart';
import 'domain/entities/enums/entitlement_state.dart';
import 'domain/entities/enums/purchase_state.dart';
import 'domain/entities/product/product.dart';
import 'domain/store/subscription_store.dart';
import 'data/store/in_memory_subscription_store.dart';

export 'domain/store/subscription_store.dart';

/// The app-facing subscription service: purchase → map → entitlement,
/// restore, refresh (state re-derivation incl. grace/expiry), and
/// snapshot (spec 001).
///
/// ```dart
/// final subs = SubscriptionService();
/// final purchase = await subs.purchase(PurchaseRequest(
///   productId: 'pro.monthly', appAccountUserId: authUserId));
/// await subs.finishPurchase(purchase);
/// final snapshot = await subs.snapshotFor(userId);
/// final active = snapshot.activeProductIds.contains('pro.monthly');
/// ```
class SubscriptionService {
  /// The store adapter (or the in-memory default in tests).
  final SubscriptionStorePort store;

  /// Clock for expiry math (epoch ms); injectable for tests.
  final int Function() now;

  /// Domain entitlements granted, keyed by entitlement id.
  final Map<String, Entitlement> _entitlements = {};

  SubscriptionService({SubscriptionStorePort? store, int Function()? now})
    : store = store ?? InMemorySubscriptionStore(),
      now = now ?? (() => DateTime.now().millisecondsSinceEpoch);

  // ── products ────────────────────────────────────────────────────────

  /// Loads the store catalog for [productIds] (unknown ids absent).
  Future<List<Product>> products(List<String> productIds) =>
      store.fetchProducts(productIds);

  // ── purchase ────────────────────────────────────────────────────────

  /// Launches the purchase flow; a successful purchase maps into a
  /// domain entitlement (granted immediately) and is returned so the
  /// caller can [finishPurchase] once server-validated.
  Future<StorePurchase> purchase(PurchaseRequest request) async {
    final storePurchase = await store.purchase(request);
    // The store outcome is authoritative except when an adapter returns a
    // placeholder product id — the request's productId is the contract.
    final effective = storePurchase.productId.isEmpty
        ? StorePurchase(
            transactionId: storePurchase.transactionId,
            productId: request.productId,
            state: storePurchase.state,
            purchasedAt: storePurchase.purchasedAt,
            expiresAt: storePurchase.expiresAt,
            pendingFinish: storePurchase.pendingFinish,
            receipt: storePurchase.receipt,
          )
        : storePurchase;
    final entitlement = _mapToEntitlement(
      effective,
      // The request's app account owns the entitlement; anonymous
      // purchases fall back to the transaction id (spec 001 FR-002).
      userId: request.appAccountUserId,
    );
    _entitlements[entitlement.id] = entitlement;
    return effective;
  }

  /// Finishes (acknowledges) the store transaction; idempotent.
  Future<void> finishPurchase(StorePurchase purchase) =>
      store.finishPurchase(purchase.transactionId);

  // ── restore ─────────────────────────────────────────────────────────

  /// Restores prior purchases and (re)grants their entitlements; returns
  /// the restored purchases.
  Future<List<StorePurchase>> restoreFor(String userId) async {
    final restored = await store.restore();
    for (final storePurchase in restored) {
      final entitlement = _mapToEntitlement(storePurchase, userId: userId);
      _entitlements[entitlement.id] = entitlement;
    }
    return restored;
  }

  // ── entitlements ─────────────────────────────────────────────────────

  /// All entitlements for [userId], with states re-derived against
  /// `now`: expired past `expiresAt`, gracePeriod within a grace window
  /// after expiry, otherwise the stored state.
  Future<List<Entitlement>> entitlementsFor(
    String userId, {
    Duration gracePeriod = const Duration(days: 3),
  }) async {
    final stamp = now();
    return _entitlements.values
        .where((entitlement) => entitlement.userId == userId)
        .map((entitlement) => _deriveState(entitlement, stamp, gracePeriod))
        .toList(growable: false);
  }

  /// Whether [userId] currently holds an active (or grace) entitlement
  /// for [productId].
  Future<bool> hasEntitlement(
    String userId,
    String productId, {
    Duration gracePeriod = const Duration(days: 3),
  }) async {
    final entitlements = await entitlementsFor(
      userId,
      gracePeriod: gracePeriod,
    );
    return entitlements.any(
      (entitlement) =>
          entitlement.productId == productId &&
          (entitlement.state == EntitlementState.active ||
              entitlement.state == EntitlementState.gracePeriod),
    );
  }

  /// A full snapshot for [userId] (for gate checks and UI).
  Future<EntitlementSnapshot> snapshotFor(
    String userId, {
    Duration gracePeriod = const Duration(days: 3),
  }) async {
    final entitlements = await entitlementsFor(
      userId,
      gracePeriod: gracePeriod,
    );
    return EntitlementSnapshot(
      id: 'snapshot-$userId',
      userId: userId,
      entitlements: entitlements,
      generatedAt: now(),
    );
  }

  // ── internals ───────────────────────────────────────────────────────

  Entitlement _mapToEntitlement(StorePurchase purchase, {String? userId}) {
    // The full store-outcome → domain-state mapping (spec 001 FR-002,
    // FR-004, FR-006, FR-007): purchased/restored grant active; pending
    // parks as pending (never gates); expired and revoked land in their
    // honest states; cancelled/failed are failure outcomes — adapters
    // SHOULD raise typed errors instead, and a returned one parks as
    // pending, which never gates.
    const stateMapping = <PurchaseState, EntitlementState>{
      PurchaseState.purchased: EntitlementState.active,
      PurchaseState.restored: EntitlementState.active,
      PurchaseState.pending: EntitlementState.pending,
      PurchaseState.expired: EntitlementState.expired,
      PurchaseState.revoked: EntitlementState.revoked,
      PurchaseState.cancelled: EntitlementState.pending,
      PurchaseState.failed: EntitlementState.pending,
    };
    return Entitlement(
      id: 'ent-${purchase.transactionId}',
      userId: userId ?? purchase.transactionId,
      productId: purchase.productId,
      state: stateMapping[purchase.state] ?? EntitlementState.pending,
      grantedAt: purchase.purchasedAt,
      expiresAt: purchase.expiresAt,
    );
  }

  Entitlement _deriveState(
    Entitlement entitlement,
    int stamp,
    Duration gracePeriod,
  ) {
    // Revoked is preserved verbatim — clock math never re-activates or
    // expires a revoked entitlement (spec 001 FR-005/FR-006).
    if (entitlement.state == EntitlementState.revoked) return entitlement;
    final expiresAt = entitlement.expiresAt;
    if (expiresAt == null) return entitlement;
    if (stamp < expiresAt) {
      return entitlement.copyWith(state: EntitlementState.active);
    }
    if (stamp < expiresAt + gracePeriod.inMilliseconds) {
      return entitlement.copyWith(state: EntitlementState.gracePeriod);
    }
    return entitlement.copyWith(state: EntitlementState.expired);
  }
}

/// Registers the subscription stack onto [getIt].
void registerSubscriptionDependencies(
  GetIt getIt, {
  SubscriptionStorePort? store,
}) {
  getIt
    ..registerLazySingleton<SubscriptionStorePort>(
      () => store ?? InMemorySubscriptionStore(),
    )
    ..registerLazySingleton<SubscriptionService>(
      () => SubscriptionService(store: getIt<SubscriptionStorePort>()),
    );
}

/// Convenience for gate checks on a snapshot.
extension EntitlementSnapshotActive on EntitlementSnapshot {
  /// Product ids with an active (or grace) entitlement.
  Set<String> get activeProductIds => {
    for (final entitlement in entitlements)
      if (entitlement.state == EntitlementState.active ||
          entitlement.state == EntitlementState.gracePeriod)
        entitlement.productId,
  };
}
