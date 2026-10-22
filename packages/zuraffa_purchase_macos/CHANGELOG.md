# Changelog

## 0.1.1

- No code change: released in lockstep with the `zuraffa_purchase` family so
  the in-family version constraints stay aligned across the five packages.

## 0.1.0

- Initial release of the macOS adapter: StoreKit, reached through
  `package:in_app_purchase` and `in_app_purchase_storekit`.
- `registerMacosPurchaseDependencies` registers the `StoreApi` on the locator;
  `registerPurchaseDependencies` then wires the purchase port, the service and
  the subscription store over it.
- `MacosPurchaseException` classifies the native failure codes and marks the
  recoverable ones.
- `in_app_purchase_storekit` is pinned to `^0.4.15`, past 0.4.13, so the app's
  macOS build carries none of the StoreKit 1 deprecation warnings.
