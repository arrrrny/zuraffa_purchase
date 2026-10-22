# Cycle Log

Append only. Newest last. Every entry's `red` block is the evidence that the test existed and failed before the implementation.

## Cycle: U1 (red)

- behavior: U1
- kind: red
- classification: assertionFailure
- subject-hash: eaef97e694784de7be7c0229e1beb90588bed6657d0691a2ed5cf4c192bc7a71
- criterion: FR-001, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart --plain-name "`PurchaseService.products(List<String> productIds)` MUST return the"`
- exit: 1
- at: 2026-10-21T21:21:05.464175Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:09 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:10 +0 -1: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                            
00:10 +0 -1: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the [E]                                                                        
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u1 (declared param 0: List<String>)>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u1_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart -p vm --plain-name 'U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the'

00:10 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 5968129e132b775aba2781dd0a231e202f83086667438909b91116280da30c47

## Cycle: U1 (red)

- behavior: U1
- kind: red
- classification: assertionFailure
- subject-hash: 2905082e29ba6fa74ef745a6229832aade9cae9c3227f9c644000df944009663
- criterion: FR-001, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart --plain-name "`PurchaseService.products(List<String> productIds)` MUST return the"`
- exit: 1
- at: 2026-10-21T21:30:17.487158Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:39 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:40 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:40 +0 -1: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the [E]                                                                        
  Expected: ['boost.one', 'pro.monthly']
    Actual: ['pro.monthly', 'boost.one']
     Which: at location [0] is 'pro.monthly' instead of 'boost.one'
  
  package:matcher                                                       expect
  package:zuraffa_purchase/tdd/001-purchase-store/u1_subject.dart 40:3  subject_u1
  ===== asynchronous gap ===========================
  test/tdd/001-purchase-store/u1_test.dart 35:7                         main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart -p vm --plain-name 'U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the'

00:41 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: 5968129e132b775aba2781dd0a231e202f83086667438909b91116280da30c47
- hash: ee57171768f89907923742a9ba2923d99b3f7ed4caec8562ef1371321cd5dfbd

## Cycle: U1 (green)

- behavior: U1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 0ffe8a4641578300bfbbc5e57d3e435655295077e2ced2ee381e18a2a1175a5a
- criterion: FR-001, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart --plain-name "`PurchaseService.products(List<String> productIds)` MUST return the"`
- exit: 0
- at: 2026-10-21T21:31:25.514108Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:32 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:33 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:33 +1: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:33 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: ee57171768f89907923742a9ba2923d99b3f7ed4caec8562ef1371321cd5dfbd
- hash: 66b71dbc6c66728d1dafd4cfa9de4b2a55f3c6faa961e17da0b661318ec3c9fe

## Cycle: contract:A18 (green)

- behavior: contract:A18
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A18:hand attestation header present
- subject-hash: fd3ddd65425d78bbf532630cd4d226f439cc7300a43fab44d38eff5025a2546a
- criterion: CompositionRoot.registerPurchaseDependencies
- test: test/tdd/001-purchase-store/contract_a18_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart --plain-name "CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T21:49:58.459404Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:14 +0: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:14 +1: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 387d1f7455e85a502a16da9d3b15c43ebb18d047616d6ce06531cd051c00a938

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A1:hand attestation header present
- subject-hash: 8c385ccbad89347344eecc12de4098d2adae45fdf42405f7bb9350db167c949e
- criterion: PurchaseService.products
- test: test/tdd/001-purchase-store/contract_a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart --plain-name "PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-21T21:52:42.096376Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:17 +0: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
00:17 +1: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 694bbfb70d9dea1198dc2803467a9012d1b97339fec9e70809dafacc00d2f308

## Cycle: A11 (red)

- behavior: A11
- kind: red
- classification: assertionFailure
- evidence: A11 (AC-11) A11 — a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.
- subject-hash: f333af43c29c4f303486b5c724200eaa0977efcd99ee5e2181722c3edba3fa99
- criterion: AC-11
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart --plain-name "a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`."`
- exit: 1
- at: 2026-10-21T21:52:42.606760Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:14 +0: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:15 +0: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:15 +0 -1: A11 (AC-11) A11 — a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`. [E]
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a11 not implemented>
  
  package:matcher                                 expect
  test/tdd/001-purchase-store/a11_test.dart 37:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart -p vm --plain-name 'A11 (AC-11) A11 — a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.'

00:15 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: f82cb56e2c9222132785623798ca4a6879d3754a4d943b88d99896f5906f5142

## Cycle: U2 (red)

- behavior: U2
- kind: red
- classification: assertionFailure
- subject-hash: 08303325643045c6732c556d5ad10c45d1d5816d65a8eaec3815aa61655c6264
- criterion: FR-002, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart --plain-name "A store that reports itself unavailable MUST surface as a typed"`
- exit: 1
- at: 2026-10-21T21:52:54.803881Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:04 +0: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed                                                                                   
00:04 +0 -1: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed [E]                                                                            
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u2 (declared param 0: List<String>)>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u2_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart -p vm --plain-name 'U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: c4a5fc615dea4441e500e4b82cd42fbe0d7aa9f857853f9df6198d173e29ee1a

## Cycle: U3 (red)

- behavior: U3
- kind: red
- classification: assertionFailure
- subject-hash: 0cb0115049b8d8f2ad54e94eed27bb05bc8ccb546bd7af5bf8ef340646051f45
- criterion: FR-003, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart --plain-name "`PurchaseService.purchase(PurchaseIntent request)` MUST map a"`
- exit: 1
- at: 2026-10-21T21:53:07.561526Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:05 +0: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:05 +0 -1: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a [E]                                                                              
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u3 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u3_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart -p vm --plain-name 'U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a'

00:05 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 8d81d8d2527f6dd86a7f497623b6acf446c937d82c80ab4cd0eeaeb2ce3f0f2f

## Cycle: U4 (red)

- behavior: U4
- kind: red
- classification: assertionFailure
- subject-hash: 921e7b71ef240c17d71e664aa32bf8ea515b25641aade324cb138726aadb49ab
- criterion: FR-004, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart --plain-name "A cancelled store transaction MUST surface as a typed recoverable"`
- exit: 1
- at: 2026-10-21T21:53:17.678888Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:03 +0: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                                 
00:04 +0 -1: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                              
00:04 +0 -1: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable [E]                                                                          
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u4 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u4_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart -p vm --plain-name 'U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 5362435cbff89a1407659af8441482e357264549269364125e07a0993b167989

## Cycle: U5 (red)

- behavior: U5
- kind: red
- classification: assertionFailure
- subject-hash: 72b6fee84936bc96b6d0917957b73c6772ccf69d0825434f3ad7686e860da8cf
- criterion: FR-005, PurchaseService.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart --plain-name "`PurchaseService.restore()` MUST return every transaction the store"`
- exit: 1
- at: 2026-10-21T21:53:28.005422Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:04 +0: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store                                                                                
00:04 +0 -1: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store [E]                                                                         
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u5 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u5_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart -p vm --plain-name 'U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 7e5390e1462b279289bedf762d25531097b8efafc81ad068edc0b10a3371e264

## Cycle: U6 (red)

- behavior: U6
- kind: red
- classification: assertionFailure
- subject-hash: 3309ceaba678e2651f712d977d34495b18ae75090845b1783a4f4b8c5bb0ed1e
- criterion: FR-006, PurchaseService.finish
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart --plain-name "`PurchaseService.finish(String transactionId)` MUST ask the store to"`
- exit: 1
- at: 2026-10-21T21:53:39.414886Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:04 +0: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                                
00:05 +0 -1: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                             
00:05 +0 -1: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to [E]                                                                         
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u6 not implemented: finish(String) -> void>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u6_test.dart 35:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart -p vm --plain-name 'U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to'

00:05 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: bb403a120a30f891fdce88aae1ada893161b67ee0a777002b6cf9d51a4c8095f

## Cycle: U7 (red)

- behavior: U7
- kind: red
- classification: assertionFailure
- subject-hash: 567e8c6dcd0f9c05b3272fb5cf03557ecd764c3be3279a72d16135061c61c7ad
- criterion: FR-007, StoreApiPurchasePort.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart --plain-name "The store status taxonomy MUST map onto `PurchaseStatus` as"`
- exit: 1
- at: 2026-10-21T21:53:51.385870Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:03 +0: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as                                                                                  
00:03 +0 -1: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as [E]                                                                           
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u7 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u7_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart -p vm --plain-name 'U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 0d15b30e1525143803976819209d9651ac211bd785729b67c8dd29c9b0d4f16e

## Cycle: U8 (red)

- behavior: U8
- kind: red
- classification: assertionFailure
- subject-hash: d22903dc73592530701cedb727084b3d1bffb1f5431f9feab9066e7356de1588
- criterion: FR-008, PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart --plain-name "`PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST"`
- exit: 1
- at: 2026-10-21T21:54:00.817668Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:03 +0: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:04 +0: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:04 +0 -1: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST [E]                                                            
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u8 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u8_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart -p vm --plain-name 'U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 912ec89f4d632af7a8bcacf2e65be1c00241b992a8ed27cb74c23879a5a7f0a0

## Cycle: U9 (red)

- behavior: U9
- kind: red
- classification: assertionFailure
- subject-hash: 900980c44a9bc6ddd44bafa36e7dff2056fde4ea01ca9bf40b7ef2440ea3e813
- criterion: FR-009, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart --plain-name "`PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST"`
- exit: 1
- at: 2026-10-21T21:54:22.842362Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:15 +0: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:16 +0: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:16 +0 -1: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST [E]                                                               
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u9 not implemented>
  
  package:matcher                                expect
  test/tdd/001-purchase-store/u9_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart -p vm --plain-name 'U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST'

00:16 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 5c0da232504259bbb13667c82d9dc90f36b8c99b5f217fecc1ba59fb99067b78

## Cycle: U10 (red)

- behavior: U10
- kind: red
- classification: assertionFailure
- subject-hash: ecbb3c595ce17bcd4dc03c8550db8aeee239b87f2a86e74d2db4f03f004ab4e6
- criterion: FR-010, PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST return one store purchase"`
- exit: 1
- at: 2026-10-21T21:54:35.018908Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:04 +0: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:05 +0 -1: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                
00:05 +0 -1: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase [E]                                                            
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u10 not implemented>
  
  package:matcher                                 expect
  test/tdd/001-purchase-store/u10_test.dart 29:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart -p vm --plain-name 'U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase'

00:05 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 956af9f5fdd260da669f44f8d12968cd6fd719daa3607584bd18523763bdab87

## Cycle: U11 (red)

- behavior: U11
- kind: red
- classification: assertionFailure
- subject-hash: e8191c9c40d746f472e9541a17218d1ddfb42e635d96185ac7afdacc06b2f1b6
- criterion: FR-011, PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart --plain-name "`PurchaseSubscriptionStore.finishPurchase(String transactionId)`"`
- exit: 1
- at: 2026-10-21T21:54:46.760838Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:04 +0: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                
00:04 +0 -1: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)` [E]                                                         
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u11 not implemented: finishPurchase(String) -> void>
  
  package:matcher                                 expect
  test/tdd/001-purchase-store/u11_test.dart 35:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart -p vm --plain-name 'U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`'

00:05 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: a8c355e3b2fab9914869e22399e86185a60e6007ca8c6de60e687b6034b0216c

## Cycle: U12 (red)

- behavior: U12
- kind: red
- classification: assertionFailure
- subject-hash: 277d59937b127fe4f7c56401c1ac7f8682e811cc3111bfd4a394080f473e9261
- criterion: FR-012, PurchaseException.code
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart --plain-name "Store failures MUST surface as the typed `PurchaseException`"`
- exit: 1
- at: 2026-10-21T21:54:58.659142Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:03 +0: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`                                                                                      
00:03 +0 -1: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException` [E]                                                                               
  Expected: <Instance of 'String'>
    Actual: UnimplementedError:<UnimplementedError: subject_u12 not implemented: code() -> String>
     Which: is not an instance of 'String'
  
  package:matcher                                 expect
  test/tdd/001-purchase-store/u12_test.dart 35:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart -p vm --plain-name 'U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 37a78cd11086f6e09c7a5dd421f9ac87ae268c3be9f3c8a0d5d85317dffda521

## Cycle: U13 (red)

- behavior: U13
- kind: red
- classification: assertionFailure
- subject-hash: e750d6aaf78c20e1ac56b1958c224b455fc5e1a8460902852951b88937bb61c6
- criterion: FR-013, CompositionRoot.registerPurchaseDependencies
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart --plain-name "The composition root `registerPurchaseDependencies` MUST register the"`
- exit: 1
- at: 2026-10-21T21:55:09.988526Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:04 +0: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the                                                       
00:04 +0 -1: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the [E]                                                
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u13 (declared param 0: GetIt)>
  
  package:matcher                                 expect
  test/tdd/001-purchase-store/u13_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart -p vm --plain-name 'U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the'

00:04 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: 6bec1a1f870e8bdbe283c7af3df94faca0f6bc386033c09a76614cae1fac9271

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A3:hand attestation header present
- subject-hash: 626f73a47d3e02892bc2b90da39edab24fc79114065f806adacad5e2624f78d7
- criterion: PurchaseService.restore
- test: test/tdd/001-purchase-store/contract_a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart --plain-name "PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-21T21:56:18.825821Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:14 +0: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:14 +1: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 44cb141cd1b6fb0c9c9ea280a66aeea76546df456eb8cbb14091081593383b92

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A4:hand attestation header present
- subject-hash: 3e126d4eb4e03a17266b9b489e648f466704c05cecccc550f3762095b9daaeef
- criterion: PurchaseService.finish
- test: test/tdd/001-purchase-store/contract_a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart --plain-name "PurchaseService.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T21:57:18.391648Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:13 +0: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:14 +0: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:14 +1: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 730b618d5a23683f47575eb938baf88be53279ba975a632a5c39d27673f036e6

## Cycle: contract:A5 (green)

- behavior: contract:A5
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A5:hand attestation header present
- subject-hash: 4f5b8df4e587c92b3de43c62dafe8b00d979a275a33554f98d0172f8e434d101
- criterion: PurchasePort.products
- test: test/tdd/001-purchase-store/contract_a5_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart --plain-name "PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-21T21:59:48.126454Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
01:03 +0: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
01:03 +1: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
01:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 172dca1dab52d0ee31cf72a508a733b3a404506abe07d675f4c33404507773b8

## Cycle: U2 (green)

- behavior: U2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: f66fe6f6f4294037a68a0dfb751d96e716ffe6006db8cfb2ae07f8c9856c4efb
- criterion: FR-002, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart --plain-name "A store that reports itself unavailable MUST surface as a typed"`
- exit: 0
- at: 2026-10-21T22:03:12.192436Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:18 +0: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed                                                                                   
00:18 +1: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed                                                                                   
00:18 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: c4a5fc615dea4441e500e4b82cd42fbe0d7aa9f857853f9df6198d173e29ee1a
- hash: 7be263756c4afbeb2ae63f23e4467ffb9a8d26af6ad9fde29b6ed5a33366b4df

## Cycle: U3 (green)

- behavior: U3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: b586572608d160c97d0209b87dbbee028eb6a38cb62a3b3dca71d6a6608f6ea3
- criterion: FR-003, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart --plain-name "`PurchaseService.purchase(PurchaseIntent request)` MUST map a"`
- exit: 0
- at: 2026-10-21T22:03:34.069128Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:14 +0: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:15 +0: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:15 +1: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:15 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 8d81d8d2527f6dd86a7f497623b6acf446c937d82c80ab4cd0eeaeb2ce3f0f2f
- hash: b935e4c0ffabfc6a3332e84b57b24b489cdf28f5e6dc3956bf251de60f70488b

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A1:hand attestation header present
- subject-hash: d2fa6cb6e35371d2e586fa280a0f97c49598d6c2e62739f8a61b5c6ee2da8523
- criterion: PurchaseService.products
- test: test/tdd/001-purchase-store/contract_a1_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart --plain-name "PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:03:49.031216Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
01:25 +0: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
01:25 +1: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
01:25 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 694bbfb70d9dea1198dc2803467a9012d1b97339fec9e70809dafacc00d2f308
- hash: edfb1e11f2e4695c9c3aad28320f8bde170ef74db8f2da7b4ce687806ea6f7d9

## Cycle: U4 (green)

- behavior: U4
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: bee2ba36fbc914bd6e04c720bbadf975748e31304ce8655edf55b414c6862e15
- criterion: FR-004, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart --plain-name "A cancelled store transaction MUST surface as a typed recoverable"`
- exit: 0
- at: 2026-10-21T22:03:58.255041Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:17 +0: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                                 
00:17 +1: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                                 
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5362435cbff89a1407659af8441482e357264549269364125e07a0993b167989
- hash: 313e2c418fde4c499585959352beb05b74bb153af90d526653027e5d4722e478

## Cycle: U5 (green)

- behavior: U5
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: aecc409b08d23143064bc4bbdb41aacf6dd0795e3df008df9c787ff38e1d76fd
- criterion: FR-005, PurchaseService.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart --plain-name "`PurchaseService.restore()` MUST return every transaction the store"`
- exit: 0
- at: 2026-10-21T22:04:25.310887Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:17 +0: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store                                                                                
00:17 +1: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store                                                                                
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7e5390e1462b279289bedf762d25531097b8efafc81ad068edc0b10a3371e264
- hash: e85ff8c6764626c8bf1b1c8aec2d289ec5f3432c968c8dd65432ebbd444c4405

## Cycle: contract:A2 (green)

- behavior: contract:A2
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A2:hand attestation header present
- subject-hash: 539f2c52eee52d98eeee4139725c99909cf17b042b71d6d994fb338b943d2b7f
- criterion: PurchaseService.purchase
- test: test/tdd/001-purchase-store/contract_a2_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart --plain-name "PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:04:47.112527Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:20 +0: contract:A2 (PurchaseService.purchase) contract:A2 — PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                          
00:20 +1: contract:A2 (PurchaseService.purchase) contract:A2 — PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                          
00:20 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 09414682384ccde41369f3eb23436098e92f9428faf7401a1b8573d532e803e1

## Cycle: U6 (green)

- behavior: U6
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: b7331c031785c139a4d8acd680c0fa2c3d018ad399b860180b4b7a71e96621d3
- criterion: FR-006, PurchaseService.finish
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart --plain-name "`PurchaseService.finish(String transactionId)` MUST ask the store to"`
- exit: 0
- at: 2026-10-21T22:04:53.130883Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:18 +0: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                                
00:18 +1: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                                
00:18 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: bb403a120a30f891fdce88aae1ada893161b67ee0a777002b6cf9d51a4c8095f
- hash: af1f7767562ed3c5be42cf841d4347eb9182726622d228bfae17a7f90b2f7c08

## Cycle: U7 (green)

- behavior: U7
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 1da38aa6bc84518ce9d200b336a162e301e262993e94d2a5d9544cd20a643a5f
- criterion: FR-007, StoreApiPurchasePort.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart --plain-name "The store status taxonomy MUST map onto `PurchaseStatus` as"`
- exit: 0
- at: 2026-10-21T22:05:18.533491Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:17 +0: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as                                                                                  
00:17 +1: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as                                                                                  
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0d15b30e1525143803976819209d9651ac211bd785729b67c8dd29c9b0d4f16e
- hash: 1cfb023e7570cca91b12aaee09a706eec3273a7668a01b60e2c8ef6cdbf66f55

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A3:hand attestation header present
- subject-hash: 02f5e343ded5edfafc34d23f2bdad7a8788e1605cce9c6c3569095db1c4ca595
- criterion: PurchaseService.restore
- test: test/tdd/001-purchase-store/contract_a3_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart --plain-name "PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:05:37.836184Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:18 +0: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:19 +0: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:19 +1: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 44cb141cd1b6fb0c9c9ea280a66aeea76546df456eb8cbb14091081593383b92
- hash: 69d141d3ecf59eafb511f64324648d54f7920aed6806fa82a30aa87caacde131

## Cycle: U8 (green)

- behavior: U8
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 6a58bf2d94ab5b2bf95ea107ba491f3ba117eab8f66fa75ea93cbdee4d80b69d
- criterion: FR-008, PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart --plain-name "`PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST"`
- exit: 0
- at: 2026-10-21T22:05:45.627381Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:18 +0: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:18 +1: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:18 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 912ec89f4d632af7a8bcacf2e65be1c00241b992a8ed27cb74c23879a5a7f0a0
- hash: f9623b8725364e7d8decb7ee7a337bab358038f1450b3c201cbfd860781c2a2b

## Cycle: U9 (green)

- behavior: U9
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 6eedfa6ace4e9eb9b50b7c6a032038ba31157c2a86d1a80ebfaf71ead9b4f03d
- criterion: FR-009, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart --plain-name "`PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST"`
- exit: 0
- at: 2026-10-21T22:06:13.977012Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:19 +0: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:19 +1: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5c0da232504259bbb13667c82d9dc90f36b8c99b5f217fecc1ba59fb99067b78
- hash: 94ef306f8977a6dfcf77b69a09b604569f016e5577f4328cc2c5740455e9cadd

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A4:hand attestation header present
- subject-hash: 399b0db1d6a2281fc354662554e24bef589e53be5e66135d3014c3d38361ec45
- criterion: PurchaseService.finish
- test: test/tdd/001-purchase-store/contract_a4_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart --plain-name "PurchaseService.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:06:33.376890Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:20 +0: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:20 +1: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:20 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 730b618d5a23683f47575eb938baf88be53279ba975a632a5c39d27673f036e6
- hash: a9314c6fdc96f3da04d8824d6eb898e62d4b187c459cc5187d1e69b65c8c8b00

## Cycle: U10 (green)

- behavior: U10
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: da5ff88d20c7237a1e4081098aea9df7bd64b2980fa86a6fb615c852f73f8c8d
- criterion: FR-010, PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST return one store purchase"`
- exit: 0
- at: 2026-10-21T22:06:42.044792Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:18 +0: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:19 +0: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:19 +1: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 956af9f5fdd260da669f44f8d12968cd6fd719daa3607584bd18523763bdab87
- hash: 5fd5601a810e9499f72ffe2ab65209298f11becb8809ae87a70431ba51041448

## Cycle: U11 (green)

- behavior: U11
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 27b40a968220e5b703c329503c1c8789f6bce811b6397472fcb34011afd2a68b
- criterion: FR-011, PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart --plain-name "`PurchaseSubscriptionStore.finishPurchase(String transactionId)`"`
- exit: 0
- at: 2026-10-21T22:07:04.445504Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:13 +0: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                
00:13 +1: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a8c355e3b2fab9914869e22399e86185a60e6007ca8c6de60e687b6034b0216c
- hash: 0a283e3354e0d9e349a0f6b0a8f322bb2443717f7e9fbafc5260c513af50ffa9

## Cycle: contract:A5 (green)

- behavior: contract:A5
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A5:hand attestation header present
- subject-hash: 6f1056e13322b6943baef50c271dedc872ca82b5a5baa0e888d6e89c52fb8273
- criterion: PurchasePort.products
- test: test/tdd/001-purchase-store/contract_a5_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart --plain-name "PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:07:23.291878Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:19 +0: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
00:19 +1: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
00:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 172dca1dab52d0ee31cf72a508a733b3a404506abe07d675f4c33404507773b8
- hash: 1bf25ba74f8c1ac908f8a3a13ae425663205ae06d1223fdad9726a59627a24f6

## Cycle: U12 (green)

- behavior: U12
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: c1cef32102e3ccbdc9fce30cbc32e665f7874188561cd08d55516c60cbf4b909
- criterion: FR-012, PurchaseException.code
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart --plain-name "Store failures MUST surface as the typed `PurchaseException`"`
- exit: 0
- at: 2026-10-21T22:07:31.131706Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:17 +0: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`                                                                                      
00:17 +1: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`                                                                                      
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 37a78cd11086f6e09c7a5dd421f9ac87ae268c3be9f3c8a0d5d85317dffda521
- hash: 5b70b57598c0062a1dd5343b3dfc25d07d0cf9449e7cef71316b39d0d7051543

## Cycle: U13 (green)

- behavior: U13
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 2596791d1b3efed5478989487edc47201af5ae4a3385e2bbb7f16186622094f8
- criterion: FR-013, CompositionRoot.registerPurchaseDependencies
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart --plain-name "The composition root `registerPurchaseDependencies` MUST register the"`
- exit: 0
- at: 2026-10-21T22:07:57.545308Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:19 +0: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the                                                       
00:19 +1: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the                                                       
00:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6bec1a1f870e8bdbe283c7af3df94faca0f6bc386033c09a76614cae1fac9271
- hash: a56b36fc2284c231191606e0ff4a3bedb4f7badd9a81e92e41fe3997c8c230b0

## Cycle: contract:A6 (green)

- behavior: contract:A6
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A6:hand attestation header present
- subject-hash: 4c464073479e64b3903da3f9d79daf3c5274f72facd0be2423ad186689ed6dab
- criterion: PurchasePort.purchase
- test: test/tdd/001-purchase-store/contract_a6_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart --plain-name "PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:08:15.175529Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:16 +0: contract:A6 (PurchasePort.purchase) contract:A6 — PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                                
00:17 +0: contract:A6 (PurchasePort.purchase) contract:A6 — PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                                
00:17 +1: contract:A6 (PurchasePort.purchase) contract:A6 — PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                                
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 0aca531060eb68d63a4c94d86d7aca12af02570bdb2dc3623640380ea18b96ef

## Cycle: contract:A7 (green)

- behavior: contract:A7
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A7:hand attestation header present
- subject-hash: dd4ddb5add80196564a2195cff8afe0e0f09aee89c758ba881c2872424f6bd5b
- criterion: PurchasePort.restore
- test: test/tdd/001-purchase-store/contract_a7_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart --plain-name "PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:10:05.792596Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
01:16 +0: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
01:17 +0: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
01:17 +1: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
01:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: fc968f725387cac0ec777f99e63fdf42e718b953c67447f66a865ae3283e5858

## Cycle: contract:A8 (green)

- behavior: contract:A8
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A8:hand attestation header present
- subject-hash: 4f166d1f6646e1e86d80c90f5d434994c58543e03fc135c98e34d7d228252ab8
- criterion: PurchasePort.finish
- test: test/tdd/001-purchase-store/contract_a8_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart --plain-name "PurchasePort.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:12:08.847915Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
01:25 +0: contract:A8 (PurchasePort.finish) contract:A8 — PurchasePort.finish(String) -> void (usecase contract)                                                                                       
01:25 +1: contract:A8 (PurchasePort.finish) contract:A8 — PurchasePort.finish(String) -> void (usecase contract)                                                                                       
01:25 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 4dba12956f5a9643f5902fd0552a5672d00b2a6daf2f10cc9959da3ac0901812

## Cycle: contract:A9 (green)

- behavior: contract:A9
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A9:hand attestation header present
- subject-hash: 9c75c7bbcf744492e5f2dc8fbc88b4cd61a94b9792d10780326b4860e73357ce
- criterion: StoreApiPurchasePort.products
- test: test/tdd/001-purchase-store/contract_a9_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart --plain-name "StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:13:42.146136Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
01:03 +0: contract:A9 (StoreApiPurchasePort.products) contract:A9 — StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                             
01:04 +0: contract:A9 (StoreApiPurchasePort.products) contract:A9 — StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                             
01:04 +1: contract:A9 (StoreApiPurchasePort.products) contract:A9 — StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                             
01:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 4d13ddcad6206878ee322df837018f9f7ff8e11782f9637a16b4618b5ccfbe81

## Cycle: contract:A10 (green)

- behavior: contract:A10
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A10:hand attestation header present
- subject-hash: 59f6c7b9fb05bdc3f4359d2c549dd37c0bafab0ca0cd204ee639eeb49fd12b0a
- criterion: StoreApiPurchasePort.purchase
- test: test/tdd/001-purchase-store/contract_a10_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart --plain-name "StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:14:38.091569Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:20 +0: contract:A10 (StoreApiPurchasePort.purchase) contract:A10 — StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                              
00:21 +0: contract:A10 (StoreApiPurchasePort.purchase) contract:A10 — StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                              
00:21 +1: contract:A10 (StoreApiPurchasePort.purchase) contract:A10 — StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                              
00:21 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: f715107a2b6f518987c99573eafdda7b8b4808be2dd1884ac62de4286a769f48

## Cycle: contract:A11 (green)

- behavior: contract:A11
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A11:hand attestation header present
- subject-hash: 76d831ae26c69865b0f540f9a603470b65dd70c15c30028514063d1e16cd5422
- criterion: StoreApiPurchasePort.restore
- test: test/tdd/001-purchase-store/contract_a11_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart --plain-name "StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:16:29.200465Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
01:18 +0: contract:A11 (StoreApiPurchasePort.restore) contract:A11 — StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                        
01:19 +0: contract:A11 (StoreApiPurchasePort.restore) contract:A11 — StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                        
01:19 +1: contract:A11 (StoreApiPurchasePort.restore) contract:A11 — StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                        
01:19 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 3aeb6c45da0eceeac63980224c9b84f210b3a194e4d8e1d1e1d138bc7cf53771

## Cycle: contract:A12 (green)

- behavior: contract:A12
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A12:hand attestation header present
- subject-hash: d42fbf6500b5c3987cbaabca41590d0e969ec24b19464e856788385443517fbe
- criterion: StoreApiPurchasePort.finish
- test: test/tdd/001-purchase-store/contract_a12_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart --plain-name "StoreApiPurchasePort.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:18:05.300772Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
01:06 +0: contract:A12 (StoreApiPurchasePort.finish) contract:A12 — StoreApiPurchasePort.finish(String) -> void (usecase contract)                                                                     
01:06 +1: contract:A12 (StoreApiPurchasePort.finish) contract:A12 — StoreApiPurchasePort.finish(String) -> void (usecase contract)                                                                     
01:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 79de996eebb6964701eb829bf9af20651526d7e3f7ef3aae891e23030f6e3333

## Cycle: contract:A13 (green)

- behavior: contract:A13
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A13:hand attestation header present
- subject-hash: 29ce7d372026bf0a30734ec050bd123db3e657f5cb392ef3f76ff077b9dee63a
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/001-purchase-store/contract_a13_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart --plain-name "PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:19:38.454091Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
01:04 +0: contract:A13 (PurchaseSubscriptionStore.fetchProducts) contract:A13 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                              
01:04 +1: contract:A13 (PurchaseSubscriptionStore.fetchProducts) contract:A13 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                              
01:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 678fbfe734f399156b4413bdf15b812c69d7126b528ee0fdbb78f6f5302e7d06

## Cycle: contract:A14 (green)

- behavior: contract:A14
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A14:hand attestation header present
- subject-hash: 8648d2c66ebe3a27f8d1591fdd4cc099b7274c9396583358e29a1e3ee9f11c0b
- criterion: PurchaseSubscriptionStore.purchase
- test: test/tdd/001-purchase-store/contract_a14_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart --plain-name "PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:20:25.064358Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:16 +0: contract:A14 (PurchaseSubscriptionStore.purchase) contract:A14 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                     
00:16 +1: contract:A14 (PurchaseSubscriptionStore.purchase) contract:A14 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                     
00:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 383a61e798aa2a9404896dc97b0a5f0d2422603ea533fdf69d84cbf95079c63e

## Cycle: contract:A15 (green)

- behavior: contract:A15
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A15:hand attestation header present
- subject-hash: a396cb34297d4ea0f156471683ddbbc7b24ee212983430cca674e9fddd50d765
- criterion: PurchaseSubscriptionStore.restore
- test: test/tdd/001-purchase-store/contract_a15_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart --plain-name "PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:22:02.242822Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
01:07 +0: contract:A15 (PurchaseSubscriptionStore.restore) contract:A15 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                
01:07 +1: contract:A15 (PurchaseSubscriptionStore.restore) contract:A15 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                
01:07 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 26f02c2b0f9abeb6f27153f457b98ebb209de4bb87be562b010e4a9e0f861538

## Cycle: contract:A16 (green)

- behavior: contract:A16
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A16:hand attestation header present
- subject-hash: 9996fdc9229e343dbfd201b014cc732d9cbe94d147e3b333a7f9cbd1aae0c9e1
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/001-purchase-store/contract_a16_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart --plain-name "PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:23:47.734965Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
01:15 +0: contract:A16 (PurchaseSubscriptionStore.finishPurchase) contract:A16 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                           
01:15 +1: contract:A16 (PurchaseSubscriptionStore.finishPurchase) contract:A16 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                           
01:15 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 1924c37c2ef1f7ad767c6813b149e0c59bdab6833c88db498bff3151a73287a0

## Cycle: contract:A17 (green)

- behavior: contract:A17
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A17:hand attestation header present
- subject-hash: 33534703f81b599548ac66b0bb17a6e217233861e98eb95bcc837daaa09e46f2
- criterion: PurchaseException.code
- test: test/tdd/001-purchase-store/contract_a17_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart --plain-name "PurchaseException.code() -> String (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:25:24.942274Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
01:08 +0: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
01:09 +0: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
01:09 +1: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
01:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: cfc6734d8bf5bffd9607648aeb5947387b7e22dfa1eb04380d3c48dd1cc4da6b

## Cycle: contract:A18 (green)

- behavior: contract:A18
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A18:hand attestation header present
- subject-hash: fd3ddd65425d78bbf532630cd4d226f439cc7300a43fab44d38eff5025a2546a
- criterion: CompositionRoot.registerPurchaseDependencies
- test: test/tdd/001-purchase-store/contract_a18_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart --plain-name "CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-21T22:26:02.917793Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:12 +0: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:12 +1: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:12 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 387d1f7455e85a502a16da9d3b15c43ebb18d047616d6ce06531cd051c00a938
- hash: ca71bcc06442861a7d97b555e88af61800842475ec59d1dc87a91414c88f60e0

## Cycle: contract:A20 (green)

- behavior: contract:A20
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A20:hand attestation header present
- subject-hash: 83878d9f685d85900147d5e7edbeff92062a40c80c2b1779fc33c300946a385f
- criterion: StoreApi.queryProducts
- test: test/tdd/001-purchase-store/contract_a20_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart --plain-name "StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:28:48.723351Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
01:08 +0: contract:A20 (StoreApi.queryProducts) contract:A20 — StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                                   
01:08 +1: contract:A20 (StoreApi.queryProducts) contract:A20 — StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                                   
01:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 85a4fe8e799a64a57cc10201596a9f338fd2b1150403c95a289c215a413d80cb

## Cycle: contract:A21 (green)

- behavior: contract:A21
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A21:hand attestation header present
- subject-hash: 1b56df90e1e96829ea74e162126d47297957662000a77e785f9d28d2822f953f
- criterion: StoreApi.purchase
- test: test/tdd/001-purchase-store/contract_a21_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart --plain-name "StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:29:36.639974Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:15 +0: contract:A21 (StoreApi.purchase) contract:A21 — StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                                      
00:16 +0: contract:A21 (StoreApi.purchase) contract:A21 — StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                                      
00:16 +1: contract:A21 (StoreApi.purchase) contract:A21 — StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                                      
00:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 0ad995eb1cc369fa38b717a0905ee9e96614af887b555bc34883b70a1ac6e8fa

## Cycle: contract:A22 (green)

- behavior: contract:A22
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A22:hand attestation header present
- subject-hash: a5f838f0fbbf46afb755bd625064c37341e5c6bbf3124d4416ac539006370de1
- criterion: StoreApi.restore
- test: test/tdd/001-purchase-store/contract_a22_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart --plain-name "StoreApi.restore() -> List<StoreTransaction> (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:31:29.056342Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
01:17 +0: contract:A22 (StoreApi.restore) contract:A22 — StoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                                      
01:17 +1: contract:A22 (StoreApi.restore) contract:A22 — StoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                                      
01:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: c4c0db2945119f3ab08d35102f86101435dce5a4f756230d342eb1ff0c8476da

## Cycle: contract:A23 (green)

- behavior: contract:A23
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A23:hand attestation header present
- subject-hash: 88eb8d79d348da261ea2fe649ba8dbe922703523102aaf7f65c6fd65d9e11e50
- criterion: StoreApi.complete
- test: test/tdd/001-purchase-store/contract_a23_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart --plain-name "StoreApi.complete(String) -> void (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:32:54.042208Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:58 +0: contract:A23 (StoreApi.complete) contract:A23 — StoreApi.complete(String) -> void (interface method contract)                                                                                
00:58 +1: contract:A23 (StoreApi.complete) contract:A23 — StoreApi.complete(String) -> void (interface method contract)                                                                                
00:58 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: e8cc83c3fd5fdc4571921401e73833b1809354c2c5192b63851df85d4b6130dc

## Cycle: contract:A25 (green)

- behavior: contract:A25
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A25:hand attestation header present
- subject-hash: 31b2ad67ebc5a69c92f0977ebb394f9a37619de38807ed9517b99017b20a782e
- criterion: RecordingStoreApi.queryProducts
- test: test/tdd/001-purchase-store/contract_a25_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart --plain-name "RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:36:17.608153Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
01:16 +0: contract:A25 (RecordingStoreApi.queryProducts) contract:A25 — RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                 
01:16 +1: contract:A25 (RecordingStoreApi.queryProducts) contract:A25 — RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                 
01:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 7b8ef7a7124ead7ee3a6d3fccd584235870cc00598dd0577d512e94a3035e106

## Cycle: contract:A26 (green)

- behavior: contract:A26
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A26:hand attestation header present
- subject-hash: e91160e3c95bac1f0af5a8e94f38834e92922539a54026213723e3ccee8a477a
- criterion: RecordingStoreApi.purchase
- test: test/tdd/001-purchase-store/contract_a26_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart --plain-name "RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:37:05.530039Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:14 +0: contract:A26 (RecordingStoreApi.purchase) contract:A26 — RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                    
00:14 +1: contract:A26 (RecordingStoreApi.purchase) contract:A26 — RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                    
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 7d975a3be36e6f1b2680f9665b70a547065e73b30f51a5ba03d9e2e216da5046

## Cycle: contract:A27 (green)

- behavior: contract:A27
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A27:hand attestation header present
- subject-hash: f76bb682db276b842c278406f8ce9f9ea081657cc95842d1d5a048d58f5eae0d
- criterion: RecordingStoreApi.restore
- test: test/tdd/001-purchase-store/contract_a27_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart --plain-name "RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:38:32.897234Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:52 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:53 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:54 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:55 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:56 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:57 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:58 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:59 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
01:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
01:00 +0: contract:A27 (RecordingStoreApi.restore) contract:A27 — RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                    
01:00 +1: contract:A27 (RecordingStoreApi.restore) contract:A27 — RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                    
01:00 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: b3421fb8b92ee7b3034f37f94b2014b74e1f89947c207429b652b176c5512b00

## Cycle: contract:A28 (green)

- behavior: contract:A28
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A28:hand attestation header present
- subject-hash: adae056c53369bf07f60f8e775d0260851ae5d196b5f146525f8a0ff8d32c283
- criterion: RecordingStoreApi.complete
- test: test/tdd/001-purchase-store/contract_a28_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart --plain-name "RecordingStoreApi.complete(String) -> void (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:39:46.129106Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:46 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:47 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:48 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:49 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:50 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:51 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:51 +0: contract:A28 (RecordingStoreApi.complete) contract:A28 — RecordingStoreApi.complete(String) -> void (interface method contract)                                                              
00:51 +1: contract:A28 (RecordingStoreApi.complete) contract:A28 — RecordingStoreApi.complete(String) -> void (interface method contract)                                                              
00:51 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: fd9f3339ade274ac85be11bd8401aff0e631284d42406d8d5616a06b68d8cb62

## Cycle: A11 (green)

- behavior: A11
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 07b505b69a0bdfc55d87a384a8610c381b7644f27962e353f56d18feb4ed37a2
- criterion: AC-11
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart --plain-name "a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`."`
- exit: 0
- at: 2026-10-21T22:41:32.971210Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:14 +0: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:14 +1: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f82cb56e2c9222132785623798ca4a6879d3754a4d943b88d99896f5906f5142
- hash: 55973739a9877055ab54671c068de07cd44dc4da600221b8f8f9c10b6a153173

## Cycle: contract:A19 (green)

- behavior: contract:A19
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A19:hand attestation header present
- subject-hash: 0093d8c8046545712913560aefa49cee1ff3cb5504465a0b0f8cdd608f3fb447
- criterion: StoreApi.isAvailable
- test: test/tdd/001-purchase-store/contract_a19_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart --plain-name "StoreApi.isAvailable() -> bool (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:46:32.797503Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:35 +0: contract:A19 (StoreApi.isAvailable) contract:A19 — StoreApi.isAvailable() -> bool (interface method contract)                                                                                
00:35 +1: contract:A19 (StoreApi.isAvailable) contract:A19 — StoreApi.isAvailable() -> bool (interface method contract)                                                                                
00:35 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: 49b0e6d330ba965f99181a1d8e511852ec263fb1a5609e020ad9f6367626fb11

## Cycle: contract:A24 (green)

- behavior: contract:A24
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A24:hand attestation header present
- subject-hash: 82ff0972e6a5712c58ef5d64a8d7a2a2167385174ba70560b434b0ad15828616
- criterion: RecordingStoreApi.isAvailable
- test: test/tdd/001-purchase-store/contract_a24_test.dart
- command: `dart test --concurrency=2 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart --plain-name "RecordingStoreApi.isAvailable() -> bool (interface method contract)"`
- exit: 0
- at: 2026-10-21T22:47:43.891528Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:45 +0: contract:A24 (RecordingStoreApi.isAvailable) contract:A24 — RecordingStoreApi.isAvailable() -> bool (interface method contract)                                                              
00:45 +1: contract:A24 (RecordingStoreApi.isAvailable) contract:A24 — RecordingStoreApi.isAvailable() -> bool (interface method contract)                                                              
00:45 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: genesis
- hash: d18ef8a0cb4a88e20cf5a2afc42ab3ac21058306b4b2092477a5c99680adbfc3

## Two-cycle run: 001-purchase-store

- feature: 001-purchase-store
- engine-receipt: 04-engine-receipt.json (verdict: green)
- skin-receipt: 04-skin-receipt.json (verdict: green)
- at: 2026-10-21T22:49:31.986572Z

## Two-cycle run: 001-purchase-store

- feature: 001-purchase-store
- engine-receipt: 04-engine-receipt.json (verdict: green)
- skin-receipt: 04-skin-receipt.json (verdict: green)
- at: 2026-10-22T02:18:59.292941Z

## Cycle: U1 (green)

- behavior: U1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 0ffe8a4641578300bfbbc5e57d3e435655295077e2ced2ee381e18a2a1175a5a
- criterion: FR-001, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart --plain-name "`PurchaseService.products(List<String> productIds)` MUST return the"`
- exit: 0
- at: 2026-10-22T04:28:25.114639Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:18 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:19 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:20 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:21 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:22 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:23 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:24 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:25 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:26 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:27 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:28 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:29 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:30 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:31 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:32 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:33 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:34 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:35 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:36 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:37 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:38 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:39 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:40 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:41 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:42 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:43 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:44 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:45 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u1_test.dart                                                                         
00:45 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:46 +0: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:46 +1: U1 (FR-001, PurchaseService.products) U1 — `PurchaseService.products(List<String> productIds)` MUST return the                                                                               
00:46 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 66b71dbc6c66728d1dafd4cfa9de4b2a55f3c6faa961e17da0b661318ec3c9fe
- hash: a627539e0d55e6fc34c61049db0beb3064bb4b864b987dd8c1d8a8500eac53c1

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A1:hand attestation header present
- subject-hash: ad9590430ef807e723334e79462951684acf5130fcf11e2fb4d7646bdf4d73a2
- criterion: PurchaseService.products
- test: test/tdd/001-purchase-store/contract_a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart --plain-name "PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:30:16.017981Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a1_test.dart                                                                
00:08 +0: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
00:08 +1: contract:A1 (PurchaseService.products) contract:A1 — PurchaseService.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                       
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: edfb1e11f2e4695c9c3aad28320f8bde170ef74db8f2da7b4ce687806ea6f7d9
- hash: 993716342bac01f5e99058197607bc2cb3acf905e6266c13b2c2fdfe7e34abae

## Cycle: U2 (green)

- behavior: U2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: f66fe6f6f4294037a68a0dfb751d96e716ffe6006db8cfb2ae07f8c9856c4efb
- criterion: FR-002, PurchaseService.products
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart --plain-name "A store that reports itself unavailable MUST surface as a typed"`
- exit: 0
- at: 2026-10-22T04:31:04.289189Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u2_test.dart                                                                         
00:06 +0: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed                                                                                   
00:06 +1: U2 (FR-002, PurchaseService.products) U2 — A store that reports itself unavailable MUST surface as a typed                                                                                   
00:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7be263756c4afbeb2ae63f23e4467ffb9a8d26af6ad9fde29b6ed5a33366b4df
- hash: 4050cb273ec27a6b8c607f30b88abce62b8a8ca5c4ce8ab851836f84c1a94a1e

## Cycle: U3 (green)

- behavior: U3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: b586572608d160c97d0209b87dbbee028eb6a38cb62a3b3dca71d6a6608f6ea3
- criterion: FR-003, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart --plain-name "`PurchaseService.purchase(PurchaseIntent request)` MUST map a"`
- exit: 0
- at: 2026-10-22T04:31:18.353492Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u3_test.dart                                                                         
00:07 +0: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:07 +1: U3 (FR-003, PurchaseService.purchase) U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a                                                                                     
00:07 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: b935e4c0ffabfc6a3332e84b57b24b489cdf28f5e6dc3956bf251de60f70488b
- hash: 48383ea7769364d1041b0ad5b692cebb6482eab7f1cdf770dd583ad2f1ed6351

## Cycle: U4 (green)

- behavior: U4
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: e0e1b0141138385a8094ff6efe03b167ee04db460a92f2364afdfd2283c25ca8
- criterion: FR-004, PurchaseService.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart --plain-name "A cancelled store transaction MUST surface as a typed recoverable"`
- exit: 0
- at: 2026-10-22T04:31:31.501816Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u4_test.dart                                                                         
00:06 +0: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                                 
00:06 +1: U4 (FR-004, PurchaseService.purchase) U4 — A cancelled store transaction MUST surface as a typed recoverable                                                                                 
00:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 313e2c418fde4c499585959352beb05b74bb153af90d526653027e5d4722e478
- hash: ea1932b0aa7b3c703ae424f77ed63ad2fa79da12e441378f70b8e81ce29c9555

## Cycle: U5 (green)

- behavior: U5
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: aecc409b08d23143064bc4bbdb41aacf6dd0795e3df008df9c787ff38e1d76fd
- criterion: FR-005, PurchaseService.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart --plain-name "`PurchaseService.restore()` MUST return every transaction the store"`
- exit: 0
- at: 2026-10-22T04:31:45.854381Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u5_test.dart                                                                         
00:07 +0: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store                                                                                
00:07 +1: U5 (FR-005, PurchaseService.restore) U5 — `PurchaseService.restore()` MUST return every transaction the store                                                                                
00:07 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: e85ff8c6764626c8bf1b1c8aec2d289ec5f3432c968c8dd65432ebbd444c4405
- hash: 287d1748d8598ec6be13f16df0a2fb7928c372549c0d693310308495cf1cfe0d

## Cycle: U6 (green)

- behavior: U6
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: b7331c031785c139a4d8acd680c0fa2c3d018ad399b860180b4b7a71e96621d3
- criterion: FR-006, PurchaseService.finish
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart --plain-name "`PurchaseService.finish(String transactionId)` MUST ask the store to"`
- exit: 0
- at: 2026-10-22T04:31:59.678742Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u6_test.dart                                                                         
00:07 +0: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                                
00:07 +1: U6 (FR-006, PurchaseService.finish) U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to                                                                                
00:07 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: af1f7767562ed3c5be42cf841d4347eb9182726622d228bfae17a7f90b2f7c08
- hash: e7eba2092ffb58bccdc77ef48f994f3e0ef41b975b596b714db3eef66fe3d159

## Cycle: U7 (green)

- behavior: U7
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 1da38aa6bc84518ce9d200b336a162e301e262993e94d2a5d9544cd20a643a5f
- criterion: FR-007, StoreApiPurchasePort.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart --plain-name "The store status taxonomy MUST map onto `PurchaseStatus` as"`
- exit: 0
- at: 2026-10-22T04:32:15.725405Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u7_test.dart                                                                         
00:09 +0: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as                                                                                  
00:09 +1: U7 (FR-007, StoreApiPurchasePort.purchase) U7 — The store status taxonomy MUST map onto `PurchaseStatus` as                                                                                  
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 1cfb023e7570cca91b12aaee09a706eec3273a7668a01b60e2c8ef6cdbf66f55
- hash: a7d3bfbb2136e2d9cea6fcbe4ad58c8c1bf4784f1c115ab9b8f52515c4a10687

## Cycle: U8 (green)

- behavior: U8
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 6a58bf2d94ab5b2bf95ea107ba491f3ba117eab8f66fa75ea93cbdee4d80b69d
- criterion: FR-008, PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart --plain-name "`PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST"`
- exit: 0
- at: 2026-10-22T04:32:32.640322Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u8_test.dart                                                                         
00:08 +0: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +0: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +1: U8 (FR-008, PurchaseSubscriptionStore.fetchProducts) U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f9623b8725364e7d8decb7ee7a337bab358038f1450b3c201cbfd860781c2a2b
- hash: adb001e44a74ed10c5d4b3eed14c7f79e3ca3f8b91153089422de68b6a28924e

## Cycle: U9 (green)

- behavior: U9
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 88ea447be26c9ec59467e73631e8b9098c1ed5fa6b9d448f63b5a128abf7b86f
- criterion: FR-009, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart --plain-name "`PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST"`
- exit: 0
- at: 2026-10-22T04:32:52.605459Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u9_test.dart                                                                         
00:11 +0: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:11 +1: U9 (FR-009, PurchaseSubscriptionStore.purchase) U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 94ef306f8977a6dfcf77b69a09b604569f016e5577f4328cc2c5740455e9cadd
- hash: 955e312de8c6a7cff685ecdbdefa7d403d854f6abddfd3d9efd3b7843a126ce1

## Cycle: U10 (green)

- behavior: U10
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: da5ff88d20c7237a1e4081098aea9df7bd64b2980fa86a6fb615c852f73f8c8d
- criterion: FR-010, PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST return one store purchase"`
- exit: 0
- at: 2026-10-22T04:33:13.714567Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u10_test.dart                                                                        
00:10 +0: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:10 +1: U10 (FR-010, PurchaseSubscriptionStore.restore) U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase                                                                   
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5fd5601a810e9499f72ffe2ab65209298f11becb8809ae87a70431ba51041448
- hash: 40e2b4b0959d33e8b79cce7a8206bb2ba70e8e7ad9c4a7bd40eac587a641b2fc

## Cycle: U11 (green)

- behavior: U11
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 27b40a968220e5b703c329503c1c8789f6bce811b6397472fcb34011afd2a68b
- criterion: FR-011, PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart --plain-name "`PurchaseSubscriptionStore.finishPurchase(String transactionId)`"`
- exit: 0
- at: 2026-10-22T04:33:33.650732Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u11_test.dart                                                                        
00:10 +0: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                
00:10 +1: U11 (FR-011, PurchaseSubscriptionStore.finishPurchase) U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0a283e3354e0d9e349a0f6b0a8f322bb2443717f7e9fbafc5260c513af50ffa9
- hash: f469d83e64333790a76f855dfc09af52841eeebfbd7069c7604c83feca6ac7c4

## Cycle: U12 (green)

- behavior: U12
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: de8d1c9ae27ae0af6da48659ee0aaa4a087f26ae2900a27997c78279513faae2
- criterion: FR-012, PurchaseException.code
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart --plain-name "Store failures MUST surface as the typed `PurchaseException`"`
- exit: 0
- at: 2026-10-22T04:33:53.372149Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u12_test.dart                                                                        
00:10 +0: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`                                                                                      
00:10 +1: U12 (FR-012, PurchaseException.code) U12 — Store failures MUST surface as the typed `PurchaseException`                                                                                      
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5b70b57598c0062a1dd5343b3dfc25d07d0cf9449e7cef71316b39d0d7051543
- hash: 9b42e59e742f42d7aa9719629560e20846bbd3356bf0b16e30b199c355bfc7f0

## Cycle: U13 (green)

- behavior: U13
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 2596791d1b3efed5478989487edc47201af5ae4a3385e2bbb7f16186622094f8
- criterion: FR-013, CompositionRoot.registerPurchaseDependencies
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart --plain-name "The composition root `registerPurchaseDependencies` MUST register the"`
- exit: 0
- at: 2026-10-22T04:34:13.434715Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/u13_test.dart                                                                        
00:11 +0: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the                                                       
00:11 +1: U13 (FR-013, CompositionRoot.registerPurchaseDependencies) U13 — The composition root `registerPurchaseDependencies` MUST register the                                                       
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a56b36fc2284c231191606e0ff4a3bedb4f7badd9a81e92e41fe3997c8c230b0
- hash: 9542faa834facf4736f124cdb26a75daf496daee695318eee6fe9cee8f3c4319

## Cycle: A11 (green)

- behavior: A11
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 4ac412561a25d3bea1526365a1fa81f9a664d14277432c106ac61b58aa7f73ef
- criterion: AC-11
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart --plain-name "a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`."`
- exit: 0
- at: 2026-10-22T04:34:31.719867Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/a11_test.dart                                                                        
00:09 +0: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:09 +1: A11 ... purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.     
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 55973739a9877055ab54671c068de07cd44dc4da600221b8f8f9c10b6a153173
- hash: 0d5a1b9e7346bf76542556b4ded14f552876ccbb1b15a5845457098bca4f7b98

## Cycle: contract:A2 (green)

- behavior: contract:A2
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A2:hand attestation header present
- subject-hash: 1f3482a832517513c0bc220053a39e9329111de36d5a1920582bce713a16a5c9
- criterion: PurchaseService.purchase
- test: test/tdd/001-purchase-store/contract_a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart --plain-name "PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:34:47.656745Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a2_test.dart                                                                
00:08 +0: contract:A2 (PurchaseService.purchase) contract:A2 — PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                          
00:08 +1: contract:A2 (PurchaseService.purchase) contract:A2 — PurchaseService.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                          
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 09414682384ccde41369f3eb23436098e92f9428faf7401a1b8573d532e803e1
- hash: c924d75d752f69625151d23d3a313a72e3207e1bbdb44cdb69147d1b9f64a328

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A3:hand attestation header present
- subject-hash: 82b42dfd0c882bbd6a5d7f5b55b579ac318e9ca889d59178aa184259a2b63acf
- criterion: PurchaseService.restore
- test: test/tdd/001-purchase-store/contract_a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart --plain-name "PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:35:09.083177Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a3_test.dart                                                                
00:12 +0: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:12 +1: contract:A3 (PurchaseService.restore) contract:A3 — PurchaseService.restore() -> List<PurchaseOutcome> (usecase contract)                                                                    
00:12 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 69d141d3ecf59eafb511f64324648d54f7920aed6806fa82a30aa87caacde131
- hash: ad6d542580f856fbf93b2a93bd4ce6e3e226fc500ac8c1609d9a2b988fd72131

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A4:hand attestation header present
- subject-hash: 37d6c5d5bb3074d30f69649bf25db47a03447a9aeb2a93cee64fe5e4d7b672ae
- criterion: PurchaseService.finish
- test: test/tdd/001-purchase-store/contract_a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart --plain-name "PurchaseService.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:35:30.699106Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a4_test.dart                                                                
00:11 +0: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:11 +1: contract:A4 (PurchaseService.finish) contract:A4 — PurchaseService.finish(String) -> void (usecase contract)                                                                                 
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a9314c6fdc96f3da04d8824d6eb898e62d4b187c459cc5187d1e69b65c8c8b00
- hash: 85adbe4a6b1262ebe88aac299e72cae10952cdc1c43261809a346414d88feb6c

## Cycle: contract:A5 (green)

- behavior: contract:A5
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A5:hand attestation header present
- subject-hash: e396113908fe046030936f9485a23dda5f308ee6fc2f86d2eb44161b95dc7834
- criterion: PurchasePort.products
- test: test/tdd/001-purchase-store/contract_a5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart --plain-name "PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:35:51.681631Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a5_test.dart                                                                
00:10 +0: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
00:10 +1: contract:A5 (PurchasePort.products) contract:A5 — PurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                                             
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 1bf25ba74f8c1ac908f8a3a13ae425663205ae06d1223fdad9726a59627a24f6
- hash: 89f5f3e9df232985a7a387cc20b8a9ca376b1b6d572eaee80b73a8caeb183c3e

## Cycle: contract:A6 (green)

- behavior: contract:A6
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A6:hand attestation header present
- subject-hash: 7394a695cbc5dac9460135fed927a14f3d0727c9ea927c053d88d3f182787176
- criterion: PurchasePort.purchase
- test: test/tdd/001-purchase-store/contract_a6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart --plain-name "PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:36:14.703282Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a6_test.dart                                                                
00:13 +0: contract:A6 (PurchasePort.purchase) contract:A6 — PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                                
00:13 +1: contract:A6 (PurchasePort.purchase) contract:A6 — PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                                                
00:13 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0aca531060eb68d63a4c94d86d7aca12af02570bdb2dc3623640380ea18b96ef
- hash: 6002f5bc4407148f21328ef7eb2e5b21953d66dfdc155791378e7ecd2a75d2fb

## Cycle: contract:A7 (green)

- behavior: contract:A7
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A7:hand attestation header present
- subject-hash: d027785057f0772319aad4fab67ed44779f7139c1a6f8d475d70e48c9bdfe1df
- criterion: PurchasePort.restore
- test: test/tdd/001-purchase-store/contract_a7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart --plain-name "PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:36:39.209396Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a7_test.dart                                                                
00:12 +0: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
00:13 +0: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
00:13 +1: contract:A7 (PurchasePort.restore) contract:A7 — PurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                                          
00:13 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: fc968f725387cac0ec777f99e63fdf42e718b953c67447f66a865ae3283e5858
- hash: d6bb9fa3845de7f10d3f5cc800fd2f55ef480ea19b43923af1c3c5cabc019e81

## Cycle: contract:A8 (green)

- behavior: contract:A8
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A8:hand attestation header present
- subject-hash: 23eb818a1265328482cb5e43b6bc0035c75bdf96875954e52aa70c31f2be67a5
- criterion: PurchasePort.finish
- test: test/tdd/001-purchase-store/contract_a8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart --plain-name "PurchasePort.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:37:03.778212Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a8_test.dart                                                                
00:12 +0: contract:A8 (PurchasePort.finish) contract:A8 — PurchasePort.finish(String) -> void (usecase contract)                                                                                       
00:12 +1: contract:A8 (PurchasePort.finish) contract:A8 — PurchasePort.finish(String) -> void (usecase contract)                                                                                       
00:12 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 4dba12956f5a9643f5902fd0552a5672d00b2a6daf2f10cc9959da3ac0901812
- hash: 8bdc377714d9e97abc5dc089bb1e2d275c43fa8fb42bdf0bdd431281ffa1b8b9

## Cycle: contract:A9 (green)

- behavior: contract:A9
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A9:hand attestation header present
- subject-hash: e579dd5e77ee9fa755d9d270a6d1f4464350bd5f645fb9abbbe3b5798664a2e6
- criterion: StoreApiPurchasePort.products
- test: test/tdd/001-purchase-store/contract_a9_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart --plain-name "StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:37:32.348234Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a9_test.dart                                                                
00:15 +0: contract:A9 (StoreApiPurchasePort.products) contract:A9 — StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                             
00:16 +1: contract:A9 (StoreApiPurchasePort.products) contract:A9 — StoreApiPurchasePort.products(List<String>) -> List<CatalogProduct> (usecase contract)                                             
00:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 4d13ddcad6206878ee322df837018f9f7ff8e11782f9637a16b4618b5ccfbe81
- hash: 850ee573ed4ba1eb85b62e61cc847d1f6c76db0d5ac1fd4e887a73f9973d9e19

## Cycle: contract:A10 (green)

- behavior: contract:A10
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A10:hand attestation header present
- subject-hash: 8d24b8b18000db0948844ae76d17d3f33d49da61aa30df5dee5c438db529c081
- criterion: StoreApiPurchasePort.purchase
- test: test/tdd/001-purchase-store/contract_a10_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart --plain-name "StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:37:58.115351Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a10_test.dart                                                               
00:13 +0: contract:A10 (StoreApiPurchasePort.purchase) contract:A10 — StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                              
00:13 +1: contract:A10 (StoreApiPurchasePort.purchase) contract:A10 — StoreApiPurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)                                              
00:13 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f715107a2b6f518987c99573eafdda7b8b4808be2dd1884ac62de4286a769f48
- hash: c0c62fef360b6380310445148b137f2c8edade0b3d17145b966632d4fa138e19

## Cycle: contract:A11 (green)

- behavior: contract:A11
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A11:hand attestation header present
- subject-hash: 07342840274968ce36ed67316d8e6277c6bd70991414f2c077be7335adca3526
- criterion: StoreApiPurchasePort.restore
- test: test/tdd/001-purchase-store/contract_a11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart --plain-name "StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:38:27.168061Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a11_test.dart                                                               
00:15 +0: contract:A11 (StoreApiPurchasePort.restore) contract:A11 — StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                        
00:15 +1: contract:A11 (StoreApiPurchasePort.restore) contract:A11 — StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)                                                        
00:15 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 3aeb6c45da0eceeac63980224c9b84f210b3a194e4d8e1d1e1d138bc7cf53771
- hash: 0c0f719dcb0102c57e9c0df7c50e1f2866a68f8bb7ca81f3696dd041f2301b42

## Cycle: contract:A12 (green)

- behavior: contract:A12
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A12:hand attestation header present
- subject-hash: 98ecca93c400b531b515289030325bb25d6bcefce8129bf841c00a3c55dd9369
- criterion: StoreApiPurchasePort.finish
- test: test/tdd/001-purchase-store/contract_a12_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart --plain-name "StoreApiPurchasePort.finish(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:38:57.917015Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a12_test.dart                                                               
00:15 +0: contract:A12 (StoreApiPurchasePort.finish) contract:A12 — StoreApiPurchasePort.finish(String) -> void (usecase contract)                                                                     
00:16 +0: contract:A12 (StoreApiPurchasePort.finish) contract:A12 — StoreApiPurchasePort.finish(String) -> void (usecase contract)                                                                     
00:16 +1: contract:A12 (StoreApiPurchasePort.finish) contract:A12 — StoreApiPurchasePort.finish(String) -> void (usecase contract)                                                                     
00:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 79de996eebb6964701eb829bf9af20651526d7e3f7ef3aae891e23030f6e3333
- hash: 258b7a8c7090258c7631d7e508f4a1c77b0d4cf5d8143e286e6cd4e733553992

## Cycle: contract:A13 (green)

- behavior: contract:A13
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A13:hand attestation header present
- subject-hash: d677e392f943164906dfee5b026157c5787b3f1c8a6be2a6b1c5b5e58fdeec61
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/001-purchase-store/contract_a13_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart --plain-name "PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:39:28.818681Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a13_test.dart                                                               
00:16 +0: contract:A13 (PurchaseSubscriptionStore.fetchProducts) contract:A13 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                              
00:17 +0: contract:A13 (PurchaseSubscriptionStore.fetchProducts) contract:A13 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                              
00:17 +1: contract:A13 (PurchaseSubscriptionStore.fetchProducts) contract:A13 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                              
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 678fbfe734f399156b4413bdf15b812c69d7126b528ee0fdbb78f6f5302e7d06
- hash: 527367d1fbed35b960b0bd93e0ed1204615a2b8482b11434c5da1c4a924ec059

## Cycle: contract:A14 (green)

- behavior: contract:A14
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A14:hand attestation header present
- subject-hash: 32743f114e3665072fcb9a9d23b70a48b66993c901685939c4cfb5f98cc249ff
- criterion: PurchaseSubscriptionStore.purchase
- test: test/tdd/001-purchase-store/contract_a14_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart --plain-name "PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:40:04.111014Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a14_test.dart                                                               
00:17 +0: contract:A14 (PurchaseSubscriptionStore.purchase) contract:A14 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                     
00:17 +1: contract:A14 (PurchaseSubscriptionStore.purchase) contract:A14 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                     
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 383a61e798aa2a9404896dc97b0a5f0d2422603ea533fdf69d84cbf95079c63e
- hash: 9d1bdab7a079026f832a4730e73b65d0a9feaa2bab11bb45b43451cefd469247

## Cycle: contract:A15 (green)

- behavior: contract:A15
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A15:hand attestation header present
- subject-hash: ae0442b7cdfc0257e95bab4655acb412d0827610698803f7938ffb1036168bae
- criterion: PurchaseSubscriptionStore.restore
- test: test/tdd/001-purchase-store/contract_a15_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart --plain-name "PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:40:33.375105Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a15_test.dart                                                               
00:14 +0: contract:A15 (PurchaseSubscriptionStore.restore) contract:A15 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                
00:14 +1: contract:A15 (PurchaseSubscriptionStore.restore) contract:A15 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 26f02c2b0f9abeb6f27153f457b98ebb209de4bb87be562b010e4a9e0f861538
- hash: fda71ba68f701c655fd03d2538993701b287b5051c89b3b5522fbc6740ad019d

## Cycle: contract:A16 (green)

- behavior: contract:A16
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A16:hand attestation header present
- subject-hash: 0c61530be55856c7d7eedecc92692b5087890a2c6002746a6f3c588c20302d29
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/001-purchase-store/contract_a16_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart --plain-name "PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:41:00.153630Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a16_test.dart                                                               
00:14 +0: contract:A16 (PurchaseSubscriptionStore.finishPurchase) contract:A16 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                           
00:14 +1: contract:A16 (PurchaseSubscriptionStore.finishPurchase) contract:A16 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                           
00:14 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 1924c37c2ef1f7ad767c6813b149e0c59bdab6833c88db498bff3151a73287a0
- hash: d3ea1bdd70549fcfa3239e8ca9833089aa61fc6d0fba575519fcafc1bd13817b

## Cycle: contract:A17 (green)

- behavior: contract:A17
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A17:hand attestation header present
- subject-hash: 0a2b8db69208ecbe61477d3558d7b4ac00e8c7b9d15d4dd43571154456dcad8c
- criterion: PurchaseException.code
- test: test/tdd/001-purchase-store/contract_a17_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart --plain-name "PurchaseException.code() -> String (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:41:32.905806Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:17 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a17_test.dart                                                               
00:17 +0: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
00:18 +0: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
00:18 +1: contract:A17 (PurchaseException.code) contract:A17 — PurchaseException.code() -> String (usecase contract)                                                                                   
00:18 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: cfc6734d8bf5bffd9607648aeb5947387b7e22dfa1eb04380d3c48dd1cc4da6b
- hash: ca78a35a6b795b50295b8c3f725e974930560d57b709419a4ac13912656637f7

## Cycle: contract:A18 (green)

- behavior: contract:A18
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A18:hand attestation header present
- subject-hash: 0bb66b7d62846ecfbed5535bdb3c47acdbf8b33ebf446df82f075814c7b48c36
- criterion: CompositionRoot.registerPurchaseDependencies
- test: test/tdd/001-purchase-store/contract_a18_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart --plain-name "CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:42:03.853540Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:16 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a18_test.dart                                                               
00:16 +0: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:16 +1: contract:A18 (CompositionRoot.registerPurchaseDependencies) contract:A18 — CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)                                    
00:17 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: ca71bcc06442861a7d97b555e88af61800842475ec59d1dc87a91414c88f60e0
- hash: 92e7e416b5a4d560a8e43acd0f97addfd0fdbd8ae1086b13b5a04b8501b97c51

## Cycle: contract:A19 (green)

- behavior: contract:A19
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A19:hand attestation header present
- subject-hash: 7e71c1fb4c5f543cd597536110a66a6c23163f23b15a6f5e89376cf6f6d2ad4e
- criterion: StoreApi.isAvailable
- test: test/tdd/001-purchase-store/contract_a19_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart --plain-name "StoreApi.isAvailable() -> bool (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:42:29.875123Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a19_test.dart                                                               
00:13 +0: contract:A19 (StoreApi.isAvailable) contract:A19 — StoreApi.isAvailable() -> bool (interface method contract)                                                                                
00:13 +1: contract:A19 (StoreApi.isAvailable) contract:A19 — StoreApi.isAvailable() -> bool (interface method contract)                                                                                
00:13 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 49b0e6d330ba965f99181a1d8e511852ec263fb1a5609e020ad9f6367626fb11
- hash: 5af396ce0279b197cdd6978d5ea57fa28ce0c174c1ef70d2d0b952b3c1fb254d

## Cycle: contract:A20 (green)

- behavior: contract:A20
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A20:hand attestation header present
- subject-hash: 5ec1b13d10a5dff31853095e42aec5d5fd0275a8701cf479b9410bd1c364098f
- criterion: StoreApi.queryProducts
- test: test/tdd/001-purchase-store/contract_a20_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart --plain-name "StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:42:56.124257Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a20_test.dart                                                               
00:12 +0: contract:A20 (StoreApi.queryProducts) contract:A20 — StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                                   
00:12 +1: contract:A20 (StoreApi.queryProducts) contract:A20 — StoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                                   
00:13 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 85a4fe8e799a64a57cc10201596a9f338fd2b1150403c95a289c215a413d80cb
- hash: 54116d587c5de1f8a5a1f1d0fb919670b6ae4ef828392ccce8ed087523ebace8

## Cycle: contract:A21 (green)

- behavior: contract:A21
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A21:hand attestation header present
- subject-hash: 3535e88d255e9a5788dbe2c62040a7307fa5602885d9260f4a8225d0a438d673
- criterion: StoreApi.purchase
- test: test/tdd/001-purchase-store/contract_a21_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart --plain-name "StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:43:25.421899Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a21_test.dart                                                               
00:15 +0: contract:A21 (StoreApi.purchase) contract:A21 — StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                                      
00:15 +1: contract:A21 (StoreApi.purchase) contract:A21 — StoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                                      
00:15 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 0ad995eb1cc369fa38b717a0905ee9e96614af887b555bc34883b70a1ac6e8fa
- hash: 7c5b589622562a4db7ff02a33a19923d37fc85610cdfb8e55b8d56c59abcac18

## Cycle: contract:A22 (green)

- behavior: contract:A22
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A22:hand attestation header present
- subject-hash: f61ddf002f3669c14bbad90fa367076219c6998341e6f0a2689365ea52581c3a
- criterion: StoreApi.restore
- test: test/tdd/001-purchase-store/contract_a22_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart --plain-name "StoreApi.restore() -> List<StoreTransaction> (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:43:52.820823Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a22_test.dart                                                               
00:14 +0: contract:A22 (StoreApi.restore) contract:A22 — StoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                                      
00:14 +1: contract:A22 (StoreApi.restore) contract:A22 — StoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                                      
00:15 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: c4c0db2945119f3ab08d35102f86101435dce5a4f756230d342eb1ff0c8476da
- hash: decf4a5fd85086e43173fe3b816b295e2d456827cb02a9af8f6358d63f05211b

## Cycle: contract:A23 (green)

- behavior: contract:A23
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A23:hand attestation header present
- subject-hash: cf624c64aa854ee871d75012e576a563f1afdd24c105a584c90a06936a59870a
- criterion: StoreApi.complete
- test: test/tdd/001-purchase-store/contract_a23_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart --plain-name "StoreApi.complete(String) -> void (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:44:14.842539Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a23_test.dart                                                               
00:09 +0: contract:A23 (StoreApi.complete) contract:A23 — StoreApi.complete(String) -> void (interface method contract)                                                                                
00:10 +0: contract:A23 (StoreApi.complete) contract:A23 — StoreApi.complete(String) -> void (interface method contract)                                                                                
00:10 +1: contract:A23 (StoreApi.complete) contract:A23 — StoreApi.complete(String) -> void (interface method contract)                                                                                
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: e8cc83c3fd5fdc4571921401e73833b1809354c2c5192b63851df85d4b6130dc
- hash: a9a43b6700945cfc8c7677b36ab0fcda40f70a00c823770ddbfbd4bf16686c55

## Cycle: contract:A24 (green)

- behavior: contract:A24
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A24:hand attestation header present
- subject-hash: cb25e65f2005eafc6740cdd5abed48fda4b59f478b92d73ae0e91ced48759cfc
- criterion: RecordingStoreApi.isAvailable
- test: test/tdd/001-purchase-store/contract_a24_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart --plain-name "RecordingStoreApi.isAvailable() -> bool (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:44:33.363167Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a24_test.dart                                                               
00:08 +0: contract:A24 (RecordingStoreApi.isAvailable) contract:A24 — RecordingStoreApi.isAvailable() -> bool (interface method contract)                                                              
00:08 +1: contract:A24 (RecordingStoreApi.isAvailable) contract:A24 — RecordingStoreApi.isAvailable() -> bool (interface method contract)                                                              
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d18ef8a0cb4a88e20cf5a2afc42ab3ac21058306b4b2092477a5c99680adbfc3
- hash: 547e9bfc602c017708987f2d6b2f796eb0643bb55c64c19fd19f1af221530015

## Cycle: contract:A25 (green)

- behavior: contract:A25
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A25:hand attestation header present
- subject-hash: 2101af5ee9ca0132f8fcff0331f7094feda91cc7e61700a90ae1550c0e94ebfe
- criterion: RecordingStoreApi.queryProducts
- test: test/tdd/001-purchase-store/contract_a25_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart --plain-name "RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:44:56.000338Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a25_test.dart                                                               
00:12 +0: contract:A25 (RecordingStoreApi.queryProducts) contract:A25 — RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                 
00:12 +1: contract:A25 (RecordingStoreApi.queryProducts) contract:A25 — RecordingStoreApi.queryProducts(Set<String>) -> List<StoreProduct> (interface method contract)                                 
00:12 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7b8ef7a7124ead7ee3a6d3fccd584235870cc00598dd0577d512e94a3035e106
- hash: 62e717abb4bd3f4eac5856fb972efe624438fdbe75b0da190e425b733d2d8ebb

## Cycle: contract:A26 (green)

- behavior: contract:A26
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A26:hand attestation header present
- subject-hash: 32ef4e83651391fb04416900fb1dcaf9a7c8ba998b83bbf1c31045bf96e8dc8e
- criterion: RecordingStoreApi.purchase
- test: test/tdd/001-purchase-store/contract_a26_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart --plain-name "RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:45:25.926504Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:12 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:13 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:14 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:15 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a26_test.dart                                                               
00:15 +0: contract:A26 (RecordingStoreApi.purchase) contract:A26 — RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                    
00:15 +1: contract:A26 (RecordingStoreApi.purchase) contract:A26 — RecordingStoreApi.purchase(StorePurchaseRequest) -> StoreTransaction (interface method contract)                                    
00:16 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7d975a3be36e6f1b2680f9665b70a547065e73b30f51a5ba03d9e2e216da5046
- hash: 2d20cbe5e9ca5321dba86f3db76643e25d4c4061e5d78f04cc13f60973df0514

## Cycle: contract:A27 (green)

- behavior: contract:A27
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A27:hand attestation header present
- subject-hash: e06e773d4f09ca1d46aff320c53c0046015fcbc5527e23c969c83eb6edaa6e97
- criterion: RecordingStoreApi.restore
- test: test/tdd/001-purchase-store/contract_a27_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart --plain-name "RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:45:49.886730Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:11 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a27_test.dart                                                               
00:11 +0: contract:A27 (RecordingStoreApi.restore) contract:A27 — RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                    
00:11 +1: contract:A27 (RecordingStoreApi.restore) contract:A27 — RecordingStoreApi.restore() -> List<StoreTransaction> (interface method contract)                                                    
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: b3421fb8b92ee7b3034f37f94b2014b74e1f89947c207429b652b176c5512b00
- hash: 4627adc5390af21940f5a882c07b0a5c76e66e22009316bf4989148a4782d7eb

## Cycle: contract:A28 (green)

- behavior: contract:A28
- kind: green
- evidence: issue #1411 born-green hand transition — no prior red evidence exists (the hand step preceded the first certification); green certified from the passing target test with the vacuous-guard marker absent and the contract:A28:hand attestation header present
- subject-hash: eaedad3bf5fdbfd15b8a9866759ed99f8c783df279626158fa215eda14b2376f
- criterion: RecordingStoreApi.complete
- test: test/tdd/001-purchase-store/contract_a28_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart --plain-name "RecordingStoreApi.complete(String) -> void (interface method contract)"`
- exit: 0
- at: 2026-10-22T04:46:09.334324Z
- output:
```
issue #1411 born-green hand transition — the designed hand step was completed before the first red certification (hand-first ordering); the passing transcript below is the green evidence bound to the current subject shape.

00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/001-purchase-store/contract_a28_test.dart                                                               
00:09 +0: contract:A28 (RecordingStoreApi.complete) contract:A28 — RecordingStoreApi.complete(String) -> void (interface method contract)                                                              
00:10 +1: contract:A28 (RecordingStoreApi.complete) contract:A28 — RecordingStoreApi.complete(String) -> void (interface method contract)                                                              
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: fd9f3339ade274ac85be11bd8401aff0e631284d42406d8d5616a06b68d8cb62
- hash: d3d3b38de7641862408b742bf8dffbca4cb27efb152b0283dedc7629227cfdd8

