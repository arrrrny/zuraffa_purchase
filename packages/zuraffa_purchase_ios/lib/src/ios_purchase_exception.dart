/// The typed native failure on iOS.
class IosPurchaseException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const IosPurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'IosPurchaseException($code, recoverable: $recoverable): $message';
}
