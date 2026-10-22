# TDD Verification — feature `001-purchase-store`

Generated fresh by `zfa tdd verify --feature 001-purchase-store`.

## Gate

- gate: `not_assessed`
- not_assessed_reason: mutation config error: MutationConfigError: mutation_test exited with code -15 and produced no report. Stderr: 

## Mutation buckets (FR-014)

- killed: 0
- survived: 0
- timed_out: 0

## Behavior scope (FR-018)

- `U1` — traces: `FR-001, PurchaseService.products`
- `A11` — traces: `AC-11`
- `U2` — traces: `FR-002, PurchaseService.products`
- `U3` — traces: `FR-003, PurchaseService.purchase`
- `U4` — traces: `FR-004, PurchaseService.purchase`
- `U5` — traces: `FR-005, PurchaseService.restore`
- `U6` — traces: `FR-006, PurchaseService.finish`
- `U7` — traces: `FR-007, StoreApiPurchasePort.purchase`
- `U8` — traces: `FR-008, PurchaseSubscriptionStore.fetchProducts`
- `U9` — traces: `FR-009, PurchaseSubscriptionStore.purchase`
- `U10` — traces: `FR-010, PurchaseSubscriptionStore.restore`
- `U11` — traces: `FR-011, PurchaseSubscriptionStore.finishPurchase`
- `U12` — traces: `FR-012, PurchaseException.code`
- `U13` — traces: `FR-013, CompositionRoot.registerPurchaseDependencies`
- `contract:A1` — traces: `PurchaseService.products`
- `contract:A2` — traces: `PurchaseService.purchase`
- `contract:A3` — traces: `PurchaseService.restore`
- `contract:A4` — traces: `PurchaseService.finish`
- `contract:A5` — traces: `PurchasePort.products`
- `contract:A6` — traces: `PurchasePort.purchase`
- `contract:A7` — traces: `PurchasePort.restore`
- `contract:A8` — traces: `PurchasePort.finish`
- `contract:A9` — traces: `StoreApiPurchasePort.products`
- `contract:A10` — traces: `StoreApiPurchasePort.purchase`
- `contract:A11` — traces: `StoreApiPurchasePort.restore`
- `contract:A12` — traces: `StoreApiPurchasePort.finish`
- `contract:A13` — traces: `PurchaseSubscriptionStore.fetchProducts`
- `contract:A14` — traces: `PurchaseSubscriptionStore.purchase`
- `contract:A15` — traces: `PurchaseSubscriptionStore.restore`
- `contract:A16` — traces: `PurchaseSubscriptionStore.finishPurchase`
- `contract:A17` — traces: `PurchaseException.code`
- `contract:A18` — traces: `CompositionRoot.registerPurchaseDependencies`
- `contract:A19` — traces: `StoreApi.isAvailable`
- `contract:A20` — traces: `StoreApi.queryProducts`
- `contract:A21` — traces: `StoreApi.purchase`
- `contract:A22` — traces: `StoreApi.restore`
- `contract:A23` — traces: `StoreApi.complete`
- `contract:A24` — traces: `RecordingStoreApi.isAvailable`
- `contract:A25` — traces: `RecordingStoreApi.queryProducts`
- `contract:A26` — traces: `RecordingStoreApi.purchase`
- `contract:A27` — traces: `RecordingStoreApi.restore`
- `contract:A28` — traces: `RecordingStoreApi.complete`

## Behavior kinds (issue #1376)

- presence: 0
- absence: 0
- route-outcome: 0
- enabled-state: 0
- sequence: 0

- `U1` — not traced
- `A11` — not traced
- `U2` — not traced
- `U3` — not traced
- `U4` — not traced
- `U5` — not traced
- `U6` — not traced
- `U7` — not traced
- `U8` — not traced
- `U9` — not traced
- `U10` — not traced
- `U11` — not traced
- `U12` — not traced
- `U13` — not traced
- `contract:A1` — not traced
- `contract:A2` — not traced
- `contract:A3` — not traced
- `contract:A4` — not traced
- `contract:A5` — not traced
- `contract:A6` — not traced
- `contract:A7` — not traced
- `contract:A8` — not traced
- `contract:A9` — not traced
- `contract:A10` — not traced
- `contract:A11` — not traced
- `contract:A12` — not traced
- `contract:A13` — not traced
- `contract:A14` — not traced
- `contract:A15` — not traced
- `contract:A16` — not traced
- `contract:A17` — not traced
- `contract:A18` — not traced
- `contract:A19` — not traced
- `contract:A20` — not traced
- `contract:A21` — not traced
- `contract:A22` — not traced
- `contract:A23` — not traced
- `contract:A24` — not traced
- `contract:A25` — not traced
- `contract:A26` — not traced
- `contract:A27` — not traced
- `contract:A28` — not traced

## Restoration (FR-021)

- restoration_verified: true
- restoration_scope_count: 42
- restoration_scope (subjects only, never tests):
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/a11_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a10_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a11_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a12_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a13_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a14_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a15_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a16_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a17_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a18_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a19_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a1_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a20_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a21_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a22_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a23_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a24_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a25_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a26_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a27_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a28_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a2_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a3_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a4_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a5_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a6_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a7_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a8_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a9_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u10_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u11_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u12_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u13_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u1_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u2_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u3_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u4_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u5_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u6_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u7_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u8_subject.dart`
  - `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u9_subject.dart`

## Repro diagnostics (FR-020, non-sensitive)

- runner_command: `dart run mutation_test`
- preflight_scope_ran (bug #924, per-behavior):
  - `test/tdd/001-purchase-store/a11_test.dart`
  - `test/tdd/001-purchase-store/contract_a10_test.dart`
  - `test/tdd/001-purchase-store/contract_a11_test.dart`
  - `test/tdd/001-purchase-store/contract_a12_test.dart`
  - `test/tdd/001-purchase-store/contract_a13_test.dart`
  - `test/tdd/001-purchase-store/contract_a14_test.dart`
  - `test/tdd/001-purchase-store/contract_a15_test.dart`
  - `test/tdd/001-purchase-store/contract_a16_test.dart`
  - `test/tdd/001-purchase-store/contract_a17_test.dart`
  - `test/tdd/001-purchase-store/contract_a18_test.dart`
  - `test/tdd/001-purchase-store/contract_a19_test.dart`
  - `test/tdd/001-purchase-store/contract_a1_test.dart`
  - `test/tdd/001-purchase-store/contract_a20_test.dart`
  - `test/tdd/001-purchase-store/contract_a21_test.dart`
  - `test/tdd/001-purchase-store/contract_a22_test.dart`
  - `test/tdd/001-purchase-store/contract_a23_test.dart`
  - `test/tdd/001-purchase-store/contract_a24_test.dart`
  - `test/tdd/001-purchase-store/contract_a25_test.dart`
  - `test/tdd/001-purchase-store/contract_a26_test.dart`
  - `test/tdd/001-purchase-store/contract_a27_test.dart`
  - `test/tdd/001-purchase-store/contract_a28_test.dart`
  - `test/tdd/001-purchase-store/contract_a2_test.dart`
  - `test/tdd/001-purchase-store/contract_a3_test.dart`
  - `test/tdd/001-purchase-store/contract_a4_test.dart`
  - `test/tdd/001-purchase-store/contract_a5_test.dart`
  - `test/tdd/001-purchase-store/contract_a6_test.dart`
  - `test/tdd/001-purchase-store/contract_a7_test.dart`
  - `test/tdd/001-purchase-store/contract_a8_test.dart`
  - `test/tdd/001-purchase-store/contract_a9_test.dart`
  - `test/tdd/001-purchase-store/u10_test.dart`
  - `test/tdd/001-purchase-store/u11_test.dart`
  - `test/tdd/001-purchase-store/u12_test.dart`
  - `test/tdd/001-purchase-store/u13_test.dart`
  - `test/tdd/001-purchase-store/u1_test.dart`
  - `test/tdd/001-purchase-store/u2_test.dart`
  - `test/tdd/001-purchase-store/u3_test.dart`
  - `test/tdd/001-purchase-store/u4_test.dart`
  - `test/tdd/001-purchase-store/u5_test.dart`
  - `test/tdd/001-purchase-store/u6_test.dart`
  - `test/tdd/001-purchase-store/u7_test.dart`
  - `test/tdd/001-purchase-store/u8_test.dart`
  - `test/tdd/001-purchase-store/u9_test.dart`

## Mutation run

- mutation_was_run: false

## Evidence binding (bug #837)

- spec_hash: 39fed5d09885f71145ffa36f28148feb27d444d36d3cf5043de88e77faf0065f
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/a11_subject.dart` 07b505b69a0bdfc55d87a384a8610c381b7644f27962e353f56d18feb4ed37a2
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a10_subject.dart` 59f6c7b9fb05bdc3f4359d2c549dd37c0bafab0ca0cd204ee639eeb49fd12b0a
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a11_subject.dart` 76d831ae26c69865b0f540f9a603470b65dd70c15c30028514063d1e16cd5422
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a12_subject.dart` d42fbf6500b5c3987cbaabca41590d0e969ec24b19464e856788385443517fbe
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a13_subject.dart` 29ce7d372026bf0a30734ec050bd123db3e657f5cb392ef3f76ff077b9dee63a
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a14_subject.dart` 8648d2c66ebe3a27f8d1591fdd4cc099b7274c9396583358e29a1e3ee9f11c0b
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a15_subject.dart` a396cb34297d4ea0f156471683ddbbc7b24ee212983430cca674e9fddd50d765
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a16_subject.dart` 9996fdc9229e343dbfd201b014cc732d9cbe94d147e3b333a7f9cbd1aae0c9e1
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a17_subject.dart` 33534703f81b599548ac66b0bb17a6e217233861e98eb95bcc837daaa09e46f2
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a18_subject.dart` fd3ddd65425d78bbf532630cd4d226f439cc7300a43fab44d38eff5025a2546a
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a19_subject.dart` 0093d8c8046545712913560aefa49cee1ff3cb5504465a0b0f8cdd608f3fb447
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a1_subject.dart` d2fa6cb6e35371d2e586fa280a0f97c49598d6c2e62739f8a61b5c6ee2da8523
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a20_subject.dart` 83878d9f685d85900147d5e7edbeff92062a40c80c2b1779fc33c300946a385f
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a21_subject.dart` 1b56df90e1e96829ea74e162126d47297957662000a77e785f9d28d2822f953f
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a22_subject.dart` a5f838f0fbbf46afb755bd625064c37341e5c6bbf3124d4416ac539006370de1
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a23_subject.dart` 88eb8d79d348da261ea2fe649ba8dbe922703523102aaf7f65c6fd65d9e11e50
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a24_subject.dart` 82ff0972e6a5712c58ef5d64a8d7a2a2167385174ba70560b434b0ad15828616
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a25_subject.dart` 31b2ad67ebc5a69c92f0977ebb394f9a37619de38807ed9517b99017b20a782e
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a26_subject.dart` e91160e3c95bac1f0af5a8e94f38834e92922539a54026213723e3ccee8a477a
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a27_subject.dart` f76bb682db276b842c278406f8ce9f9ea081657cc95842d1d5a048d58f5eae0d
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a28_subject.dart` adae056c53369bf07f60f8e775d0260851ae5d196b5f146525f8a0ff8d32c283
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a2_subject.dart` 539f2c52eee52d98eeee4139725c99909cf17b042b71d6d994fb338b943d2b7f
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a3_subject.dart` 02f5e343ded5edfafc34d23f2bdad7a8788e1605cce9c6c3569095db1c4ca595
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a4_subject.dart` 399b0db1d6a2281fc354662554e24bef589e53be5e66135d3014c3d38361ec45
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a5_subject.dart` 6f1056e13322b6943baef50c271dedc872ca82b5a5baa0e888d6e89c52fb8273
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a6_subject.dart` 4c464073479e64b3903da3f9d79daf3c5274f72facd0be2423ad186689ed6dab
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a7_subject.dart` dd4ddb5add80196564a2195cff8afe0e0f09aee89c758ba881c2872424f6bd5b
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a8_subject.dart` 4f166d1f6646e1e86d80c90f5d434994c58543e03fc135c98e34d7d228252ab8
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/contract_a9_subject.dart` 9c75c7bbcf744492e5f2dc8fbc88b4cd61a94b9792d10780326b4860e73357ce
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u10_subject.dart` da5ff88d20c7237a1e4081098aea9df7bd64b2980fa86a6fb615c852f73f8c8d
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u11_subject.dart` 27b40a968220e5b703c329503c1c8789f6bce811b6397472fcb34011afd2a68b
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u12_subject.dart` c1cef32102e3ccbdc9fce30cbc32e665f7874188561cd08d55516c60cbf4b909
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u13_subject.dart` 2596791d1b3efed5478989487edc47201af5ae4a3385e2bbb7f16186622094f8
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u1_subject.dart` 0ffe8a4641578300bfbbc5e57d3e435655295077e2ced2ee381e18a2a1175a5a
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u2_subject.dart` f66fe6f6f4294037a68a0dfb751d96e716ffe6006db8cfb2ae07f8c9856c4efb
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u3_subject.dart` b586572608d160c97d0209b87dbbee028eb6a38cb62a3b3dca71d6a6608f6ea3
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u4_subject.dart` bee2ba36fbc914bd6e04c720bbadf975748e31304ce8655edf55b414c6862e15
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u5_subject.dart` aecc409b08d23143064bc4bbdb41aacf6dd0795e3df008df9c787ff38e1d76fd
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u6_subject.dart` b7331c031785c139a4d8acd680c0fa2c3d018ad399b860180b4b7a71e96621d3
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u7_subject.dart` 1da38aa6bc84518ce9d200b336a162e301e262993e94d2a5d9544cd20a643a5f
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u8_subject.dart` 6a58bf2d94ab5b2bf95ea107ba491f3ba117eab8f66fa75ea93cbdee4d80b69d
- subject_hash: `/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u9_subject.dart` 6eedfa6ace4e9eb9b50b7c6a032038ba31157c2a86d1a80ebfaf71ead9b4f03d
