# Changelog

## 0.1.1

- No code change: released in lockstep with the `zuraffa_purchase` family so
  the in-family version constraints stay aligned across the five packages.

## 0.1.0

- Initial release of the Android adapter: Play Billing, reached through
  `package:in_app_purchase` and `in_app_purchase_android`.
- `registerAndroidPurchaseDependencies` registers the `StoreApi` on the
  locator; `registerPurchaseDependencies` then wires the purchase port, the
  service and the subscription store over it.
- `AndroidPurchaseException` classifies the native failure codes and marks the
  recoverable ones.
- `in_app_purchase_android` is pinned to `^0.5.5`, so the app's Android build
  resolves the current Play Billing implementation.
