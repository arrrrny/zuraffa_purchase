# Changelog

## 0.1.0

- Initial release of the iOS adapter: StoreKit, reached through
  `package:in_app_purchase` and `in_app_purchase_storekit`.
- `registerIosPurchaseDependencies` registers the `StoreApi` on the locator;
  `registerPurchaseDependencies` then wires the purchase port, the service and
  the subscription store over it.
- `IosPurchaseException` classifies the native failure codes and marks the
  recoverable ones.
- `in_app_purchase_storekit` is pinned to `^0.4.15`, past 0.4.13, so the app's
  iOS build carries none of the StoreKit 1 deprecation warnings.
