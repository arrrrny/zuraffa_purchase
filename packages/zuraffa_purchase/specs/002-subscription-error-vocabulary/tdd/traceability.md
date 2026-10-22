# Traceability: 002-subscription-error-vocabulary

Coverage proof for `zfa tdd plan` (bug #846): every FR/AC requirement statement maps to a behavior row or an explicit manual declaration. Verify re-checks the hash — a spec edited after plan is drift (exit 3, re-plan required).

<!-- tdd:traceability
spec-hash: sha256:78a00c9e0406b0a19b77060f97b42a1fe808b27ceac20ed5f6c3091a9e85eb2a
statements: 18
automated: 18
manual: 0
fr-manual: 0
open-gaps: 0
-->

| requirement | line | statement | behavior | status |
| --- | --- | --- | --- | --- |
| AC-1 | 65 | 1. **Given** a purchase port whose catalog query fails with a `PurchaseException` in code `store_unavailable`, **When** the subscription store fetches products, **Then** the failure surfaces as a `SubscriptionException` in code `store_unavailable`. | A1 | automated |
| AC-2 | 67 | 2. **Given** a purchase port whose purchase is cancelled, **When** the subscription store runs the purchase, **Then** the failure surfaces as a `SubscriptionException` in code `cancelled`. | A2 | automated |
| AC-3 | 69 | 3. **Given** a purchase port that fails during restore, **When** the subscription store restores, **Then** the failure surfaces as a `SubscriptionException`. | A3 | automated |
| AC-4 | 71 | 4. **Given** a purchase port that fails while finishing a transaction, **When** the subscription store finishes it, **Then** the failure surfaces as a `SubscriptionException`. | A4 | automated |
| AC-5 | 85 | 1. **Given** a `PurchaseException` in code `cancelled`, **When** it is translated, **Then** the result carries code `cancelled`. | A5 | automated |
| AC-6 | 87 | 2. **Given** a `PurchaseException` in code `product_unavailable`, **When** it is translated, **Then** the result carries code `product_unavailable`. | A6 | automated |
| AC-7 | 89 | 3. **Given** a `PurchaseException` in code `store_unavailable`, **When** it is translated, **Then** the result carries code `store_unavailable`. | A7 | automated |
| AC-8 | 91 | 4. **Given** a `PurchaseException` in code `pending`, **When** it is translated, **Then** the result carries code `pending`. | A8 | automated |
| AC-9 | 93 | 5. **Given** a `PurchaseException` in an unrecognised code, **When** it is translated, **Then** the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success. | A9 | automated |
| AC-10 | 95 | 6. **Given** a `PurchaseException` carrying a detail message, **When** it is translated, **Then** the result carries the same message. | A10 | automated |
| AC-11 | 97 | 7. **Given** a failure that is not a `PurchaseException`, **When** the adapter calls the purchase port, **Then** that failure propagates unchanged. | A11 | automated |
| FR-001 | 116 | - **FR-001**: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST | U1 | automated |
| FR-002 | 120 | - **FR-002**: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST | U2 | automated |
| FR-003 | 124 | - **FR-003**: `PurchaseSubscriptionStore.restore()` MUST surface a | U3 | automated |
| FR-004 | 128 | - **FR-004**: `PurchaseSubscriptionStore.finishPurchase(String transactionId)` | U4 | automated |
| FR-005 | 132 | - **FR-005**: The surfaced failure MUST preserve the machine code of the | U5 | automated |
| FR-006 | 137 | - **FR-006**: A purchase-domain failure in an unrecognised code MUST surface as | U6 | automated |
| FR-007 | 141 | - **FR-007**: The translation MUST apply only to `PurchaseException`; any other | U7 | automated |

