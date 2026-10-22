# Changelog

## 0.1.1

### Added

- `ScriptedPurchasePort` — the scriptable double for the purchase port seam,
  the twin of `RecordingStoreApi` on the store seam. A consumer can now drive
  the purchase domain, including its failure paths, without a device and
  without a platform adapter.

### Notes

- `PurchaseSubscriptionStore` now speaks the port's own error vocabulary: a
  `PurchaseException` raised by the purchase port leaves the adapter as a
  `SubscriptionException` carrying the same machine code and message. A
  consumer that catches `on SubscriptionException` — as
  `zuraffa_subscriptions` documents the port — now catches the failure too.
  Any other error propagates unchanged, and an unrecognised purchase-domain
  code surfaces as `store_unavailable`.

## 0.1.0

### Added

- The federated `zuraffa_purchase` family: the app-facing package, the shared
  `zuraffa_purchase_platform` store core, and the Android, iOS and macOS
  adapters.
- The purchase domain: `PurchasePort`, `PurchaseService`, `PurchaseIntent`,
  `CatalogProduct`, `PurchaseOutcome`, `PurchaseStatus` and the typed
  `PurchaseException` taxonomy.
- The store seam: `StoreApi`, `StoreApiPurchasePort` and `RecordingStoreApi`,
  the scriptable double the package ships for apps that drive the store in
  tests.
- `PurchaseSubscriptionStore` implements the `SubscriptionStorePort` of
  `zuraffa_subscriptions`, so a consuming app hands a real store straight to
  `SubscriptionService` instead of writing its own adapter.
- `registerPurchaseDependencies` wires the port, the service and the
  subscription store as lazy singletons. Registration order does not matter,
  and an unwired store surfaces the typed `PurchaseNotWired` failure.
- The `in_app_purchase`-backed adapters for Android (Play Billing), iOS
  (StoreKit) and macOS (StoreKit), each with its own exception classifier for
  the native failure codes.

### Notes

- The adapters pin `in_app_purchase_storekit: ^0.4.15`, past 0.4.13, so a
  consuming app's iOS and macOS builds carry none of the StoreKit 1
  deprecation warnings.
- A purchase resolves on the terminal transaction for the requested product, a
  restore settles after a quiet window, and a purchase that never settles
  fails with a typed, named timeout instead of hanging.
