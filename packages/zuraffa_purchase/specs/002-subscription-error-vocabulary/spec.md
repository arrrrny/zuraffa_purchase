# Feature Specification: subscription-error-vocabulary — the port's own error type

**Template Version**: `zuraffa-1.0`

**Feature Branch**: `002-subscription-error-vocabulary`

**Created**: 2026-10-22

**Status**: Approved (brownfield: feature `001-purchase-store` shipped
`PurchaseSubscriptionStore` — the adapter that implements
`zuraffa_subscriptions`' `SubscriptionStorePort` — but it lets the purchase
domain's `PurchaseException` escape. The port's typed vocabulary is
`SubscriptionException`, so a consuming app that catches `on
SubscriptionException` never sees the failure.)

**Input**: User description: "implement using the new packages only without
direct dependency to storekit" — the first consumer to try is `zuraffa_browser`,
whose `SubscriptionController` catches `on SubscriptionException` at four
sites. A purchase that fails, or is cancelled, must surface as a
`SubscriptionException` or the error escapes the controller uncaught.

## Overview

`zuraffa_subscriptions` owns the `SubscriptionStorePort` seam, and that seam's
error vocabulary is `SubscriptionException` — the package's own in-memory store
(`InMemorySubscriptionStore`) raises it, `SubscriptionService` documents it, and
every consumer catches it. `PurchaseSubscriptionStore` is the *adapter* that
implements that port over the purchase domain, so it must speak the port's
vocabulary on the way out: a store failure arrives as a `PurchaseException` and
leaves as a `SubscriptionException`.

Today it does not. `PurchaseSubscriptionStore` calls straight through to the
purchase port, so a cancelled purchase throws `PurchaseException.cancelled()`
out of a method whose contract says it throws `SubscriptionException`. A
consumer that follows the port's contract — `on SubscriptionException` — misses
it entirely.

This feature adds the translation at the adapter boundary. It is a narrow,
one-way fix: the purchase domain keeps its own taxonomy, the subscription port
keeps its own, and the adapter is where they meet.

### Non-goals

- `zuraffa_subscriptions` does not change. The dependency stays one-way.
- The purchase domain's `PurchaseException` does not change, and the
  `PurchasePort`/`PurchaseService` surface keeps raising it.
- No new exception type, no error-code renaming, no behaviour change on the
  success path.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - A consumer catches one error type (Priority: P1)

**Why this priority**: Without this, every consumer of the port must catch two
exception types or wrap the store a second time. The port's contract promises
one vocabulary; the adapter has to keep that promise or the package is not
usable as the drop-in it was built to be.

**Independent Test**: Can be fully tested by making the purchase port fail and
asserting the failure that leaves the subscription store — no store, no
platform, no device.

**Acceptance Scenarios**:

1. **Given** a purchase port whose catalog query fails with a `PurchaseException` in code `store_unavailable`, **When** the subscription store fetches products, **Then** the failure surfaces as a `SubscriptionException` in code `store_unavailable`.
   **Type**: acceptance
2. **Given** a purchase port whose purchase is cancelled, **When** the subscription store runs the purchase, **Then** the failure surfaces as a `SubscriptionException` in code `cancelled`.
   **Type**: acceptance
3. **Given** a purchase port that fails during restore, **When** the subscription store restores, **Then** the failure surfaces as a `SubscriptionException`.
   **Type**: acceptance
4. **Given** a purchase port that fails while finishing a transaction, **When** the subscription store finishes it, **Then** the failure surfaces as a `SubscriptionException`.
   **Type**: acceptance

### User Story 2 - The machine code survives the translation (Priority: P1)

**Why this priority**: The code is the stable, machine-readable reason
consumers branch on. A translation that flattened every failure into one code
would be worse than no translation at all.

**Independent Test**: Can be fully tested by raising each purchase-domain code
and reading the code that leaves.

**Acceptance Scenarios**:

1. **Given** a `PurchaseException` in code `cancelled`, **When** it is translated, **Then** the result carries code `cancelled`.
   **Type**: acceptance
2. **Given** a `PurchaseException` in code `product_unavailable`, **When** it is translated, **Then** the result carries code `product_unavailable`.
   **Type**: acceptance
3. **Given** a `PurchaseException` in code `store_unavailable`, **When** it is translated, **Then** the result carries code `store_unavailable`.
   **Type**: acceptance
4. **Given** a `PurchaseException` in code `pending`, **When** it is translated, **Then** the result carries code `pending`.
   **Type**: acceptance
5. **Given** a `PurchaseException` in an unrecognised code, **When** it is translated, **Then** the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.
   **Type**: acceptance
6. **Given** a `PurchaseException` carrying a detail message, **When** it is translated, **Then** the result carries the same message.
   **Type**: acceptance
7. **Given** a failure that is not a `PurchaseException`, **When** the adapter calls the purchase port, **Then** that failure propagates unchanged.
   **Type**: acceptance

### Edge Cases

- A failure raised by something other than the purchase port (a bug in the
  adapter itself) is not translated — only `PurchaseException` is.
- The translated failure carries the purchase failure's message, so the
  original detail (the store's error text) survives the boundary.
- A successful call is unaffected: no translation, no wrapping, the same
  values.
- A `PurchaseException` with a `recoverable` flag is still a
  `SubscriptionException` afterwards — the port's type has no recoverable flag,
  so the flag does not survive the translation.

## Requirements *(mandatory)*

### Functional Requirements

- **FR-001**: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
  surface a purchase-domain failure as a `SubscriptionException`, never as a
  `PurchaseException`.
            traces: PurchaseSubscriptionStore.fetchProducts
- **FR-002**: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST
  surface a purchase-domain failure as a `SubscriptionException`, never as a
  `PurchaseException`.
            traces: PurchaseSubscriptionStore.purchase
- **FR-003**: `PurchaseSubscriptionStore.restore()` MUST surface a
  purchase-domain failure as a `SubscriptionException`, never as a
  `PurchaseException`.
            traces: PurchaseSubscriptionStore.restore
- **FR-004**: `PurchaseSubscriptionStore.finishPurchase(String transactionId)`
  MUST surface a purchase-domain failure as a `SubscriptionException`, never as
  a `PurchaseException`.
            traces: PurchaseSubscriptionStore.finishPurchase
- **FR-005**: The surfaced failure MUST preserve the machine code of the
  purchase-domain failure: `cancelled` → `cancelled`, `product_unavailable` →
  `product_unavailable`, `store_unavailable` → `store_unavailable`, `pending` →
  `pending`.
            traces: PurchaseSubscriptionStore.purchase
- **FR-006**: A purchase-domain failure in an unrecognised code MUST surface as
  `store_unavailable`; the surfaced failure MUST carry the original failure's
  message.
            traces: PurchaseSubscriptionStore.purchase
- **FR-007**: The translation MUST apply only to `PurchaseException`; any other
  error MUST propagate unchanged.
            traces: PurchaseSubscriptionStore.purchase

## Layer Contracts

**Domain**:
- `PurchaseSubscriptionStore`: `fetchProducts(List<String>) -> List<Product>`, `purchase(PurchaseRequest) -> StorePurchase`, `restore() -> List<StorePurchase>`, `finishPurchase(String) -> void`

## Key Entities

| Entity | Fields | Purpose |
| --- | --- | --- |
| SubscriptionException | code: String, message: String | The typed failure of the `SubscriptionStorePort` contract (`zuraffa_subscriptions`) — the vocabulary every consumer of the port catches. |
| PurchaseException | code: String, message: String, recoverable: bool | The typed failure of the purchase domain (`zuraffa_purchase`) — the vocabulary the store raises and the adapter translates. |
| Product | id: String, storeId: String, title: String, description: String, priceMicros: int, currency: String, period: String | The subscription-domain catalog entry `fetchProducts` returns. |
| StorePurchase | transactionId: String, productId: String, state: PurchaseState, purchasedAt: int, expiresAt: int?, pendingFinish: bool, receipt: String? | The subscription-domain purchase result `purchase` and `restore` return. |

## Success Criteria *(mandatory)*

### Measurable Outcomes

- Every failure path of `PurchaseSubscriptionStore` raises a
  `SubscriptionException`; no `PurchaseException` escapes the adapter.
- The machine code of the raised failure is the code of the raised purchase
  failure, for the four known codes, and `store_unavailable` for an unknown
  one.
- The existing `PurchaseSubscriptionStore` success-path tests keep passing
  unchanged — the translation touches the failure path only.
- `zuraffa_subscriptions` is unchanged: no new dependency, no changed type, no
  changed contract.

## Assumptions

- `SubscriptionException` is exported from `zuraffa_subscriptions`' barrel —
  it is, via `domain/store/subscription_store.dart`.
- `zuraffa_purchase` already depends on `zuraffa_subscriptions`, so the
  translation needs no new dependency.
- The `recoverable` flag on `PurchaseException` has no counterpart on
  `SubscriptionException` and is dropped at the boundary. A follow-up may add
  it to the port if a consumer needs it; this feature does not widen the port.
