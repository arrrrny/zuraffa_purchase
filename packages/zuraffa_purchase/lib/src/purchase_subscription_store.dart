import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

import 'purchase_exception.dart';
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
    final products = await _translate(() => port.products(productIds));
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
    final outcome = await _translate(
      () => port.purchase(
        PurchaseIntent(
          productId: request.productId,
          appAccountId: request.appAccountUserId,
          oldPurchaseId: request.oldPurchaseId,
        ),
      ),
    );
    return _map(outcome);
  }

  @override
  Future<List<StorePurchase>> restore() async {
    final outcomes = await _translate(port.restore);
    return [for (final outcome in outcomes) _map(outcome)];
  }

  @override
  Future<void> finishPurchase(String transactionId) =>
      _translate(() => port.finish(transactionId));

  /// Runs [action] and restates a purchase-domain failure in the port's own
  /// vocabulary.
  ///
  /// The port contract speaks [SubscriptionException]; the purchase domain
  /// speaks [PurchaseException]. The two meet here, at the adapter boundary,
  /// so a consumer that catches the port's exception type catches the
  /// failure too. Any other error is a bug somewhere else and propagates
  /// unchanged.
  Future<T> _translate<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on PurchaseException catch (error) {
      throw SubscriptionException(_code(error.code), error.message);
    }
  }

  /// The port's code for a purchase-domain [code].
  ///
  /// The known codes travel verbatim — a consumer that branches on
  /// `cancelled` keeps working. An unrecognised code is an unavailable
  /// store: an unknown failure is never a success.
  String _code(String code) =>
      _knownCodes.contains(code) ? code : 'store_unavailable';

  /// The purchase-domain codes the port's vocabulary carries verbatim.
  static const _knownCodes = <String>{
    'cancelled',
    'product_unavailable',
    'store_unavailable',
    'pending',
  };

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
