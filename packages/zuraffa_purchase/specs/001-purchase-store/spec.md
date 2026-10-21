# Feature Specification: purchase-store — the federated in-app purchase wrapper

**Feature Branch**: `001-purchase-store`

**Created**: 2026-10-21

**Status**: Approved (brownfield: the monorepo shipped a `zfa package create-plugin`
scaffold whose generated API was WebAssembly-shaped — `compile`/`invoke`/`unload`
over `PurchaseValue` scalars. This feature replaces that placeholder domain with
the real in-app purchase domain and wires it to `in_app_purchase`.)

**Template Version**: `zuraffa-1.0`

**Input**: User description: "implement the full federated zuraffa_purchase package
using the latest zfa binary with TDD, as the wrapper for in_app_purchase_storekit,
so zuraffa_subscriptions can use it directly."

## Overview

`zuraffa_purchase` is the Zuraffa-native wrapper over the store: a pure-Dart
purchase port (`PurchasePort`) with federated platform adapters that implement it
over `package:in_app_purchase` (StoreKit on macOS/iOS, Play Billing on Android).

`zuraffa_subscriptions` already owns the entitlement domain and declares the
`SubscriptionStorePort` seam. Today every app that wants a real store writes its
own adapter (the `IapSubscriptionStore` in `zuraffa_browser`, the
`SubscriptionIAPDataSource` in `zik_zak`) — duplicated logic, duplicated bug fixes,
and the store plugin's compile-time warnings leak into each app build. This
feature moves that adapter into the package family once: `zuraffa_purchase` ships
`PurchaseSubscriptionStore`, which implements `SubscriptionStorePort` over the
purchase port, so a consuming app wires the store once and hands it to
`SubscriptionService`.

### Package layout

| Package | Kind | Role |
| --- | --- | --- |
| `zuraffa_purchase` | pure Dart | App-facing domain: `CatalogProduct`, `PurchaseOutcome`, `PurchaseStatus`, `PurchaseIntent`, `PurchasePort`, `PurchaseException`, `PurchaseService`, the `StoreApi` seam, `StoreApiPurchasePort`, `PurchaseSubscriptionStore`, `RecordingStoreApi`, DI |
| `zuraffa_purchase_platform` | Flutter | The store implementation: the `StoreClient` transport seam, the `in_app_purchase`-backed client, the `StoreEventQueue`, and the `StoreApi` flow (`InAppPurchaseStoreApi`) |
| `zuraffa_purchase_macos` | Flutter | StoreKit adapter over `in_app_purchase` / `in_app_purchase_storekit` |
| `zuraffa_purchase_ios` | Flutter | StoreKit adapter over `in_app_purchase` / `in_app_purchase_storekit` |
| `zuraffa_purchase_android` | Flutter | Play Billing adapter over `in_app_purchase` / `in_app_purchase_android` |

The dependency graph is a DAG: `zuraffa_purchase` ← `zuraffa_purchase_platform` ←
the three adapters. `zuraffa_purchase` additionally depends on
`zuraffa_subscriptions` for the `SubscriptionStorePort` seam;
`zuraffa_subscriptions` does NOT depend on any purchase package, so the graph
stays acyclic.

### Naming

`zuraffa_subscriptions` exports the entities `Product`, `Purchase`,
`PurchaseState` and `PurchaseRequest`. Both packages land in the same import
graph in a consuming app, so this package deliberately does NOT reuse those
names: the purchase domain speaks in `CatalogProduct`, `PurchaseOutcome`,
`PurchaseStatus` and `PurchaseIntent`.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - A developer lists the store catalog (Priority: P1)

As an app developer, I want to fetch the products the store offers for a set of
product ids, so that the paywall can render real prices and titles instead of
placeholder copy.

**Why this priority**: the catalog is the entry point of every purchase flow; a
paywall that cannot price its product cannot sell it.

**Independent Test**: Can be validated by driving `PurchaseService.products` over a
fake store that returns two products and asserting the returned list.

**Acceptance Scenarios**:

1. **Given** a store that offers two of the three requested product ids, (manual: unit behavior U1), **When** the developer calls `products`, **Then** exactly the two offered products are returned, each carrying its store id, title, price and currency.
2. **Given** a store that reports itself unavailable, (manual: unit behavior U2), **When** the developer calls `products`, **Then** a typed non-recoverable `store_unavailable` failure is raised and no product is returned.

---

### User Story 2 - A developer runs a purchase (Priority: P1)

As an app developer, I want to launch a purchase and learn its outcome, so that
the user can be charged and the app can react honestly to success, cancellation,
or deferral.

**Why this priority**: this is the flow the whole package exists for.

**Independent Test**: Can be validated by driving `PurchaseService.purchase` over a
fake store that emits a terminal transaction and asserting the mapped `PurchaseOutcome`.

**Acceptance Scenarios**:

1. **Given** a store that completes the purchase, (manual: unit behavior U3), **When** the developer calls `purchase`, **Then** a `PurchaseOutcome` in state `purchased` is returned, carrying the transaction id, the product id, the purchase timestamp and the receipt, and flagged `pendingFinish` so the app can acknowledge it.
2. **Given** a store that reports the user cancelled, (manual: unit behavior U4), **When** the developer calls `purchase`, **Then** a typed recoverable `cancelled` failure is raised.
3. **Given** a store that defers the purchase for parental approval, (manual: unit behavior U4), **When** the developer calls `purchase`, **Then** a `PurchaseOutcome` in state `pending` is returned — never a failure, and never a `purchased` purchase.

---

### User Story 3 - A developer restores prior purchases (Priority: P1)

As an app developer, I want to restore the purchases the signed-in user already
owns, so that a reinstall does not lose entitlements the user paid for.

**Why this priority**: restoring is the only recovery path after a reinstall, and
the store replays unfinished transactions on launch — so restore and purchase
share one event stream.

**Independent Test**: Can be validated by driving `PurchaseService.restore` over a
fake store that replays two restored transactions.

**Acceptance Scenarios**:

1. **Given** a store that replays two restored transactions, (manual: unit behavior U5), **When** the developer calls `restore`, **Then** both are returned, each in state `restored`.
2. **Given** a store that replays a purchase and a restore, (manual: unit behavior U7), **When** the developer calls `restore`, **Then** both transactions are returned with their own states preserved.

---

### User Story 4 - A developer acknowledges a transaction (Priority: P1)

As an app developer, I want to finish (acknowledge) a transaction once the app has
granted what it owes the user, so that the store stops replaying it.

**Why this priority**: an unacknowledged transaction is replayed on every launch
and can be charged twice; this is the correctness half of the purchase loop.

**Independent Test**: Can be validated by driving `PurchaseService.finish` over a
fake store and asserting the transaction id reached the store.

**Acceptance Scenarios**:

1. **Given** a purchased transaction awaiting acknowledgement, (manual: unit behavior U6), **When** the developer calls `finish`, **Then** the store is asked to complete exactly that transaction id.
2. **Given** a transaction id the store does not know, (manual: unit behavior U6), **When** the developer calls `finish`, **Then** the call succeeds without raising — finishing is idempotent.

---

### User Story 5 - A subscription app reuses the store (Priority: P1)

As a Zuraffa app developer, I want to hand the purchase port to
`SubscriptionService`, so that entitlements derive from real store transactions
without the app writing a store adapter.

**Why this priority**: this is the reason the package exists as a separate
family — it removes the per-app duplication of the store adapter.

**Independent Test**: Can be validated by driving `PurchaseSubscriptionStore` over a
fake store and asserting the subscription-shaped results.

**Acceptance Scenarios**:

1. **Given** a store offering two products, (manual: unit behavior U8), **When** `fetchProducts` is called, **Then** two subscription products are returned, each carrying the store id, the title, the price in micros, the currency and the billing period.
2. **Given** a completed store purchase, **When** the subscription store purchases it through the purchase port, **Then** a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.
   **Type**: acceptance
3. **Given** a store that replays two restored transactions, (manual: unit behavior U10), **When** `restore` is called, **Then** two store purchases are returned, each in state `restored`.
4. **Given** an unacknowledged transaction, (manual: unit behavior U11), **When** `finishPurchase` is called, **Then** the store is asked to complete exactly that transaction id.

---

### Edge Cases

- **The store reports a product id it does not know.** `products` omits it
  silently; a purchase attempt for it raises `product_unavailable`.
- **The store's transaction date is absent.** The purchase timestamp falls back to
  the injected clock, never to epoch zero.
- **The store's price string is unparsable.** The product's price falls back to
  `0` micros rather than throwing — a paywall must still render.
- **The purchase never reaches a terminal state.** The flow times out with a
  typed recoverable `store_unavailable` failure naming the timeout, rather than
  hanging forever.
- **The restore stream keeps emitting.** Restore settles after a quiet window, so
  a slow restore is not reported as an empty restore.
- **The same transaction is finished twice.** The second call is a no-op; the
  store is not asked to complete it again.
- **A transaction id is empty.** A stable per-transaction composite is derived
  from the product id and the transaction date, so the id is never blank.

## Requirements

### Functional Requirements

- **FR-001**: `PurchaseService.products(List<String> productIds)` MUST return the
  store's catalog for the requested ids, each product carrying the store product
  id, the title, the description, the price in micros, the currency and the
  billing period; ids the store does not offer MUST be absent from the result.
            traces: PurchaseService.products
- **FR-002**: A store that reports itself unavailable MUST surface as a typed
  non-recoverable `store_unavailable` failure; no product is returned and no
  partial catalog is produced.
            traces: PurchaseService.products
- **FR-003**: `PurchaseService.purchase(PurchaseIntent request)` MUST map a
  completed store transaction into a `PurchaseOutcome` in state `purchased`
  carrying the transaction id, the product id, the purchase timestamp, the expiry
  (when the store reports one) and the receipt, and MUST set `pendingFinish` to
  true so the caller acknowledges it.
            traces: PurchaseService.purchase
- **FR-004**: A cancelled store transaction MUST surface as a typed recoverable
  `cancelled` failure; a deferred store transaction MUST surface as a
  `PurchaseOutcome` in state `pending` — never a failure, and never a `purchased`
  purchase.
            traces: PurchaseService.purchase
- **FR-005**: `PurchaseService.restore()` MUST return every transaction the store
  replayed, each mapped to its own `PurchaseOutcome` with the state preserved
  (`purchased` stays `purchased`, `restored` stays `restored`).
            traces: PurchaseService.restore
- **FR-006**: `PurchaseService.finish(String transactionId)` MUST ask the store to
  complete exactly that transaction id; an unknown transaction id MUST succeed
  without raising, so finishing is idempotent.
            traces: PurchaseService.finish
- **FR-007**: The store status taxonomy MUST map onto `PurchaseStatus` as
  `purchased → purchased`, `restored → restored`, `pending → pending`,
  `cancelled → cancelled`, `failed → failed`; a transaction whose store status is
  unknown MUST map to `failed`, never to `purchased`.
            traces: StoreApiPurchasePort.purchase
- **FR-008**: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
  return one subscription product per offered purchase product, each carrying the
  store id, the title, the description, the price in micros, the currency and the
  billing period `P1M`.
            traces: PurchaseSubscriptionStore.fetchProducts
- **FR-009**: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST
  return a store purchase in state `purchased` carrying the transaction id, the
  product id, the purchase timestamp, the expiry derived from the configured
  billing period, the receipt, and `pendingFinish` true; a pending purchase MUST
  map to state `pending` and MUST NOT carry an expiry.
            traces: PurchaseSubscriptionStore.purchase
- **FR-010**: `PurchaseSubscriptionStore.restore()` MUST return one store purchase
  per restored transaction, each in state `restored`.
            traces: PurchaseSubscriptionStore.restore
- **FR-011**: `PurchaseSubscriptionStore.finishPurchase(String transactionId)`
  MUST ask the store to complete exactly that transaction id.
            traces: PurchaseSubscriptionStore.finishPurchase
- **FR-012**: Store failures MUST surface as the typed `PurchaseException`
  taxonomy (`cancelled`, `product_unavailable`, `store_unavailable`, `pending`)
  with stable machine codes and a `recoverable` flag; a raised typed failure MUST
  grant nothing and MUST NOT be reported as a purchase.
            traces: PurchaseException.code
- **FR-013**: The composition root `registerPurchaseDependencies` MUST register the
  purchase port, the purchase service and the subscription store as lazy
  singletons on the provided `GetIt`; repeated resolution MUST yield identical
  instances, and an injected port MUST be honored.
            traces: CompositionRoot.registerPurchaseDependencies

## Layer Contracts

**Domain**:
- `PurchaseService`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `PurchasePort`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `StoreApiPurchasePort`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `PurchaseSubscriptionStore`: `fetchProducts(List<String>) -> List<Product>`, `purchase(PurchaseRequest) -> StorePurchase`, `restore() -> List<StorePurchase>`, `finishPurchase(String) -> void`
- `PurchaseException`: `code() -> String`
- `CompositionRoot`: `registerPurchaseDependencies(GetIt) -> void`

**Data**:
- `StoreApi`: `isAvailable() -> Future<bool>`, `queryProducts(Set<String>) -> List<StoreProduct>`, `purchase(StorePurchaseRequest) -> StoreTransaction`, `restore() -> List<StoreTransaction>`, `complete(String) -> void`
- `RecordingStoreApi`: `isAvailable() -> Future<bool>`, `queryProducts(Set<String>) -> List<StoreProduct>`, `purchase(StorePurchaseRequest) -> StoreTransaction`, `restore() -> List<StoreTransaction>`, `complete(String) -> void`

## Key Entities

- **CatalogProduct**: a store product. Attributes: `id` (store product id), `title`,
  `description`, `priceMicros`, `currency`, `period`.
- **PurchaseOutcome**: a store purchase outcome. Attributes: `transactionId`, `productId`,
  `status`, `purchasedAt` (epoch ms), `expiresAt` (epoch ms, nullable),
  `pendingFinish`, `receipt` (nullable).
- **PurchaseIntent**: a purchase to launch. Attributes: `productId`,
  `appAccountId` (nullable, for store-side attribution), `oldPurchaseId`
  (nullable, for upgrade/downgrade).
- **PurchaseStatus**: `purchased`, `restored`, `pending`, `cancelled`, `failed`.
- **StoreApi**: the platform seam every adapter implements. Operations:
  `isAvailable`, `queryProducts`, `purchase`, `restore`, `complete`, and the
  `transactions` stream.
- **StoreTransaction**: a platform-shaped purchase event. Attributes:
  `transactionId`, `productId`, `status`, `purchasedAt`, `expiresAt` (nullable),
  `receipt` (nullable), `needsFinish`.
- **PurchaseException**: the typed failure. Attributes: `code`, `message`,
  `recoverable`.

## Success Criteria

- **SC-001**: `zfa tdd run 001-purchase-store` completes with a green engine lane
  and a green `zfa tdd status 001-purchase-store` verdict.
- **SC-002**: Every behavior in `specs/001-purchase-store/tdd/test-list.md` is
  covered by an automated test; `zfa tdd verify --feature 001-purchase-store`
  reports no surviving mutant.
- **SC-003**: All five packages pass `dart analyze` with no findings, and every
  package's test suite is green.
- **SC-004**: The macOS, iOS and Android adapters each implement the same
  `StoreApi` contract and register it on the provided `GetIt`.
- **SC-005**: `zuraffa_subscriptions` consumes the purchase port through
  `PurchaseSubscriptionStore` without any change to `zuraffa_subscriptions`
  itself — the subscription package keeps no dependency on any purchase package.

## Assumptions

- The store plugin stays `package:in_app_purchase`; the adapters wrap it rather
  than reimplementing StoreKit or Play Billing natively.
- The purchase port is event-driven: a purchase is started through the store and
  its outcome arrives on the store's transaction stream — the shape
  `package:in_app_purchase` exposes on every platform.
- The clock is injectable so purchase timestamps and expiry derivation are
  deterministic under test.
- `zuraffa_subscriptions` 2.0.0's `SubscriptionStorePort` is the seam this
  package adapts; its shape is treated as fixed.
- The TDD cycle for this feature runs in `packages/zuraffa_purchase` — the
  pure-Dart package the domain lives in. The store flow in
  `zuraffa_purchase_platform` is Flutter-bound and is covered by the package's
  own `flutter test` suite.
