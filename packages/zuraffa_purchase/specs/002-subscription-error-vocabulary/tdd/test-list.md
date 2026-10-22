# Test List: 002-subscription-error-vocabulary

## Outer loop: acceptance behaviors

One per acceptance criterion in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| A1 | the failure surfaces as a `SubscriptionException` in code `store_unavailable`. | AC-1 | PENDING |
| A2 | the failure surfaces as a `SubscriptionException` in code `cancelled`. | AC-2 | PENDING |
| A3 | the failure surfaces as a `SubscriptionException`. | AC-3 | PENDING |
| A4 | the failure surfaces as a `SubscriptionException`. | AC-4 | PENDING |
| A5 | the result carries code `cancelled`. | AC-5 | PENDING |
| A6 | the result carries code `product_unavailable`. | AC-6 | PENDING |
| A7 | the result carries code `store_unavailable`. | AC-7 | PENDING |
| A8 | the result carries code `pending`. | AC-8 | PENDING |
| A9 | the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success. | AC-9 | PENDING |
| A10 | the result carries the same message. | AC-10 | PENDING |
| A11 | that failure propagates unchanged. | AC-11 | PENDING |

## Outer loop: widget behaviors

UI acceptance scenarios (bug #830): asserted through a testWidgets pair — a view-builder subject stub plus a widget test that pumps the view and asserts the scenario.

The `kind` cell is the finder-kind taxonomy (issue #1140): the scenario verbs' predicted assertion classes — presence, absence, route-outcome, enabled-state, sequence — or `none` when no finder is derivable. `zfa tdd gen` selects the assertion template by it and refuses a row whose kind column drifted from the scenario prose; verify-red's kind gate (issue #959/#964) certifies on the same vocabulary.

| id | behavior | kind | traces | state |
| -- | -------- | ---- | ------ | ----- |

## Inner loop: unit behaviors

One per functional requirement in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| U1 | `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST | FR-001, PurchaseSubscriptionStore.fetchProducts | PENDING |
| U2 | `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST | FR-002, PurchaseSubscriptionStore.purchase | PENDING |
| U3 | `PurchaseSubscriptionStore.restore()` MUST surface a | FR-003, PurchaseSubscriptionStore.restore | PENDING |
| U4 | `PurchaseSubscriptionStore.finishPurchase(String transactionId)` | FR-004, PurchaseSubscriptionStore.finishPurchase | PENDING |
| U5 | The surfaced failure MUST preserve the machine code of the | FR-005, PurchaseSubscriptionStore.purchase | PENDING |
| U6 | A purchase-domain failure in an unrecognised code MUST surface as | FR-006, PurchaseSubscriptionStore.purchase | PENDING |
| U7 | The translation MUST apply only to `PurchaseException`; any other | FR-007, PurchaseSubscriptionStore.purchase | PENDING |

## Contract loop: contract behaviors

One per declared entity method, controller method and usecase in `spec.md` Layer Contracts (issue #1007). A contract test proves the implementation satisfies the DECLARED contract — a failing contract test is BLOCKED (never RED) and blocks the cycle from proceeding to GREEN.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| contract:A1 | PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract) | PurchaseSubscriptionStore.fetchProducts | PENDING |
| contract:A2 | PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract) | PurchaseSubscriptionStore.purchase | PENDING |
| contract:A3 | PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract) | PurchaseSubscriptionStore.restore | PENDING |
| contract:A4 | PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract) | PurchaseSubscriptionStore.finishPurchase | PENDING |

## Key entities

| entity | fields | purpose |
| ------ | ------ | ------- |
| SubscriptionException | code: String, message: String | The typed failure of the `SubscriptionStorePort` contract (`zuraffa_subscriptions`) — the vocabulary every consumer of the port catches. |
| PurchaseException | code: String, message: String, recoverable: bool | The typed failure of the purchase domain (`zuraffa_purchase`) — the vocabulary the store raises and the adapter translates. |
| Product | id: String, storeId: String, title: String, description: String, priceMicros: int, currency: String, period: String | The subscription-domain catalog entry `fetchProducts` returns. |
| StorePurchase | transactionId: String, productId: String, state: PurchaseState, purchasedAt: int, expiresAt: int?, pendingFinish: bool, receipt: String? | The subscription-domain purchase result `purchase` and `restore` return. |

## Layer contracts

### Domain

- `PurchaseSubscriptionStore`: `fetchProducts(List<String>) -> List<Product>`, `purchase(PurchaseRequest) -> StorePurchase`, `restore() -> List<StorePurchase>`, `finishPurchase(String) -> void`

## Routing provenance

Per-behavior routing decisions (issue #951): what each decision consulted — a declared marker/contract row, or the labeled legacy fallback to migrate.

route: A1 -> acceptance lane [declared: type marker, spec line 66]
route: A2 -> acceptance lane [declared: type marker, spec line 68]
route: A3 -> acceptance lane [declared: type marker, spec line 70]
route: A4 -> acceptance lane [declared: type marker, spec line 72]
route: A5 -> acceptance lane [declared: type marker, spec line 86]
route: A6 -> acceptance lane [declared: type marker, spec line 88]
route: A7 -> acceptance lane [declared: type marker, spec line 90]
route: A8 -> acceptance lane [declared: type marker, spec line 92]
route: A9 -> acceptance lane [declared: type marker, spec line 94]
route: A10 -> acceptance lane [declared: type marker, spec line 96]
route: A11 -> acceptance lane [declared: type marker, spec line 98]
route: U1 -> unit lane (entity pipeline: Product) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U2 -> unit lane (entity pipeline: StorePurchase) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U3 -> unit lane (entity pipeline: StorePurchase) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U4 -> unit lane [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U5 -> unit lane (entity pipeline: StorePurchase) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U6 -> unit lane (entity pipeline: StorePurchase) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: U7 -> unit lane (entity pipeline: StorePurchase) [declared: contract row: PurchaseSubscriptionStore, spec line 148]
route: contract:A1 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A2 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A3 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A4 -> contract lane [declared: PurchaseSubscriptionStore]

