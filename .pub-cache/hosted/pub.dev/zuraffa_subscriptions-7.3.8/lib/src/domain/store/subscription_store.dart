import '../entities/enums/purchase_state.dart';
import '../entities/product/product.dart';

/// A purchase prepared/happening on the store.
class PurchaseRequest {
  /// The store product id being purchased.
  final String productId;

  /// Optional upgrade/downgrade context (Android replacement modes).
  final String? oldPurchaseId;

  /// App account id for fraud checks / receipt attribution.
  final String? appAccountUserId;

  const PurchaseRequest({
    required this.productId,
    this.oldPurchaseId,
    this.appAccountUserId,
  });
}

/// A store-side purchase result to map into the domain.
class StorePurchase {
  /// Store's unique transaction id.
  final String transactionId;

  /// The product purchased.
  final String productId;

  /// Purchase outcome state.
  final PurchaseState state;

  /// Epoch-ms purchase time.
  final int purchasedAt;

  /// Epoch-ms expiry for subscriptions (null for consumables).
  final int? expiresAt;

  /// Whether the transaction is already finished on the store side
  /// (StoreKit finish / Play acknowledge).
  final bool pendingFinish;

  /// Raw receipt/token for server validation.
  final String? receipt;

  const StorePurchase({
    required this.transactionId,
    required this.productId,
    required this.state,
    required this.purchasedAt,
    this.expiresAt,
    this.pendingFinish = false,
    this.receipt,
  });
}

/// Recoverable, typed subscription error.
class SubscriptionException implements Exception {
  /// Machine-readable reason, stable across releases.
  final String code;

  /// Human-readable description.
  final String message;

  const SubscriptionException(this.code, this.message);

  /// The user cancelled the purchase sheet.
  factory SubscriptionException.cancelled() => const SubscriptionException(
    'cancelled',
    'The purchase flow was cancelled by the user.',
  );

  /// The product is not available in this store/region.
  factory SubscriptionException.productUnavailable(String productId) =>
      SubscriptionException(
        'product_unavailable',
        'Product "$productId" is not available.',
      );

  /// The store is unreachable.
  factory SubscriptionException.storeUnavailable(String detail) =>
      SubscriptionException('store_unavailable', 'Store unavailable: $detail');

  /// The purchase is pending parental approval / payment retry.
  factory SubscriptionException.pending() => const SubscriptionException(
    'pending',
    'The purchase is pending and will complete later.',
  );

  @override
  String toString() => 'SubscriptionException($code): $message';
}

/// The store contract: products, purchasing, restoring, finishing.
abstract class SubscriptionStorePort {
  /// Loads the available products for [productIds]; unknown ids are
  /// simply absent from the result.
  Future<List<Product>> fetchProducts(List<String> productIds);

  /// Launches the purchase flow for [request]; resolves the store
  /// purchase (pending finishes must be completed via [finishPurchase]).
  Future<StorePurchase> purchase(PurchaseRequest request);

  /// Restores previous purchases for the current user.
  Future<List<StorePurchase>> restore();

  /// Finishes (acknowledges) a pending transaction so the store stops
  /// reminding; idempotent.
  Future<void> finishPurchase(String transactionId);
}
