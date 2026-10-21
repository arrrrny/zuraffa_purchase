# zuraffa_purchase — monorepo

Typed in-app purchases for the Zuraffa ecosystem: a pure-Dart purchase port
behind a service, with federated adapters that talk to StoreKit and Play
Billing through `package:in_app_purchase`.

Built on the [Zuraffa](https://pub.dev/packages/zuraffa) framework as part
of the zuraffa-native package family (EPIC #214).

## Packages

| Package | Description |
| --- | --- |
| [`packages/zuraffa_purchase`](packages/zuraffa_purchase/) | App-facing package: `PurchasePort`, `PurchaseService`, `PurchaseSubscriptionStore`, typed failures + DI registration |
| [`packages/zuraffa_purchase_platform`](packages/zuraffa_purchase_platform/) | The shared store core: the `StoreClient` transport seam, the `in_app_purchase` client, the event queue and the `StoreApi` flow |
| [`packages/zuraffa_purchase_macos`](packages/zuraffa_purchase_macos/) | macOS adapter (StoreKit, through `in_app_purchase_storekit`) |
| [`packages/zuraffa_purchase_ios`](packages/zuraffa_purchase_ios/) | iOS adapter (StoreKit, through `in_app_purchase_storekit`) |
| [`packages/zuraffa_purchase_android`](packages/zuraffa_purchase_android/) | Android adapter (Play Billing, through `in_app_purchase_android`) |

The dependency graph is a DAG: `zuraffa_purchase` ← `zuraffa_purchase_platform`
← the three adapters. `zuraffa_purchase` also depends on
`zuraffa_subscriptions` for the `SubscriptionStorePort` seam;
`zuraffa_subscriptions` depends on no purchase package, so the graph stays
acyclic.

Publish from each package directory (`packages/<name>`); the federated
siblings depend on each other via hosted dependencies — see
[`PUBLISH.md`](PUBLISH.md) and `scripts/` for the publish pipeline.

See [`packages/zuraffa_purchase/specs/`](packages/zuraffa_purchase/specs/) for
the spec-driven development records.

Repository: https://github.com/arrrrny/zuraffa_purchase
