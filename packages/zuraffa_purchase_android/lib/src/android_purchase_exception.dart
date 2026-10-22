/// The Android store's native error taxonomy.
///
/// The codes are the ones `in_app_purchase_android` reports. A code that is
/// not listed is treated as non-recoverable: an unknown failure is something
/// the app has to look at, not something to retry blindly.
class AndroidPurchaseException implements Exception {
  /// The native codes that are worth retrying.
  static const Set<String> recoverableCodes = {
    'restore_transactions_failed',
    'channel-error',
  };

  /// Whether [code] is worth retrying.
  static bool isRecoverable(String code) => recoverableCodes.contains(code);

  /// The native error code.
  final String code;

  /// The human-readable description.
  final String message;

  /// Whether the caller can sensibly retry.
  final bool recoverable;

  const AndroidPurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  /// Builds the typed failure for a native [code].
  factory AndroidPurchaseException.fromNative(String code, String message) =>
      AndroidPurchaseException(code, message, recoverable: isRecoverable(code));

  @override
  String toString() =>
      'AndroidPurchaseException($code, recoverable: $recoverable): $message';
}
