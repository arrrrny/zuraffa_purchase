# zuraffa_subscriptions example

A fully working subscriptions demo on **android, ios and macos**: browse
the catalog, purchase, finish the store transaction, and watch the
entitlement land in the snapshot.

| Plugin operation | Where in the app |
| --- | --- |
| `products(productIds)` | the Catalog card (unknown ids are absent — `missing.product` is requested and never shown) |
| `purchase(PurchaseRequest)` | the per-product purchase button (`appAccountUserId` = demo user) |
| `finishPurchase(purchase)` | the pending-purchases card (acknowledges the store transaction) |
| `restoreFor(userId)` | the restoreFor button |
| `entitlementsFor` / `hasEntitlement` / `snapshotFor` | the Entitlements card (snapshot + per-product checks) |
| `SubscriptionException` | surfaced verbatim in the error banner ("simulate store error" uses `setNextError`) |

The `InMemorySubscriptionStore` seeded with the demo catalog is the
template's simulator seam — the same API runs against the real store
adapters by passing a different `SubscriptionStorePort`.

## Run

```sh
flutter pub get
flutter run            # pick an android / ios / macos device
```

The widget test drives the complete flow (catalog → purchase → finish →
entitlement → restore) as executable documentation.

This example follows the general zuraffa plugin-example contract —
`~/Developer/zuraffa/templates/plugin-example/TEMPLATE.md` (scaffold,
real-driver-first composition root, simulator switch, one panel per
operation, verbatim error banner, full-flow widget test, verification
checklist).
