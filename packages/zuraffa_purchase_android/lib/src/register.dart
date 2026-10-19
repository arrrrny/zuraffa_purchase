import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'android_purchase_channel.dart';
import 'android_purchase_exception.dart';
import 'android_purchase_port.dart';

/// Registers the Android adapter on [GetIt.instance]: the
/// [PurchasePort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerAndroidPurchaseDependencies(
  GetIt getIt, {
  AndroidPurchaseChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? AndroidPurchaseChannel(
          invoke: (_, __) => throw const AndroidPurchaseException(
            'channel_not_wired',
            'No Android channel was injected — pass one to '
            'registerAndroidPurchaseDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : AndroidPurchaseChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<PurchasePort>(
    () => AndroidPurchasePort(channel: wired),
  );
}
