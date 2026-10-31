# Changelog

## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

## Unreleased

- The store-specific knowledge the shared core cannot hold itself moved into
  three seams the platform adapter supplies: `StorePeriodResolver` reads the
  billing period of a product, `StorePurchaseParamBuilder` builds the
  purchase parameter — including the plan change — and `StoreErrorFactory`
  maps a native store error onto the domain's typed failure. The core no
  longer depends on `in_app_purchase_storekit`, so an Android consumer does
  not pull a StoreKit implementation it can never use.
- A purchase that replaces a subscription is either replaced by the store or
  refused. It is never bought as a second purchase: the store that cannot
  replace a subscription raises `plan_change_unsupported`, and a subscription
  the store client does not know raises `plan_change_unknown`.
- A purchase waits for the terminal transaction of *its own* request. The
  store accepts the request first, the wait starts from the sequence the
  store had reached by then, and a restored or a deferred transaction does not
  settle it — so a purchase never resolves on a transaction the store
  replayed from an earlier session.
- A purchase that never settles fails with the typed `timeout` failure
  instead of an unreachable-store failure: the sheet was opened and the store
  never answered, which is a different condition with a different retry
  decision.
- Finishing a purchase is idempotent. A transaction the store does not know,
  a deferred one and one the store no longer waits for are no-ops, and a
  transaction is never finished twice.
- `StoreApi.dispose()` releases the store's subscription to the platform's
  stream, and the event queue's diagnostic buffer is bounded, so a
  long-lived app does not keep every transaction it ever saw.
- The `InAppPurchaseStoreClient` reuses the product details the catalog
  query already resolved, so buying a product the app just listed does not
  query the store for it a second time.
- `InAppPurchaseStoreClient` gained a test suite of its own: the price and
  currency mapping, the derived transaction id, the error classification, the
  idempotent finishing, the yearly expiry and the plan-change paths are all
  covered.

## 0.1.1

- No code change: released in lockstep with the `zuraffa_purchase` family so
  the in-family version constraints stay aligned across the five packages.

## 0.1.0

- Initial release of the shared store core: the `StoreClient` transport seam,
  the `in_app_purchase`-backed `InAppPurchaseStoreClient`, the `StoreEventQueue`
  and the `InAppPurchaseStoreApi` flow.
- A purchase resolves on the terminal transaction for the requested product, a
  restore settles after a quiet window, and a purchase that never settles fails
  with a typed, named timeout instead of hanging.
- The adapters pin `in_app_purchase_storekit: ^0.4.15`, so an app's build
  carries none of the StoreKit 1 deprecation warnings.
