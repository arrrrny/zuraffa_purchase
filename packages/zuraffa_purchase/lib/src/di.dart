import 'package:zuraffa/zuraffa.dart';

import 'catalog_product.dart';
import 'purchase_intent.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';
import 'purchase_service.dart';
import 'purchase_subscription_store.dart';
import 'store_api.dart';
import 'store_api_purchase_port.dart';

/// The port used when no platform adapter has been registered.
///
/// Every call fails with the typed [PurchaseNotWired] error instead of
/// hanging — a mis-registered adapter surfaces at the first purchase, not
/// as a silent no-op.
class UnwiredPurchasePort implements PurchasePort {
  const UnwiredPurchasePort();

  Never _fail() => throw const PurchaseNotWired();

  @override
  Future<List<CatalogProduct>> products(List<String> productIds) async =>
      _fail();

  @override
  Future<PurchaseOutcome> purchase(PurchaseIntent intent) async => _fail();

  @override
  Future<List<PurchaseOutcome>> restore() async => _fail();

  @override
  Future<void> finish(String transactionId) async => _fail();
}

/// The typed failure raised while no platform adapter is registered.
class PurchaseNotWired implements Exception {
  const PurchaseNotWired();

  @override
  String toString() =>
      'PurchaseNotWired: no store was registered — call the platform '
      "adapter's register*PurchaseDependencies before using the port.";
}

/// Registers the purchase family on [getIt].
///
/// The platform adapter registers its [StoreApi] first; this wires the
/// purchase port over it, then the service and the subscription store over
/// the port.
///
/// The port is resolved lazily, so the order the caller registers in does
/// not matter — whichever [StoreApi] is on [getIt] when the port is first
/// resolved is the one it speaks to.
///
/// [port] and [store] let a caller inject its own implementations — in tests,
/// or when an app drives the store itself.
void registerPurchaseDependencies(
  GetIt getIt, {
  PurchasePort? port,
  StoreApi? store,
}) {
  if (store != null && !getIt.isRegistered<StoreApi>()) {
    getIt.registerSingleton<StoreApi>(store);
  }
  if (port != null && !getIt.isRegistered<PurchasePort>()) {
    getIt.registerSingleton<PurchasePort>(port);
  }
  if (!getIt.isRegistered<PurchasePort>()) {
    getIt.registerLazySingleton<PurchasePort>(
      () => getIt.isRegistered<StoreApi>()
          ? StoreApiPurchasePort(store: getIt<StoreApi>())
          : const UnwiredPurchasePort(),
    );
  }
  if (!getIt.isRegistered<PurchaseService>()) {
    getIt.registerLazySingleton<PurchaseService>(
      () => PurchaseService(port: getIt<PurchasePort>()),
    );
  }
  if (!getIt.isRegistered<PurchaseSubscriptionStore>()) {
    getIt.registerLazySingleton<PurchaseSubscriptionStore>(
      () => PurchaseSubscriptionStore(port: getIt<PurchasePort>()),
    );
  }
}
