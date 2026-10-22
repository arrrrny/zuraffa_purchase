import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

import 'purchase_intent.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';
import 'purchase_status.dart';

/// The subscription store adapter: a [SubscriptionStorePort] over the
/// purchase port.
///
/// This is the piece that lets `zuraffa_subscriptions` use a real store
/// without knowing anything about StoreKit or Play Billing:
///
/// ```dart
/// final subs = SubscriptionService(
///   store: PurchaseSubscriptionStore(port: getIt<PurchasePort>()),
/// );
/// ```
///
/// It maps the purchase domain onto the subscription domain: products become
/// subscription products, and outcomes become store purchases with the expiry
/// derived from the configured billing period.
class PurchaseSubscriptionStore implements SubscriptionStorePort {
  /// The purchase port the store transactions come from.
  final PurchasePort port;

  /// The billing-cycle length used to derive the expiry of a purchase the
  /// store does not date itself. One monthly cycle by default.
  final Duration billingPeriod;

  /// The injectable clock (epoch ms) — the fallback timestamp when the store
  /// reports no purchase date.
  final int Function()? now;

  const PurchaseSubscriptionStore({
    required this.port,
    this.billingPeriod = const Duration(days: 31),
    this.now,
  });

  @override
  Future<List<Product>> fetchProducts(List<String> productIds) async {
    final products = await port.products(productIds);
    return [
      for (final product in products)
        Product(
          id: product.id,
          storeId: product.id,
          title: product.title,
          description: product.description,
          priceMicros: product.priceMicros,
          currency: product.currency,
          period: product.period ?? 'P1M',
        ),
    ];
  }

  @override
  Future<StorePurchase> purchase(PurchaseRequest request) async {
    final outcome = await port.purchase(
      PurchaseIntent(
        productId: request.productId,
        appAccountId: request.appAccountUserId,
        oldPurchaseId: request.oldPurchaseId,
      ),
    );
    return _map(outcome);
  }

  @override
  Future<List<StorePurchase>> restore() async {
    final outcomes = await port.restore();
    return [for (final outcome in outcomes) _map(outcome)];
  }

  @override
  Future<void> finishPurchase(String transactionId) =>
      port.finish(transactionId);

  StorePurchase _map(PurchaseOutcome outcome) {
    final pending = outcome.status == PurchaseStatus.pending;
    return StorePurchase(
      transactionId: outcome.transactionId,
      productId: outcome.productId,
      state: _mapState(outcome.status),
      purchasedAt: outcome.purchasedAt,
      // A pending purchase has no expiry: it has not happened yet.
      expiresAt: pending
          ? null
          : outcome.expiresAt ??
                outcome.purchasedAt + billingPeriod.inMilliseconds,
      pendingFinish: outcome.pendingFinish,
      receipt: outcome.receipt,
    );
  }

  PurchaseState _mapState(PurchaseStatus status) => switch (status) {
    PurchaseStatus.purchased => PurchaseState.purchased,
    PurchaseStatus.restored => PurchaseState.restored,
    PurchaseStatus.pending => PurchaseState.pending,
    PurchaseStatus.cancelled => PurchaseState.cancelled,
    PurchaseStatus.failed => PurchaseState.failed,
  };
}
