## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

## 7.3.0 - 2026-10-28

- Mono-version fleet alignment: the whole zuraffa family ships at 7.3.0 together with the core.
- `zuraffa` dependency constraints unified to ^7.3.0; cross-family constraints move with the release.
- Fleet-wide `dependency_overrides: xml: 7.1.0`; README install guides refreshed to 7.3.0.

## 7.2.0 - 2026-10-28

- Mono-version fleet alignment: the whole zuraffa family now ships at the same version as the core.
- `zuraffa` dependency constraint unified to ^7.2.0 across the fleet.
- zuraffa_storage now wraps the maintained `zuraffa_minio` fork instead of the abandoned `minio` package (xml 7 compatible).
- Fleet-wide `dependency_overrides: xml: 7.1.0` policy; README install guides refreshed to the release version.

# Changelog

## Unreleased

### Fixed

- A purchase now resolves on the terminal transaction of *its own* request.
  The store accepts the request first, the wait starts from the sequence the
  store had reached by then, and a restored or a deferred transaction does
  not settle it — so a purchase never resolves on a transaction the store
  replayed from an earlier session.
- A purchase that asks to replace a subscription is either replaced by the
  store or refused with `plan_change_unsupported` or `plan_change_unknown`.
  It is never bought as a second purchase, which would leave the user with
  both entitlements and charge them twice.
- A purchase that never settles fails with the typed `timeout` failure
  instead of an unreachable-store failure: the sheet was opened and the store
  never answered, which is a different condition with a different retry
  decision.
- The `PurchaseException` codes are one condition each. `store_error` is the
  store answering with an error, `store_unavailable` is the store that
  cannot be reached at all, and the two no longer share a code with opposite
  recoverability.
- Finishing a purchase is idempotent: a transaction the store does not know,
  a deferred one and one the store no longer waits for are no-ops, and a
  transaction is never finished twice.
- The billing period of a product is read from the store itself — `P1M` for a
  monthly plan, `P1Y` for a yearly one — so the expiry of a purchase is the
  purchase date plus the real period instead of a fixed month.
- The purchase path makes two round trips to the store instead of three: the
  store reuses the product details the catalog query already resolved.
- The store looks the port up when it is used, not when it is resolved, so
  registering the platform adapter after the port no longer pins the app to
  an unwired port for the lifetime of the process.
- `StoreApi` grew a `dispose()` lifecycle hook, so a store that holds a
  subscription to the platform's stream can release it.

### Changed

- The shared core no longer depends on `in_app_purchase_storekit`. The
  store-specific knowledge — the billing period of a product, the
  plan-change purchase parameter, the native error taxonomy — reaches it
  through three seams the platform adapter supplies, so an Android consumer
  does not pull a StoreKit implementation it can never use.
- `IosPurchaseException`, `MacosPurchaseException` and
  `AndroidPurchaseException` are now `PurchaseException`s — the typed failure
  the domain speaks — instead of separate types.

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
