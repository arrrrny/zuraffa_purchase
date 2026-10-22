# Test List: 001-purchase-store

## Outer loop: acceptance behaviors

One per acceptance criterion in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| A11 | a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`. | AC-11 | PENDING |

## Outer loop: widget behaviors

UI acceptance scenarios (bug #830): asserted through a testWidgets pair — a view-builder subject stub plus a widget test that pumps the view and asserts the scenario.

The `kind` cell is the finder-kind taxonomy (issue #1140): the scenario verbs' predicted assertion classes — presence, absence, route-outcome, enabled-state, sequence — or `none` when no finder is derivable. `zfa tdd gen` selects the assertion template by it and refuses a row whose kind column drifted from the scenario prose; verify-red's kind gate (issue #959/#964) certifies on the same vocabulary.

| id | behavior | kind | traces | state |
| -- | -------- | ---- | ------ | ----- |

## Inner loop: unit behaviors

One per functional requirement in `spec.md`.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| U1 | `PurchaseService.products(List<String> productIds)` MUST return the | FR-001, PurchaseService.products | PENDING |
| U2 | A store that reports itself unavailable MUST surface as a typed | FR-002, PurchaseService.products | PENDING |
| U3 | `PurchaseService.purchase(PurchaseIntent request)` MUST map a | FR-003, PurchaseService.purchase | PENDING |
| U4 | A cancelled store transaction MUST surface as a typed recoverable | FR-004, PurchaseService.purchase | PENDING |
| U5 | `PurchaseService.restore()` MUST return every transaction the store | FR-005, PurchaseService.restore | PENDING |
| U6 | `PurchaseService.finish(String transactionId)` MUST ask the store to | FR-006, PurchaseService.finish | PENDING |
| U7 | The store status taxonomy MUST map onto `PurchaseStatus` as | FR-007, StoreApiPurchasePort.purchase | PENDING |
| U8 | `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST | FR-008, PurchaseSubscriptionStore.fetchProducts | PENDING |
| U9 | `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST | FR-009, PurchaseSubscriptionStore.purchase | PENDING |
| U10 | `PurchaseSubscriptionStore.restore()` MUST return one store purchase | FR-010, PurchaseSubscriptionStore.restore | PENDING |
| U11 | `PurchaseSubscriptionStore.finishPurchase(String transactionId)` | FR-011, PurchaseSubscriptionStore.finishPurchase | PENDING |
| U12 | Store failures MUST surface as the typed `PurchaseException` | FR-012, PurchaseException.code | PENDING |
| U13 | The composition root `registerPurchaseDependencies` MUST register the | FR-013, CompositionRoot.registerPurchaseDependencies | PENDING |

Seam cost: 2 of 13 unit behaviors will hand-step because return is an entity.

## Contract loop: contract behaviors

One per declared entity method, controller method and usecase in `spec.md` Layer Contracts (issue #1007). A contract test proves the implementation satisfies the DECLARED contract — a failing contract test is BLOCKED (never RED) and blocks the cycle from proceeding to GREEN.

| id | behavior | traces | state |
| -- | -------- | ------ | ----- |
| contract:A1 | PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract) | PurchaseService.products | PENDING |
| contract:A2 | PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract) | PurchaseService.purchase | PENDING |
| contract:A3 | PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract) | PurchaseService.restore | PENDING |
| contract:A4 | PurchaseService.finish(String) -> void (usecase contract) | PurchaseService.finish | PENDING |
| contract:A5 | PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract) | PurchasePort.products | PENDING |
| contract:A6 | PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract) | PurchasePort.purchase | PENDING |
| contract:A7 | PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract) | PurchasePort.restore | PENDING |
| contract:A8 | PurchasePort.finish(String) -> void (usecase contract) | PurchasePort.finish | PENDING |
| contract:A9 | StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract) | StoreApiPurchasePort.products | PENDING |
| contract:A10 | StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract) | StoreApiPurchasePort.purchase | PENDING |
| contract:A11 | StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract) | StoreApiPurchasePort.restore | PENDING |
| contract:A12 | StoreApiPurchasePort.finish(String) -> void (usecase contract) | StoreApiPurchasePort.finish | PENDING |
| contract:A13 | PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract) | PurchaseSubscriptionStore.fetchProducts | PENDING |
| contract:A14 | PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract) | PurchaseSubscriptionStore.purchase | PENDING |
| contract:A15 | PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract) | PurchaseSubscriptionStore.restore | PENDING |
| contract:A16 | PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract) | PurchaseSubscriptionStore.finishPurchase | PENDING |
| contract:A17 | PurchaseException.code() -> String (usecase contract) | PurchaseException.code | PENDING |
| contract:A18 | CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract) | CompositionRoot.registerPurchaseDependencies | PENDING |
| contract:A19 | StoreApi.isAvailable() -> bool (interface method contract) | StoreApi.isAvailable | PENDING |
| contract:A20 | StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract) | StoreApi.queryProducts | PENDING |
| contract:A21 | StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract) | StoreApi.purchase | PENDING |
| contract:A22 | StoreApi.restore() -> List<StoreTransaction> (interface method contract) | StoreApi.restore | PENDING |
| contract:A23 | StoreApi.complete(String) -> void (interface method contract) | StoreApi.complete | PENDING |
| contract:A24 | RecordingStoreApi.isAvailable() -> bool (interface method contract) | RecordingStoreApi.isAvailable | PENDING |
| contract:A25 | RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract) | RecordingStoreApi.queryProducts | PENDING |
| contract:A26 | RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract) | RecordingStoreApi.purchase | PENDING |
| contract:A27 | RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract) | RecordingStoreApi.restore | PENDING |
| contract:A28 | RecordingStoreApi.complete(String) -> void (interface method contract) | RecordingStoreApi.complete | PENDING |

## Key entities

| entity | fields |
| ------ | ------ |
| CatalogProduct |  |

## Layer contracts

### Domain

- `PurchaseService`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `PurchasePort`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `StoreApiPurchasePort`: `products(List<String>) -> List<CatalogProduct>`, `purchase(PurchaseIntent) -> PurchaseOutcome`, `restore() -> List<PurchaseOutcome>`, `finish(String) -> void`
- `PurchaseSubscriptionStore`: `fetchProducts(List<String>) -> List<Product>`, `purchase(PurchaseRequest) -> StorePurchase`, `restore() -> List<StorePurchase>`, `finishPurchase(String) -> void`
- `PurchaseException`: `code() -> String`
- `CompositionRoot`: `registerPurchaseDependencies(GetIt) -> void`
### Data

- `StoreApi`: `isAvailable() -> bool`, `queryProducts(Set<String>) -> List<StoreProduct>`, `purchase(StorePurchaseRequest) -> StoreTransaction`, `restore() -> List<StoreTransaction>`, `complete(String) -> void`
- `RecordingStoreApi`: `isAvailable() -> bool`, `queryProducts(Set<String>) -> List<StoreProduct>`, `purchase(StorePurchaseRequest) -> StoreTransaction`, `restore() -> List<StoreTransaction>`, `complete(String) -> void`

## Routing provenance

Per-behavior routing decisions (issue #951): what each decision consulted — a declared marker/contract row, or the labeled legacy fallback to migrate.

route: A11 -> acceptance lane [declared: type marker, spec line 151]
route: U1 -> unit lane (entity pipeline: CatalogProduct) [declared: contract row: PurchaseService, spec line 243]
route: U2 -> unit lane (entity pipeline: CatalogProduct) [declared: contract row: PurchaseService, spec line 243]
route: U3 -> refused [danglingReference: behavior "U3" traces to domain row "PurchaseService" whose declared return type "PurchaseOutcome" names the entity "PurchaseOutcome", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U4 -> refused [danglingReference: behavior "U4" traces to domain row "PurchaseService" whose declared return type "PurchaseOutcome" names the entity "PurchaseOutcome", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U5 -> refused [danglingReference: behavior "U5" traces to domain row "PurchaseService" whose declared return type "List<PurchaseOutcome>" names the entity "PurchaseOutcome", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U6 -> unit lane [declared: contract row: PurchaseService, spec line 243]
route: U7 -> refused [danglingReference: behavior "U7" traces to domain row "StoreApiPurchasePort" whose declared return type "PurchaseOutcome" names the entity "PurchaseOutcome", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U8 -> refused [danglingReference: behavior "U8" traces to domain row "PurchaseSubscriptionStore" whose declared return type "List<Product>" names the entity "Product", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U9 -> refused [danglingReference: behavior "U9" traces to domain row "PurchaseSubscriptionStore" whose declared return type "StorePurchase" names the entity "StorePurchase", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U10 -> refused [danglingReference: behavior "U10" traces to domain row "PurchaseSubscriptionStore" whose declared return type "List<StorePurchase>" names the entity "StorePurchase", which is no declared Key Entities row — surface: entityPipeline (dropped: no entity name).]
route: U11 -> unit lane [declared: contract row: PurchaseSubscriptionStore, spec line 246]
route: U12 -> unit lane [declared: contract row: PurchaseException, spec line 247]
route: U13 -> unit lane [declared: contract row: CompositionRoot, spec line 248]
route: contract:A1 -> contract lane [declared: PurchaseService]
route: contract:A2 -> contract lane [declared: PurchaseService]
route: contract:A3 -> contract lane [declared: PurchaseService]
route: contract:A4 -> contract lane [declared: PurchaseService]
route: contract:A5 -> contract lane [declared: PurchasePort]
route: contract:A6 -> contract lane [declared: PurchasePort]
route: contract:A7 -> contract lane [declared: PurchasePort]
route: contract:A8 -> contract lane [declared: PurchasePort]
route: contract:A9 -> contract lane [declared: StoreApiPurchasePort]
route: contract:A10 -> contract lane [declared: StoreApiPurchasePort]
route: contract:A11 -> contract lane [declared: StoreApiPurchasePort]
route: contract:A12 -> contract lane [declared: StoreApiPurchasePort]
route: contract:A13 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A14 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A15 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A16 -> contract lane [declared: PurchaseSubscriptionStore]
route: contract:A17 -> contract lane [declared: PurchaseException]
route: contract:A18 -> contract lane [declared: CompositionRoot]
route: contract:A19 -> contract lane [declared: StoreApi]
route: contract:A20 -> contract lane [declared: StoreApi]
route: contract:A21 -> contract lane [declared: StoreApi]
route: contract:A22 -> contract lane [declared: StoreApi]
route: contract:A23 -> contract lane [declared: StoreApi]
route: contract:A24 -> contract lane [declared: RecordingStoreApi]
route: contract:A25 -> contract lane [declared: RecordingStoreApi]
route: contract:A26 -> contract lane [declared: RecordingStoreApi]
route: contract:A27 -> contract lane [declared: RecordingStoreApi]
route: contract:A28 -> contract lane [declared: RecordingStoreApi]

