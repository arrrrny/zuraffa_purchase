import 'purchase_status.dart';

/// The result of a purchase attempt, as reported by the store.
class PurchaseOutcome {
  /// The store's transaction identifier. Never empty — an adapter that cannot
  /// read the store's own id derives a stable per-transaction composite.
  final String transactionId;

  /// The store product id that was purchased.
  final String productId;

  /// The outcome of the attempt.
  final PurchaseStatus status;

  /// When the store says the purchase happened, in epoch milliseconds.
  final int purchasedAt;

  /// When the purchase expires, in epoch milliseconds. Null when the store
  /// does not report an expiry (one-off products, pending purchases).
  final int? expiresAt;

  /// Whether the transaction still has to be acknowledged on the store side.
  /// True until the app finishes it.
  final bool pendingFinish;

  /// The receipt / server verification payload, when the store supplies one.
  final String? receipt;

  const PurchaseOutcome({
    required this.transactionId,
    required this.productId,
    required this.status,
    required this.purchasedAt,
    this.expiresAt,
    this.pendingFinish = false,
    this.receipt,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseOutcome &&
          other.transactionId == transactionId &&
          other.productId == productId &&
          other.status == status &&
          other.purchasedAt == purchasedAt &&
          other.expiresAt == expiresAt &&
          other.pendingFinish == pendingFinish &&
          other.receipt == receipt;

  @override
  int get hashCode => Object.hash(
    transactionId,
    productId,
    status,
    purchasedAt,
    expiresAt,
    pendingFinish,
    receipt,
  );

  @override
  String toString() =>
      'PurchaseOutcome($transactionId, $productId, ${status.name})';
}
