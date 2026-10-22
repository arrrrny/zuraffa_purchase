# Changelog

## 0.1.1

- `PurchaseSubscriptionStore` now speaks the port's own error vocabulary: a
  `PurchaseException` raised by the purchase port leaves the adapter as a
  `SubscriptionException` carrying the same machine code and message. A
  consumer that catches `on SubscriptionException` — as `zuraffa_subscriptions`
  documents the port — now catches the failure too. Any other error
  propagates unchanged, and an unrecognised purchase-domain code surfaces as
  `store_unavailable`.
- `ScriptedPurchasePort` — the scriptable double for the purchase port seam,
  the twin of `RecordingStoreApi` on the store seam. A consumer can now drive
  the purchase domain, including its failure paths, without a device and
  without a platform adapter.

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
