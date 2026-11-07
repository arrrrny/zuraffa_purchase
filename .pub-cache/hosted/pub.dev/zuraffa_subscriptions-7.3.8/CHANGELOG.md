# Changelog

## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

## 2.0.0

### Breaking

- Widen the `zuraffa` constraint to `^7.0.1` (was `^6.2.2`). Consumers
  still on zuraffa 6.x must upgrade to 7.x before taking this version.
  No API changes ship with this bump — the package's public surface is
  unchanged; only the supported zuraffa range moves.

### Changed

- All dependencies moved to their latest releases: `get_it ^9.3.0`,
  `zorphy_annotation ^2.4.3`, `build_runner ^2.16.2`, `lints ^6.1.0`,
  `mutation_test ^1.8.1`, `test ^1.32.0`.
- Dropped `mocktail` from `dev_dependencies`. Nothing imported it and
  nothing depended on it transitively — the certified mocks come from
  `package:zuraffa/mock.dart`, which ships its own fakes.

### Notes

- zuraffa 7 split its heavy integrations (GraphQL, MinIO,
  OpenTelemetry) out of the core manifest into opt-in companion
  packages. That graph is entirely irrelevant to subscriptions, so the
  upgrade sheds ~15 transitive packages (`graphql`, `minio`,
  `opentelemetry`, the `gql_*` link stack, `rxdart`, `protobuf`, …)
  from every consumer's lockfile.

## 1.0.1

- **Example app** — a fully working subscriptions demo on android, ios
  and macos (`example/`): browse the catalog, purchase, finish the
  store transaction, and watch the entitlement land in the snapshot.
  One panel per `SubscriptionStorePort` operation (products / purchase
  / finishPurchase / restoreFor / entitlements), with
  `SubscriptionException`s surfaced verbatim in the error banner.
- The `InMemorySubscriptionStore` seeded with the demo catalog is the
  example's simulator seam — the same app code runs against the real
  StoreKit 2 / Play Billing adapters by passing a different store port.
- A full-flow widget test drives catalog → purchase → finish →
  entitlement → restore as executable documentation.

## 1.0.0

- **First published release** of the typed in-app purchases and
  subscriptions layer for the Zuraffa ecosystem.
- **SubscriptionStorePort** — products / purchase / restore /
  finishPurchase; StoreKit 2 and Play Billing adapters implement it as
  federated siblings.
- **SubscriptionService** — maps store transactions into domain
  entitlements and re-derives state against the clock: active →
  gracePeriod → expired (configurable grace window, revoked preserved
  verbatim). Purchases attribute to the request's `appAccountUserId`
  (transaction-id fallback), so the purchase → `hasEntitlement` flow
  holds end to end.
- **Lifecycle outcome mapping** — every `PurchaseState` lands in a
  defensible `EntitlementState`: purchased/restored → active, pending →
  pending (never gates), expired → expired, revoked → revoked (refunds
  never keep features unlocked).
- **InMemorySubscriptionStore** — fully scriptable default store
  (catalog gating, exactly-once outcome scripting, restore accumulation,
  idempotent finish log) and the certified mock seam (`EntitlementMock`).
- Typed `SubscriptionException` taxonomy (cancelled /
  product_unavailable / store_unavailable / pending) with stable machine
  codes; a raised error grants nothing.
- The full behavioral contract is pinned by
  `specs/001-subscription-port/` (12 behaviors, engine green) with a
  rating-A mutation audit over the production surface.
