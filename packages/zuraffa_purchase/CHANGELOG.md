# Changelog

## Unreleased

- The `PurchaseException` codes are now one condition each. `store_error` is
  the store answering with an error, while `store_unavailable` stays the
  store that cannot be reached at all; the two no longer share a code with
  opposite recoverability. `timeout` is the store that did not settle in
  time, `plan_change_unsupported` the store that cannot replace a
  subscription, and `plan_change_unknown` a subscription being replaced that
  the store client does not know. `PurchaseException.storeUnavailable` is now
  an alias of `storeError` — the name survives, the code did not.
- `StoreApi` grew a `dispose()` lifecycle hook, so a store that holds a
  subscription to the platform's stream can release it. The default
  implementation does nothing.
- `PurchaseSubscriptionStore` resolves the billing period per product:
  `billingPeriods` names the cycle length of a product id, and the fallback
  `billingPeriod` no longer decides the lifetime of every plan on its own.
- The purchase path makes two round trips to the store instead of three: the
  store reuses the product details the catalog query already resolved instead
  of asking the store for the product a second time. The port still asks the
  store whether it offers the product — the store reports a product it does
  not offer, and the domain contract depends on that answer.
- The port looks the store up when it is used, not when it is resolved, so
  registering the platform adapter after the port no longer pins the app to
  an unwired port for the lifetime of the process.
- `RecordingStoreApi` is a supported part of the public API, not an
  implementation detail: it is the scriptable store double an app uses to
  drive the store in its own tests.

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
