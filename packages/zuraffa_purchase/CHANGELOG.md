# Changelog

## 0.1.0

- Initial release of the app-facing purchase domain: `PurchasePort`,
  `PurchaseService`, `CatalogProduct`, `PurchaseOutcome`, `PurchaseStatus`,
  `PurchaseIntent` and the typed `PurchaseException` taxonomy.
- `StoreApiPurchasePort` adapts the store seam (`StoreApi`) to the port, and
  `RecordingStoreApi` is the scriptable test double the package ships for
  apps that want to drive the store in tests.
- `PurchaseSubscriptionStore` implements the `SubscriptionStorePort` of
  `zuraffa_subscriptions`, so a consuming app hands a real store straight to
  `SubscriptionService` instead of writing its own adapter.
- `registerPurchaseDependencies` wires the port, the service and the
  subscription store as lazy singletons; the registration order does not
  matter, and an unwired store surfaces the typed `PurchaseNotWired` failure.
