import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

import 'ios_purchase_exception.dart';

/// The iOS channel: the shared
/// [PlatformPurchaseEnvelope] machinery with the iOS
/// taxonomy as a pure data set.
class IosPurchaseChannel {
  /// Native codes that map recoverable; everything else (including
  /// unknown codes) is non-recoverable, preserved verbatim.
  static const Set<String> recoverableCodes = {
    'user_cancelled',
    'api_unavailable',
    'not_supported',
    'timeout',
  };

  final ChannelInvoke invoke;
  final Duration timeout;

  const IosPurchaseChannel({
    required this.invoke,
    this.timeout = const Duration(seconds: 30),
  });

  Future<Map<String, Object?>?> call(
    String method,
    Map<String, Object?> args,
  ) =>
      PlatformPurchaseEnvelope(
        invoke: invoke,
        timeout: timeout,
        onTyped: IosPurchaseException.new,
        mapNativeError: _mapNativeError,
        isTypedError: (error) => error is IosPurchaseException,
      ).call(method, args);

  static Exception _mapNativeError(String code, String message) =>
      IosPurchaseException(
        code,
        message,
        recoverable: recoverableCodes.contains(code),
      );
}
