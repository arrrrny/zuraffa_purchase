import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'ios_purchase_channel.dart';
import 'ios_purchase_exception.dart';
import 'ios_purchase_port.dart';

/// Registers the iOS adapter on [GetIt.instance]: the
/// [PurchasePort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerIosPurchaseDependencies(
  GetIt getIt, {
  IosPurchaseChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? IosPurchaseChannel(
          invoke: (_, __) => throw const IosPurchaseException(
            'channel_not_wired',
            'No iOS channel was injected — pass one to '
            'registerIosPurchaseDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : IosPurchaseChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<PurchasePort>(
    () => IosPurchasePort(channel: wired),
  );
}
