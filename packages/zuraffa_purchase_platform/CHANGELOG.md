# Changelog

## 0.1.0

- Initial release of the shared store core: the `StoreClient` transport seam,
  the `in_app_purchase`-backed `InAppPurchaseStoreClient`, the `StoreEventQueue`
  and the `InAppPurchaseStoreApi` flow.
- A purchase resolves on the terminal transaction for the requested product, a
  restore settles after a quiet window, and a purchase that never settles fails
  with a typed, named timeout instead of hanging.
- The adapters pin `in_app_purchase_storekit: ^0.4.15`, so an app's build
  carries none of the StoreKit 1 deprecation warnings.
