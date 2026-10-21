import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'macos_purchase_store.dart';

/// Registers the macOS store on [getIt].
///
/// The store is registered eagerly, so the store's transaction stream is
/// live from the moment the app starts — a transaction the store replays on
/// launch is only delivered to a listener that was already subscribed.
///
/// Call this before `registerPurchaseDependencies`; the purchase port
/// resolves the store lazily, so either order works.
void registerMacosPurchaseDependencies(
  GetIt getIt, {
  StoreApi? store,
  Duration purchaseTimeout = const Duration(minutes: 2),
  Duration restoreQuietPeriod = const Duration(seconds: 2),
  Duration restoreTimeout = const Duration(minutes: 1),
  String? restoreAccountId,
}) {
  if (getIt.isRegistered<StoreApi>()) return;
  getIt.registerSingleton<StoreApi>(
    store ??
        createMacosPurchaseStore(
          purchaseTimeout: purchaseTimeout,
          restoreQuietPeriod: restoreQuietPeriod,
          restoreTimeout: restoreTimeout,
          restoreAccountId: restoreAccountId,
        ),
  );
}
