import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'macos_purchase_channel.dart';
import 'macos_purchase_exception.dart';
import 'macos_purchase_port.dart';

/// Registers the macOS adapter on [GetIt.instance]: the
/// [PurchasePort] over an injected channel. An injected [timeout] is
/// applied to the wired channel. Without a channel every call surfaces
/// the typed `channel_not_wired` failure.
void registerMacosPurchaseDependencies(
  GetIt getIt, {
  MacosPurchaseChannel? channel,
  Duration? timeout,
}) {
  final wired = (channel == null)
      ? MacosPurchaseChannel(
          invoke: (_, __) => throw const MacosPurchaseException(
            'channel_not_wired',
            'No macOS channel was injected — pass one to '
            'registerMacosPurchaseDependencies.',
            recoverable: false,
          ),
        )
      : (timeout == null)
          ? channel
          : MacosPurchaseChannel(
              invoke: channel.invoke,
              timeout: timeout,
            );
  getIt.registerLazySingleton<PurchasePort>(
    () => MacosPurchasePort(channel: wired),
  );
}
