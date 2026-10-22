import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'ios_purchase_store.dart';

/// Registers the iOS store on [getIt].
///
/// The store is registered eagerly, so the store's transaction stream is
/// live from the moment the app starts — a transaction the store replays on
/// launch is only delivered to a listener that was already subscribed.
///
/// Call this before `registerPurchaseDependencies`; the purchase port
/// resolves the store lazily, so either order works.
void registerIosPurchaseDependencies(
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
        createIosPurchaseStore(
          purchaseTimeout: purchaseTimeout,
          restoreQuietPeriod: restoreQuietPeriod,
          restoreTimeout: restoreTimeout,
          restoreAccountId: restoreAccountId,
        ),
  );
}
