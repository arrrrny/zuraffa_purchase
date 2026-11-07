import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

/// Spec `001-entitlements` — purchase→entitlement mapping, restore,
/// state derivation (active/grace/expired), snapshots, store errors.
void main() {
  Product product(String id) => Product(
    id: id,
    storeId: id,
    title: 'Pro $id',
    description: 'desc',
    priceMicros: 4990000,
    currency: 'USD',
    period: 'P1M',
  );

  InMemorySubscriptionStore storeWithCatalog() => InMemorySubscriptionStore(
    products: [product('pro.monthly'), product('boost.one')],
  );

  group('products', () {
    test('fetches the catalog; unknown ids are absent', () async {
      final subs = SubscriptionService(store: storeWithCatalog());

      final products = await subs.products(['pro.monthly', 'nope']);
      expect(products.map((p) => p.storeId), ['pro.monthly']);
    });
  });

  group('purchase → entitlement', () {
    test('a purchased transaction grants an active entitlement', () async {
      final store = storeWithCatalog();
      final subs = SubscriptionService(store: store);
      const userId = 'u-1';

      final purchase = await subs.purchase(
        PurchaseRequest(productId: 'pro.monthly', appAccountUserId: userId),
      );

      expect(purchase.state, PurchaseState.purchased);
      // The purchase is attributed to the request's app account
      // (spec 001-subscription-port FR-002).
      final entitlements = await subs.entitlementsFor(userId);
      expect(entitlements, hasLength(1));
      expect(entitlements.first.state, EntitlementState.active);
      expect(entitlements.first.productId, 'pro.monthly');
    });

    test('finishPurchase acknowledges exactly once', () async {
      final store = storeWithCatalog();
      final subs = SubscriptionService(store: store);
      final purchase = await subs.purchase(
        PurchaseRequest(productId: 'pro.monthly'),
      );

      await subs.finishPurchase(purchase);
      await subs.finishPurchase(purchase);
      expect(store.finished, [
        purchase.transactionId,
      ], reason: 'finishing is idempotent');
    });

    test('an unavailable product is a typed error', () async {
      final subs = SubscriptionService(store: storeWithCatalog());

      await expectLater(
        subs.purchase(PurchaseRequest(productId: 'ghost.product')),
        throwsA(
          isA<SubscriptionException>().having(
            (e) => e.code,
            'code',
            'product_unavailable',
          ),
        ),
      );
    });

    test('a user cancellation is a typed error with no entitlement', () async {
      final store = storeWithCatalog()
        ..setNextError(SubscriptionException.cancelled());
      final subs = SubscriptionService(store: store);

      await expectLater(
        subs.purchase(PurchaseRequest(productId: 'pro.monthly')),
        throwsA(
          isA<SubscriptionException>().having(
            (e) => e.code,
            'code',
            'cancelled',
          ),
        ),
      );
      expect(await subs.entitlementsFor('anyone'), isEmpty);
    });
  });

  group('restore', () {
    test('restores prior purchases into entitlements for the user', () async {
      final store = storeWithCatalog()
        ..addOwned(
          const StorePurchase(
            transactionId: 'txn-old',
            productId: 'pro.monthly',
            state: PurchaseState.restored,
            purchasedAt: 1000,
            expiresAt: 9_000_000_000_000,
          ),
        );
      final subs = SubscriptionService(store: store, now: () => 1_000);

      final restored = await subs.restoreFor('u-restore');

      expect(restored, hasLength(1));
      final entitlements = await subs.entitlementsFor('u-restore');
      expect(entitlements.first.productId, 'pro.monthly');
      expect(entitlements.first.state, EntitlementState.active);
    });
  });

  group('state derivation against the clock', () {
    test('before expiry: active', () async {
      final store = storeWithCatalog();
      final subs = SubscriptionService(store: store, now: () => 5_000);

      // Seed directly through a purchase with the scripted outcome.
      store.setNextPurchase(
        const StorePurchase(
          transactionId: 'txn-1',
          productId: 'pro.monthly',
          state: PurchaseState.purchased,
          purchasedAt: 0,
          expiresAt: 10_000,
        ),
      );
      await subs.purchase(PurchaseRequest(productId: 'pro.monthly'));

      final entitlements = await subs.entitlementsFor('txn-1');
      expect(entitlements.first.state, EntitlementState.active);
    });

    test('after expiry but within grace: gracePeriod', () async {
      final store = storeWithCatalog();
      final subs = SubscriptionService(store: store, now: () => 12_000);

      store.setNextPurchase(
        const StorePurchase(
          transactionId: 'txn-2',
          productId: 'pro.monthly',
          state: PurchaseState.purchased,
          purchasedAt: 0,
          expiresAt: 10_000,
        ),
      );
      await subs.purchase(PurchaseRequest(productId: 'pro.monthly'));

      // 2s past expiry < default 3-day grace.
      final entitlements = await subs.entitlementsFor('txn-2');
      expect(entitlements.first.state, EntitlementState.gracePeriod);
    });

    test('past the grace window: expired', () async {
      final store = storeWithCatalog();
      final subs = SubscriptionService(store: store, now: () => 10_000_000);

      store.setNextPurchase(
        const StorePurchase(
          transactionId: 'txn-3',
          productId: 'pro.monthly',
          state: PurchaseState.purchased,
          purchasedAt: 0,
          expiresAt: 10_000,
        ),
      );
      await subs.purchase(PurchaseRequest(productId: 'pro.monthly'));

      // The default 3-day grace swallows a 10s-late check; a zero grace
      // derives expired immediately past expiry.
      final entitlements = await subs.entitlementsFor(
        'txn-3',
        gracePeriod: Duration.zero,
      );
      expect(entitlements.first.state, EntitlementState.expired);
    });
  });

  group('gate checks + snapshot', () {
    test('hasEntitlement follows state derivation', () async {
      final store = storeWithCatalog();
      // Far-future expiry keeps the entitlement active at test time.
      final subs = SubscriptionService(store: store, now: () => 1_000);

      store.setNextPurchase(
        const StorePurchase(
          transactionId: 'txn-gate',
          productId: 'pro.monthly',
          state: PurchaseState.purchased,
          purchasedAt: 0,
          expiresAt: 9_000_000_000_000,
        ),
      );
      await subs.purchase(
        PurchaseRequest(productId: 'pro.monthly', appAccountUserId: 'u-gate'),
      );

      expect(await subs.hasEntitlement('u-gate', 'pro.monthly'), isTrue);
      expect(await subs.hasEntitlement('u-gate', 'boost.one'), isFalse);
      expect(await subs.hasEntitlement('nobody', 'pro.monthly'), isFalse);
    });

    test(
      'snapshotFor carries the derived entitlements and the clock',
      () async {
        final store = storeWithCatalog();
        final subs = SubscriptionService(store: store, now: () => 1_000);

        store.setNextPurchase(
          const StorePurchase(
            transactionId: 'txn-snap',
            productId: 'pro.monthly',
            state: PurchaseState.purchased,
            purchasedAt: 0,
            expiresAt: 9_000_000_000_000,
          ),
        );
        await subs.purchase(PurchaseRequest(productId: 'pro.monthly'));

        final snapshot = await subs.snapshotFor('txn-snap');
        expect(snapshot.userId, 'txn-snap');
        expect(snapshot.generatedAt, 1_000);
        expect(snapshot.entitlements, hasLength(1));
        expect(snapshot.activeProductIds, {'pro.monthly'});
      },
    );
  });

  group('registerSubscriptionDependencies', () {
    test('wires store + service with injection honored', () async {
      final getIt = GetIt.asNewInstance();
      final custom = storeWithCatalog();
      registerSubscriptionDependencies(getIt, store: custom);

      final service = getIt<SubscriptionService>();
      expect(
        (await service.products(['pro.monthly'])),
        hasLength(1),
        reason: 'the injected store backs the service',
      );
    });
  });
}
