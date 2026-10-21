# Traceability: 001-purchase-store

Coverage proof for `zfa tdd plan` (bug #846): every FR/AC requirement statement maps to a behavior row or an explicit manual declaration. Verify re-checks the hash — a spec edited after plan is drift (exit 3, re-plan required).

<!-- tdd:traceability
spec-hash: sha256:0f1aa09f9fb0ac7d0c171a2efe4103d08a1f102c40e7062a9b7259fc5316092f
statements: 26
automated: 14
manual: 12
fr-manual: 0
open-gaps: 0
-->

| requirement | line | statement | behavior | status |
| --- | --- | --- | --- | --- |
| AC-1 | 74 | 1. **Given** a store that offers two of the three requested product ids, (manual: unit behavior U1), **When** the developer calls `products`, **Then** exactly the two offered products are returned, each carrying its store id, title, price and currency. | — | manual (owner: unit behavior U1) |
| AC-2 | 75 | 2. **Given** a store that reports itself unavailable, (manual: unit behavior U2), **When** the developer calls `products`, **Then** a typed non-recoverable `store_unavailable` failure is raised and no product is returned. | — | manual (owner: unit behavior U2) |
| AC-3 | 92 | 1. **Given** a store that completes the purchase, (manual: unit behavior U3), **When** the developer calls `purchase`, **Then** a `PurchaseOutcome` in state `purchased` is returned, carrying the transaction id, the product id, the purchase timestamp and the receipt, and flagged `pendingFinish` so the app can acknowledge it. | — | manual (owner: unit behavior U3) |
| AC-4 | 93 | 2. **Given** a store that reports the user cancelled, (manual: unit behavior U4), **When** the developer calls `purchase`, **Then** a typed recoverable `cancelled` failure is raised. | — | manual (owner: unit behavior U4) |
| AC-5 | 94 | 3. **Given** a store that defers the purchase for parental approval, (manual: unit behavior U4), **When** the developer calls `purchase`, **Then** a `PurchaseOutcome` in state `pending` is returned — never a failure, and never a `purchased` purchase. | — | manual (owner: unit behavior U4) |
| AC-6 | 112 | 1. **Given** a store that replays two restored transactions, (manual: unit behavior U5), **When** the developer calls `restore`, **Then** both are returned, each in state `restored`. | — | manual (owner: unit behavior U5) |
| AC-7 | 113 | 2. **Given** a store that replays a purchase and a restore, (manual: unit behavior U7), **When** the developer calls `restore`, **Then** both transactions are returned with their own states preserved. | — | manual (owner: unit behavior U7) |
| AC-8 | 130 | 1. **Given** a purchased transaction awaiting acknowledgement, (manual: unit behavior U6), **When** the developer calls `finish`, **Then** the store is asked to complete exactly that transaction id. | — | manual (owner: unit behavior U6) |
| AC-9 | 131 | 2. **Given** a transaction id the store does not know, (manual: unit behavior U6), **When** the developer calls `finish`, **Then** the call succeeds without raising — finishing is idempotent. | — | manual (owner: unit behavior U6) |
| AC-10 | 149 | 1. **Given** a store offering two products, (manual: unit behavior U8), **When** `fetchProducts` is called, **Then** two subscription products are returned, each carrying the store id, the title, the price in micros, the currency and the billing period. | — | manual (owner: unit behavior U8) |
| AC-11 | 150 | 2. **Given** a completed store purchase, **When** the subscription store purchases it through the purchase port, **Then** a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`. | A11 | automated |
| AC-12 | 152 | 3. **Given** a store that replays two restored transactions, (manual: unit behavior U10), **When** `restore` is called, **Then** two store purchases are returned, each in state `restored`. | — | manual (owner: unit behavior U10) |
| AC-13 | 153 | 4. **Given** an unacknowledged transaction, (manual: unit behavior U11), **When** `finishPurchase` is called, **Then** the store is asked to complete exactly that transaction id. | — | manual (owner: unit behavior U11) |
| FR-001 | 179 | - **FR-001**: `PurchaseService.products(List<String> productIds)` MUST return the | U1 | automated |
| FR-002 | 184 | - **FR-002**: A store that reports itself unavailable MUST surface as a typed | U2 | automated |
| FR-003 | 188 | - **FR-003**: `PurchaseService.purchase(PurchaseIntent request)` MUST map a | U3 | automated |
| FR-004 | 194 | - **FR-004**: A cancelled store transaction MUST surface as a typed recoverable | U4 | automated |
| FR-005 | 199 | - **FR-005**: `PurchaseService.restore()` MUST return every transaction the store | U5 | automated |
| FR-006 | 203 | - **FR-006**: `PurchaseService.finish(String transactionId)` MUST ask the store to | U6 | automated |
| FR-007 | 207 | - **FR-007**: The store status taxonomy MUST map onto `PurchaseStatus` as | U7 | automated |
| FR-008 | 212 | - **FR-008**: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST | U8 | automated |
| FR-009 | 217 | - **FR-009**: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST | U9 | automated |
| FR-010 | 223 | - **FR-010**: `PurchaseSubscriptionStore.restore()` MUST return one store purchase | U10 | automated |
| FR-011 | 226 | - **FR-011**: `PurchaseSubscriptionStore.finishPurchase(String transactionId)` | U11 | automated |
| FR-012 | 229 | - **FR-012**: Store failures MUST surface as the typed `PurchaseException` | U12 | automated |
| FR-013 | 234 | - **FR-013**: The composition root `registerPurchaseDependencies` MUST register the | U13 | automated |

