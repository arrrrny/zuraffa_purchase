/// The typed native failure on macOS.
class MacosPurchaseException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const MacosPurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'MacosPurchaseException($code, recoverable: $recoverable): $message';
}
