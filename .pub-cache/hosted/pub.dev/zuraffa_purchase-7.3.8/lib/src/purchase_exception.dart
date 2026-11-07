/// The typed failure raised by the purchase port and service.
///
/// A raised failure grants nothing: the caller never receives a purchase
/// alongside it.
///
/// Every condition carries its own [code]: a caller that branches on the code
/// can always tell the conditions apart. The codes are:
///
/// | Code | Meaning | Recoverable |
/// |---|---|---|
/// | `cancelled` | the user dismissed the purchase sheet | yes |
/// | `product_unavailable` | the store does not offer the product | no |
/// | `store_unavailable` | the store cannot be reached at all | no |
/// | `store_error` | the store answered with an error | yes |
/// | `timeout` | the store did not settle in time | yes |
/// | `pending` | the purchase is deferred | yes |
/// | `plan_change_unsupported` | the store cannot replace a subscription | no |
/// | `plan_change_unknown` | the subscription being replaced is unknown | yes |
class PurchaseException implements Exception {
  /// The machine-readable reason, stable across releases.
  ///
  /// A platform adapter may raise a subclass of this type whose code is the
  /// store's own native code — see the `*PurchaseException` classes of the
  /// platform adapter packages.
  final String code;

  /// The human-readable description.
  final String message;

  /// Whether the caller can sensibly retry.
  final bool recoverable;

  const PurchaseException(this.code, this.message, {required this.recoverable});

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

  /// The store cannot be reached at all.
  ///
  /// Not recoverable: the store is not there, so retrying the same request
  /// changes nothing. A store that *answers* with an error is a different
  /// condition — see [PurchaseException.storeError].
  factory PurchaseException.storeNotAvailable() => const PurchaseException(
    'store_unavailable',
    'The store is not available.',
    recoverable: false,
  );

  /// The store answered with an error.
  ///
  /// Recoverable by default — the same request may succeed on a later
  /// attempt. Pass `recoverable: false` when the failure is permanent.
  factory PurchaseException.storeError(
    String detail, {
    bool recoverable = true,
  }) => PurchaseException(
    'store_error',
    'Store error: $detail',
    recoverable: recoverable,
  );

  /// The former name of [PurchaseException.storeError].
  ///
  /// It carries the same `store_error` code — the name survived, the code
  /// did not: `store_unavailable` is the store that cannot be reached, and
  /// nothing else.
  factory PurchaseException.storeUnavailable(
    String detail, {
    bool recoverable = true,
  }) => PurchaseException.storeError(detail, recoverable: recoverable);

  /// The store did not settle the purchase in time.
  ///
  /// A timeout is not the same as an unreachable store: the sheet was opened
  /// and the store never answered, so the caller may show a different message
  /// and make a different retry decision.
  factory PurchaseException.timeout(String detail) => PurchaseException(
    'timeout',
    'The store did not settle in time: $detail',
    recoverable: true,
  );

  /// The purchase is deferred — parental approval, or a payment retry.
  factory PurchaseException.pending() => const PurchaseException(
    'pending',
    'The purchase is pending and will complete later.',
    recoverable: true,
  );

  /// The store cannot replace an existing subscription.
  ///
  /// Raised instead of buying the target plan as a *new* purchase: a second
  /// purchase leaves the user with both entitlements and charges them twice.
  factory PurchaseException.planChangeUnsupported(String detail) =>
      PurchaseException(
        'plan_change_unsupported',
        'The store cannot replace the existing subscription: $detail',
        recoverable: false,
      );

  /// The subscription being replaced is not known to the store client.
  ///
  /// The store has to report the old transaction before it can be replaced —
  /// usually through the replay of the unfinished purchases at launch.
  factory PurchaseException.planChangeUnknown(String detail) =>
      PurchaseException(
        'plan_change_unknown',
        'The subscription being replaced is unknown: $detail',
        recoverable: true,
      );

  @override
  String toString() =>
      'PurchaseException($code, recoverable: $recoverable): $message';
}
