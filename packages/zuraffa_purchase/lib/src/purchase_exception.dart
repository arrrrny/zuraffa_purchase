/// The typed failure surfaced by the zuraffa_purchase port and service.
class PurchaseException implements Exception {
  final String code;
  final String message;
  final bool recoverable;

  const PurchaseException(
    this.code,
    this.message, {
    required this.recoverable,
  });

  @override
  String toString() =>
      'PurchaseException($code, recoverable: $recoverable): $message';
}
