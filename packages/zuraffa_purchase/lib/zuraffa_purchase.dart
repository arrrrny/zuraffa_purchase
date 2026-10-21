/// zuraffa_purchase — the in-app purchase wrapper for the Zuraffa ecosystem.
///
/// The package has two layers:
///
/// * the app-facing domain — a platform-neutral [PurchasePort], a
///   [PurchaseService] facade over it, typed failures ([PurchaseException])
///   and the entities the domain speaks in ([CatalogProduct],
///   [PurchaseOutcome], [PurchaseStatus], [PurchaseIntent]);
/// * the store seam — the [StoreApi] contract the platform adapters
///   implement, and the [StoreApiPurchasePort] that maps the store's dialect
///   onto the domain.
///
/// On top of that, [PurchaseSubscriptionStore] adapts the purchase port to
/// `zuraffa_subscriptions`' `SubscriptionStorePort`, so a consuming app can
/// hand a real store straight to `SubscriptionService`:
///
/// ```dart
/// registerMacosPurchaseDependencies(getIt);
/// registerPurchaseDependencies(getIt);
///
/// final subs = SubscriptionService(
///   store: getIt<PurchaseSubscriptionStore>(),
/// );
/// ```
library;

export 'src/catalog_product.dart';
export 'src/di.dart';
export 'src/purchase_exception.dart';
export 'src/purchase_intent.dart';
export 'src/purchase_outcome.dart';
export 'src/purchase_port.dart';
export 'src/purchase_service.dart';
export 'src/purchase_status.dart';
export 'src/purchase_subscription_store.dart';
export 'src/recording_store_api.dart';
export 'src/store_api.dart';
export 'src/store_api_purchase_port.dart';
