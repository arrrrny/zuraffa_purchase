/// The typed failure raised by the purchase port and service.
///
/// A raised failure grants nothing: the caller never receives a purchase
/// alongside it.
class PurchaseException implements Exception {
  /// The machine-readable reason, stable across releases.
  final String code;

  /// The human-readable description.
  final String message;

  /// Whether the caller can sensibly retry.
  final bool recoverable;

  const PurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  /// The user dismissed the purchase sheet.
  factory PurchaseException.cancelled() => const PurchaseException(
    'cancelled',
    'The purchase was cancelled by the user.',
    recoverable: true,
  );

  /// The store does not offer [productId].
  factory PurchaseException.productUnavailable(String productId) =>
      PurchaseException(
        'product_unavailable',
        'Product "$productId" is not available.',
        recoverable: false,
      );

  /// The store could not be reached, or answered with an error.
  ///
  /// Recoverable by default — the same request may succeed on a later
  /// attempt. Pass `recoverable: false` when the failure is permanent.
  factory PurchaseException.storeUnavailable(
    String detail, {
    bool recoverable = true,
  }) => PurchaseException(
    'store_unavailable',
    'Store unavailable: $detail',
    recoverable: recoverable,
  );

  /// The store reported itself unavailable.
  ///
  /// Not recoverable: the store cannot be reached at all, so retrying the
  /// same request changes nothing.
  factory PurchaseException.storeNotAvailable() => const PurchaseException(
    'store_unavailable',
    'The store is not available.',
    recoverable: false,
  );

  /// The purchase is deferred — parental approval, or a payment retry.
  factory PurchaseException.pending() => const PurchaseException(
    'pending',
    'The purchase is pending and will complete later.',
    recoverable: true,
  );

  @override
  String toString() =>
      'PurchaseException($code, recoverable: $recoverable): $message';
}
