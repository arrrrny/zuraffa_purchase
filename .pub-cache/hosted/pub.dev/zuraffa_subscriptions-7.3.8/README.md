# zuraffa_subscriptions

In-app purchases and subscriptions for the Zuraffa ecosystem.

## Usage

```dart
final subs = SubscriptionService();

// Fetch the catalog, launch a purchase attributed to the signed-in user,
// acknowledge it:
final products = await subs.products(['pro.monthly']);
final purchase = await subs.purchase(PurchaseRequest(
    productId: 'pro.monthly', appAccountUserId: userId));
await subs.finishPurchase(purchase);

// Gate features on derived entitlement state:
final hasPro = await subs.hasEntitlement(userId, 'pro.monthly');
final snapshot = await subs.snapshotFor(userId); // for UI/telemetry
```

## Design

- **SubscriptionStorePort** — products / purchase / restore / finishPurchase; StoreKit 2 and Play Billing adapters implement it as federated siblings.
- **SubscriptionService** — maps store transactions into domain entitlements and re-derives state against the clock: active → gracePeriod → expired (configurable grace window, revoked preserved). Purchases are attributed to the request's `appAccountUserId` (transaction id fallback for anonymous purchases), so the advertised purchase→gate flow holds end to end.
- **Lifecycle outcome mapping** — every `PurchaseState` lands in a defensible `EntitlementState`: purchased/restored → active, pending → pending (never gates), expired → expired, revoked → revoked (preserved verbatim by clock derivation; refunds never keep features unlocked).
- **InMemorySubscriptionStore** — fully scriptable default store (catalog, next-outcome scripting, owned purchases, finish log).
- Entities via the zfa CLI (Zorphy): Product, Purchase, Entitlement, EntitlementSnapshot + EntitlementState/PurchaseState enums.
- Typed SubscriptionException taxonomy (cancelled / product_unavailable / store_unavailable / pending) with stable machine codes; a raised error grants nothing.

## Spec & TDD

The behavioral contract is pinned by [`specs/001-subscription-port/spec.md`](specs/001-subscription-port/spec.md) and driven entirely through the `zfa tdd` cycle (plan → gen → verify-red → make → refactor → run → verify), with receipts, cycle log, and the unified journal under `specs/001-subscription-port/tdd/`.
