import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// The Android store's native error taxonomy.
///
/// The codes are the ones `in_app_purchase_android` reports. A code that is
/// not listed is treated as non-recoverable: an unknown failure is something
/// the app has to look at, not something to retry blindly.
///
/// This is the failure the Android store raises: it is a [PurchaseException],
/// so the domain contract holds, and its [code] is the store's own native
/// code — the app can branch on it and tell a Play Billing failure from a
/// generic store error.
class AndroidPurchaseException extends PurchaseException {
  /// The native codes that are worth retrying.
  static const Set<String> recoverableCodes = {
    'restore_transactions_failed',
    'channel-error',
  };

  /// Whether [code] is worth retrying.
  static bool isRecoverable(String code) => recoverableCodes.contains(code);

  const AndroidPurchaseException(
    super.code,
    super.message, {
    required super.recoverable,
  });

  /// Builds the typed failure for a native [code].
  factory AndroidPurchaseException.fromNative(String code, String message) =>
      AndroidPurchaseException(code, message, recoverable: isRecoverable(code));

  /// Maps a native store error onto this taxonomy.
  static PurchaseException fromError(IAPError error) =>
      AndroidPurchaseException.fromNative(error.code, error.message);
}
