import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// The macOS store's native error taxonomy.
///
/// The codes are the ones `in_app_purchase_storekit` reports. A code that is
/// not listed is treated as non-recoverable: an unknown failure is something
/// the app has to look at, not something to retry blindly.
///
/// This is the failure the macOS store raises: it is a [PurchaseException],
/// so the domain contract holds, and its [code] is the store's own native
/// code — the app can branch on it and tell a StoreKit failure from a
/// generic store error.
class MacosPurchaseException extends PurchaseException {
  /// The native codes that are worth retrying.
  static const Set<String> recoverableCodes = {
    'storekit_no_response',
    'channel-error',
  };

  /// Whether [code] is worth retrying.
  static bool isRecoverable(String code) => recoverableCodes.contains(code);

  const MacosPurchaseException(
    super.code,
    super.message, {
    required super.recoverable,
  });

  /// Builds the typed failure for a native [code].
  factory MacosPurchaseException.fromNative(String code, String message) =>
      MacosPurchaseException(code, message, recoverable: isRecoverable(code));

  /// Maps a native store error onto this taxonomy.
  static PurchaseException fromError(IAPError error) =>
      MacosPurchaseException.fromNative(error.code, error.message);
}
