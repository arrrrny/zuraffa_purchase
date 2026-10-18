/// The typed native failure on Android.
class AndroidPurchaseException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const AndroidPurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'AndroidPurchaseException($code, recoverable: $recoverable): $message';
}
