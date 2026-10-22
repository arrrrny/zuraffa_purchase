# Cycle Log

Append only. Newest last. Every entry's `red` block is the evidence that the test existed and failed before the implementation.

## Cycle: A1 (red)

- behavior: A1
- kind: red
- classification: assertionFailure
- subject-hash: 6c91caf41eb25753303b74e5ba9fb9ab4d16e8557d77dccc03fac09da0d25e44
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.681783Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a1 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a1_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 45d9498ff90c5daf225b81dadb4aabba6858485b6bdca614b60caddadca8b887

## Cycle: A2 (red)

- behavior: A2
- kind: red
- classification: assertionFailure
- subject-hash: bb6a1f1c7b223b4e75b32e4d9a00466032337b4cbff95922cf2ebe5fa6ebf5dd
- criterion: AC-2
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.685657Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a2 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a2_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 555650d1e353fb866fab6b57708b4c8fe184c590141b0ce1b2c81cf32eda5d71

## Cycle: A3 (red)

- behavior: A3
- kind: red
- classification: assertionFailure
- subject-hash: 29189cc4499a9ac9035ed7711d82be036b0233a4c85583e42a4d3d8705580d58
- criterion: AC-3
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.688585Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a3 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a3_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 24b597c340bf51dcfd40e969a18a7e57c5eedd930c48c4af329d49fd01363ba5

## Cycle: A4 (red)

- behavior: A4
- kind: red
- classification: assertionFailure
- subject-hash: f53573cfed9a46b78aa3e4ea8e4242867b92fde881f79d4956bb3417e677799a
- criterion: AC-4
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.691987Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a3 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a3_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 17540231dd7a843a9b1f92e7200833bc0d5b1eb7d47bfdff8dce9af629b521c9

## Cycle: A6 (red)

- behavior: A6
- kind: red
- classification: assertionFailure
- subject-hash: 50f57e1cac778613533da829e308a373d1c109a37ed209beff6d2cd4c888a0b8
- criterion: AC-6
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.695521Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a6 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a6_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: f7e715497982ff9ebc8280b92ace374cdadabb200169c9cebdc4499a9b16441b

## Cycle: A7 (red)

- behavior: A7
- kind: red
- classification: assertionFailure
- subject-hash: e9cd0e567fe6a454546918454ef1e03dbd3cd8f3792559c4a659729df201e8bf
- criterion: AC-7
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.699055Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a7 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a7_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 30ce8542e3b7782bc6e4815327f900bf3f7475b0c526d248add69b32a0a61644

## Cycle: A8 (red)

- behavior: A8
- kind: red
- classification: assertionFailure
- subject-hash: fb6ef2b30182f595b3b620d693b07d6392ce8a7f1c96932237b4caa2c8fdc4d1
- criterion: AC-8
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.703009Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a8 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a8_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: f72954fc52daaa9f55540dc73fccbc9e64250b741babdb85734bf828165ff683

## Cycle: A9 (red)

- behavior: A9
- kind: red
- classification: assertionFailure
- subject-hash: b2dd99f5206526f0e73429d049e95398cf74591d0b648b376ef83a04720fce86
- criterion: AC-9
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.707357Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a9 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a9_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 3fbc73e66599114863d64610988358ca0e2ec73f2d3d5eb995fb0a02f3d2704b

## Cycle: A10 (red)

- behavior: A10
- kind: red
- classification: assertionFailure
- subject-hash: f6ceaeb64eb0668eed8d6b05508d8f0911d462147221aaff8d72f2122d213ef1
- criterion: AC-10
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.712117Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a10 not implemented>
  
  package:matcher                                                expect
  test/tdd/002-subscription-error-vocabulary/a10_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 7566cfa5830b2e60e74d0b511109a493513122a3f1b3924b93329595ad48fdd0

## Cycle: A11 (red)

- behavior: A11
- kind: red
- classification: assertionFailure
- subject-hash: db6efdcd52cfdda955c26c37d0a2da1a90d9c37528c37f83852e7ad1f3e3927a
- criterion: AC-11
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.716665Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a11 not implemented>
  
  package:matcher                                                expect
  test/tdd/002-subscription-error-vocabulary/a11_test.dart 37:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: d2e0c7780db6eea81337ee6eab10a2afb67f4196fe820733fee71a7bb4ca54cb

## Cycle: U1 (red)

- behavior: U1
- kind: red
- classification: assertionFailure
- subject-hash: d1f82492c77efa1a56e045c37d1112d16d1321544289847d85710aa151ab12e1
- criterion: FR-001, PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.721525Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u1 (declared param 0: List<String>)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u1_test.dart 36:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: d46c7fe668eeb5ac9daf06a7a4ca843b5e8cd9049e27e3bdb4ef3d1ed3575a72

## Cycle: U2 (red)

- behavior: U2
- kind: red
- classification: assertionFailure
- subject-hash: 28aa85984b9ffc42d56ac507ca4d361bba5af562be0253328eb516f8dc812f3e
- criterion: FR-002, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.726618Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u2 (declared param 0: PurchaseRequest)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u2_test.dart 36:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: a2b07dcf3de0a87383ff2c5d122c234672df8ff4bc5daf39385230fb8a82c74e

## Cycle: U3 (red)

- behavior: U3
- kind: red
- classification: assertionFailure
- subject-hash: 88915ae7c629963670b13a8dc3431ca478bfb3a9ca7ec21afef53cdb6b81f66e
- criterion: FR-003, PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.731356Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u3 not implemented: restore() -> List<StorePurchase>>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u3_test.dart 35:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: d1799d612f1eed5df17b387aeb42dbb3da7f8f1d01bd231a2cc6f164854ba8be

## Cycle: U4 (red)

- behavior: U4
- kind: red
- classification: assertionFailure
- subject-hash: 08b26c492fafda791731166429d8c091b8c6dc9caa336aee717100a161c077b2
- criterion: FR-004, PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.736268Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_u4 not implemented: finishPurchase(String) -> void>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u4_test.dart 35:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: ac089c28658ab6fdd23c15c88019b568838e1ec43e5212aad313abded19c8ce6

## Cycle: U5 (red)

- behavior: U5
- kind: red
- classification: assertionFailure
- subject-hash: aa3f1b87664816e90f83a43f83cd8d33a1855534a10b95cd9de30da3d97d7d46
- criterion: FR-005, PurchaseSubscriptionStore._translate
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.741419Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u5 (declared param 0: PurchaseException)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u5_test.dart 36:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 24384c274cdebc36c92fd3fe4ab375ddaca91b8af6b8afbba33998c3b88cea35

## Cycle: U6 (red)

- behavior: U6
- kind: red
- classification: assertionFailure
- subject-hash: 36b2852c01d66058737da1d979401abbdad073a9f22e7de4a757c0a9957608ee
- criterion: FR-006, PurchaseSubscriptionStore._translate
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.746607Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u6 (declared param 0: PurchaseException)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u6_test.dart 36:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: c96c2189297b8d7259f0e339b4a03a025215974a06f5cd321a805c48dee357c8

## Cycle: U7 (red)

- behavior: U7
- kind: red
- classification: assertionFailure
- subject-hash: f3e6e5f131c6d1e302e31d277db87233123337f44b1f43d391a89fd9d73f5369
- criterion: FR-007, PurchaseSubscriptionStore._translate
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.752011Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u7 (declared param 0: PurchaseException)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u7_test.dart 36:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 605d74e21a192f4e6ae296e60de34bffdfff674fb469df91c873a52af86dd3f4

## Cycle: contract:A1 (red)

- behavior: contract:A1
- kind: red
- classification: assertionFailure
- subject-hash: 7bbbf25461f0b51409a670920245e27e1daa648314718d64ee53195a7b5a91cc
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.757112Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> is not implemented>
  PurchaseSubscriptionStore.fetchProducts is not implemented — the declared contract is unsatisfied, so the cycle is BLOCKED and cannot proceed to GREEN (issue #1007)
  
  package:matcher                                                        expect
  test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart 43:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 8192cf1c7d6828306ee8516d97831d78dc9bf921e7e32108586fadf984acc0a3

## Cycle: contract:A2 (red)

- behavior: contract:A2
- kind: red
- classification: assertionFailure
- subject-hash: 3e3c1c2f0a7a4e1a52b4d0c3003c5adbc7932d7e4ecbc937f057e03611747611
- criterion: PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.762516Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative `dynamic` value for the `PurchaseSubscriptionStore.purchase` contract test>
  PurchaseSubscriptionStore.purchase is not implemented — the declared contract is unsatisfied, so the cycle is BLOCKED and cannot proceed to GREEN (issue #1007)
  
  package:matcher                                                        expect
  test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart 43:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: edccc07514b93ccba3abb58f01140bdaa0d3fee154d895ee72f00a4f82386184

## Cycle: contract:A3 (red)

- behavior: contract:A3
- kind: red
- classification: assertionFailure
- subject-hash: bfa16508e4ce2ff236324d4c708c1e6b863777bd1a01462599aea3dba508527c
- criterion: PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.768016Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: PurchaseSubscriptionStore.restore() -> List<StorePurchase> is not implemented>
  PurchaseSubscriptionStore.restore is not implemented — the declared contract is unsatisfied, so the cycle is BLOCKED and cannot proceed to GREEN (issue #1007)
  
  package:matcher                                                        expect
  test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart 43:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: 1bccf3e2f991d123c4b6bf9530086812edfa5ffef098a1471fd321fc19a1edc2

## Cycle: contract:A4 (red)

- behavior: contract:A4
- kind: red
- classification: assertionFailure
- subject-hash: 0f3285b0d92498f019abf5d4cd909d58f3b13ce08a4432a4c1f84307f95e18e4
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a5_test.dart`
- exit: 1
- at: 2026-10-22T03:38:03.773689Z
- output:
```
Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative `dynamic` value for the `PurchaseSubscriptionStore.finishPurchase` contract test>
  PurchaseSubscriptionStore.finishPurchase is not implemented — the declared contract is unsatisfied, so the cycle is BLOCKED and cannot proceed to GREEN (issue #1007)
  
  package:matcher                                                        expect
  test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart 43:7  main.<fn>.<fn>
  

(batched red — one runner invocation for 23 behavior(s), spec 069 T002)
```

- schema: 1
- prev-hash: genesis
- hash: a2ec0fd1f6be5ac7d74010158b9207eba666bc93a2e2b77e106bdb930cca3a1a

## Cycle: A5 (red)

- behavior: A5
- kind: red
- classification: assertionFailure
- subject-hash: ff5e37b83fa29587a14f0afdfafed012d1b8f539d8008b3c415976ae2e47f1d8
- criterion: AC-5
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart --plain-name "the result carries code `cancelled`."`
- exit: 1
- at: 2026-10-22T03:38:38.132331Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:00 +0: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:00 +0 -1: A5 (AC-5) A5 — the result carries code `cancelled`. [E]                                                                                                                                   
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: subject_a5 not implemented>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/a5_test.dart 37:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart -p vm --plain-name 'A5 (AC-5) A5 — the result carries code `cancelled`.'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: genesis
- hash: bf48f0637ac916553d9cb391ad647b5a6e4415915f5cb6fb6995f4a958091a91

## Cycle: U5 (red)

- behavior: U5
- kind: red
- classification: assertionFailure
- subject-hash: d36a4f44c2f577c9da39acf7169fa2c9de18b3d74520ae0a3166f6af97f54c78
- criterion: FR-005, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart --plain-name "The surfaced failure MUST preserve the machine code of the"`
- exit: 1
- at: 2026-10-22T03:42:03.795441Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:00 +0: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:00 +0 -1: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the [E]                                                                       
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u5 (declared param 0: PurchaseRequest)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u5_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart -p vm --plain-name 'U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: 24384c274cdebc36c92fd3fe4ab375ddaca91b8af6b8afbba33998c3b88cea35
- hash: 5b5560af590010d46c4d4f66116c71f8eab24cb9ba196654142d90b84e8edb5a

## Cycle: U6 (red)

- behavior: U6
- kind: red
- classification: assertionFailure
- subject-hash: b6c696dd7617da7d04dea36b02ccf41724e14763698e2b620cd2fa8e05420b62
- criterion: FR-006, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart --plain-name "A purchase-domain failure in an unrecognised code MUST surface as"`
- exit: 1
- at: 2026-10-22T03:42:05.446903Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:00 +0: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as                                                                       
00:00 +0 -1: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as [E]                                                                
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u6 (declared param 0: PurchaseRequest)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u6_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart -p vm --plain-name 'U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: c96c2189297b8d7259f0e339b4a03a025215974a06f5cd321a805c48dee357c8
- hash: 6e4615a2267aa5a9bbae3361111161444abda5ed9d5b8c69597b216307d6d7c3

## Cycle: U7 (red)

- behavior: U7
- kind: red
- classification: assertionFailure
- subject-hash: 64970ff12c30fafaa296b38adea279329d999802f7576d40da35b2e0a69b7fcb
- criterion: FR-007, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart --plain-name "The translation MUST apply only to `PurchaseException`; any other"`
- exit: 1
- at: 2026-10-22T03:42:07.054673Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:00 +0: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other                                                                       
00:00 +0 -1: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other [E]                                                                
  Expected: not <Instance of 'UnimplementedError'>
    Actual: UnimplementedError:<UnimplementedError: provide a representative argument for subject_u7 (declared param 0: PurchaseRequest)>
  
  package:matcher                                               expect
  test/tdd/002-subscription-error-vocabulary/u7_test.dart 36:7  main.<fn>.<fn>
  

To run this test again: /usr/local/share/flutter/bin/cache/dart-sdk/bin/dart test /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart -p vm --plain-name 'U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other'

00:00 +0 -1: Some tests failed.                                                                                                                                                                        

Consider enabling the flag chain-stack-traces to receive more detailed exceptions.
For example, 'dart test --chain-stack-traces'.
```

- schema: 1
- prev-hash: 605d74e21a192f4e6ae296e60de34bffdfff674fb469df91c873a52af86dd3f4
- hash: 70ba4c7729e69578558e8483741c611b0a6fa36452bcd1c1900196cd099d5f9e

## Cycle: U1 (green)

- behavior: U1
- kind: green
- subject-hash: f5fa1bea2e3e3b5ebdde070934176a52cee401f1c7221e45f368975692884809
- criterion: FR-001, PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/002-subscription-error-vocabulary/u1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart --plain-name "`PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST"`
- exit: 0
- at: 2026-10-22T03:52:29.244356Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:01 +0: U1 (FR-001, PurchaseSubscriptionStore.fetchProducts) U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:01 +1: U1 (FR-001, PurchaseSubscriptionStore.fetchProducts) U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d46c7fe668eeb5ac9daf06a7a4ca843b5e8cd9049e27e3bdb4ef3d1ed3575a72
- hash: 2083df77990d441c8107c385a2191757d5e9964338519a56607a03ed69f799fe

## Cycle: U2 (green)

- behavior: U2
- kind: green
- subject-hash: 346924dc23ec3d32a292fda2b323c304b93015fe65a1086b1b60a0600e9fb4c4
- criterion: FR-002, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart --plain-name "`PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST"`
- exit: 0
- at: 2026-10-22T03:52:41.860352Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:01 +0: U2 (FR-002, PurchaseSubscriptionStore.purchase) U2 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:01 +1: U2 (FR-002, PurchaseSubscriptionStore.purchase) U2 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a2b07dcf3de0a87383ff2c5d122c234672df8ff4bc5daf39385230fb8a82c74e
- hash: c1ee2155131d67b3381ac3d126ff80e6becc67d4c576ee7725c9f707bc4f7184

## Cycle: U3 (green)

- behavior: U3
- kind: green
- subject-hash: ac0d5165b0c3ce3e88b28b8fbdd9af5d41cfe2bafa912550a1fe6e20850493a0
- criterion: FR-003, PurchaseSubscriptionStore.restore
- test: test/tdd/002-subscription-error-vocabulary/u3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST surface a"`
- exit: 0
- at: 2026-10-22T03:52:45.098317Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:01 +0: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:01 +1: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d1799d612f1eed5df17b387aeb42dbb3da7f8f1d01bd231a2cc6f164854ba8be
- hash: 3ea244abe9207d992f3dbad43da1c345abb5456efcd491321d92f2ae936f9589

## Cycle: U4 (green)

- behavior: U4
- kind: green
- subject-hash: 7d24dd4ddf9788786b6f6f5892c1ecffb8c3da9441f246183f98b713a79a531b
- criterion: FR-004, PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/002-subscription-error-vocabulary/u4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart --plain-name "`PurchaseSubscriptionStore.finishPurchase(String transactionId)`"`
- exit: 0
- at: 2026-10-22T03:52:48.291407Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:01 +0: U4 (FR-004, PurchaseSubscriptionStore.finishPurchase) U4 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                  
00:01 +1: U4 (FR-004, PurchaseSubscriptionStore.finishPurchase) U4 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                  
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: ac089c28658ab6fdd23c15c88019b568838e1ec43e5212aad313abded19c8ce6
- hash: 2bdfe6ff76e7cc8409aac5690d1c993a6a3b966801811557ec5e62dd00a8785b

## Cycle: U5 (green)

- behavior: U5
- kind: green
- subject-hash: 5bdb735a8094d04f9dcc0e6baa9bd3c05ef66b781ac110a9d9681cd24813fbff
- criterion: FR-005, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart --plain-name "The surfaced failure MUST preserve the machine code of the"`
- exit: 0
- at: 2026-10-22T03:52:51.455140Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:01 +0: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:01 +1: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 5b5560af590010d46c4d4f66116c71f8eab24cb9ba196654142d90b84e8edb5a
- hash: bf80d6ee88acfab4b1ceb6e0604f2389cf48d73b613f227550c763e4d1dd021f

## Cycle: U6 (green)

- behavior: U6
- kind: green
- subject-hash: 01c78a3f040d4910a027cd854c8a852e97272ec858084eef1bc1e90360693462
- criterion: FR-006, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart --plain-name "A purchase-domain failure in an unrecognised code MUST surface as"`
- exit: 0
- at: 2026-10-22T03:52:54.671046Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:01 +0: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as                                                                       
00:01 +1: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as                                                                       
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6e4615a2267aa5a9bbae3361111161444abda5ed9d5b8c69597b216307d6d7c3
- hash: d5503336569a8cbe66b04d2c94a8d0d40a59b236de80d48a34bf79501ec912d2

## Cycle: U7 (green)

- behavior: U7
- kind: green
- subject-hash: 1ea3aef0f3355b11ef944bff48b00de3be56dc900a10d043296bcc60e482d413
- criterion: FR-007, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart --plain-name "The translation MUST apply only to `PurchaseException`; any other"`
- exit: 0
- at: 2026-10-22T03:52:57.725282Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:01 +0: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other                                                                       
00:01 +1: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other                                                                       
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 70ba4c7729e69578558e8483741c611b0a6fa36452bcd1c1900196cd099d5f9e
- hash: f97ec0953a0910eceade03536ea00b8c2cee58a3136945a263f17cce83f99e5d

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- subject-hash: a78f3b23e5c9da4bb861dc286b4feb588b89a06aa031db86bbc5bc84c2b1302f
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart --plain-name "PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)"`
- exit: 0
- at: 2026-10-22T03:53:08.277116Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:01 +0: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:01 +1: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 8192cf1c7d6828306ee8516d97831d78dc9bf921e7e32108586fadf984acc0a3
- hash: 3c0d2ef061d412b6bc8f24a3eb26fb364303a124f6cc11ad55801c447bb5e0c7

## Cycle: contract:A2 (green)

- behavior: contract:A2
- kind: green
- subject-hash: 4da7d28f93b3f7d9a81d584e9e7ffe7c06d0f7183377dab47ac46cf153de60fe
- criterion: PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart --plain-name "PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)"`
- exit: 0
- at: 2026-10-22T03:53:11.569253Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:01 +0: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:01 +1: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: edccc07514b93ccba3abb58f01140bdaa0d3fee154d895ee72f00a4f82386184
- hash: fee5b3449f2572a82f9b4515c32e5ad691b7b3d64ea4cfb6b3345fc786d92da0

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- subject-hash: 07a5bad8cbb39211305bcda358d02a4947cc11136699592bdb3d0d0bb021bb05
- criterion: PurchaseSubscriptionStore.restore
- test: test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart --plain-name "PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)"`
- exit: 0
- at: 2026-10-22T03:53:14.886886Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:01 +0: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:01 +1: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 1bccf3e2f991d123c4b6bf9530086812edfa5ffef098a1471fd321fc19a1edc2
- hash: 2a7e2067e9fe8b7f919f6f6c5a0f8427e29bf5b3352803014c5a3aa070669ba8

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- subject-hash: 0584db7cf2df943b5107f93d721e7ef52b16d3deed9a15424db8c79301dda365
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart --plain-name "PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T03:53:18.006720Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:01 +0: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:01 +1: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:01 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a2ec0fd1f6be5ac7d74010158b9207eba666bc93a2e2b77e106bdb930cca3a1a
- hash: 25c95e22e8176c6f4033c35a0d75b3ecb5a1365578c5539d09cce1ece253d2be

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: 0ffed031630a8ed784c7f724475a34bc5db2c8a5a9908f575437c564ec69f703
- criterion: AC-1
- test: test/tdd/002-subscription-error-vocabulary/a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart --plain-name "the failure surfaces as a `SubscriptionException` in code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:03:31.002667Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:03 +0: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:03 +1: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 45d9498ff90c5daf225b81dadb4aabba6858485b6bdca614b60caddadca8b887
- hash: 54cf919b55d4e3a2612b0cc020a4b5ba7573cc055f6478e2d9d23a35dd640939

## Cycle: A2 (green)

- behavior: A2
- kind: green
- subject-hash: f76bbee1cbfbf40cc81ac558eb43027e043c721b80484a6aece036b0561db92e
- criterion: AC-2
- test: test/tdd/002-subscription-error-vocabulary/a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart --plain-name "the failure surfaces as a `SubscriptionException` in code `cancelled`."`
- exit: 0
- at: 2026-10-22T04:03:47.901453Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:03 +0: A2 (AC-2) A2 — the failure surfaces as a `SubscriptionException` in code `cancelled`.                                                                                                        
00:03 +1: A2 (AC-2) A2 — the failure surfaces as a `SubscriptionException` in code `cancelled`.                                                                                                        
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 555650d1e353fb866fab6b57708b4c8fe184c590141b0ce1b2c81cf32eda5d71
- hash: cb8fea8015bcaaa9f436110e55ce2c5afaf81fefae02319fd86d07f552f67056

## Cycle: A3 (green)

- behavior: A3
- kind: green
- subject-hash: 790c482648784e6c7c6b93e8db17ddee6786038f39777e1c1c2496c155230754
- criterion: AC-3
- test: test/tdd/002-subscription-error-vocabulary/a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:03:53.887177Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:03 +0: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:03 +1: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 24b597c340bf51dcfd40e969a18a7e57c5eedd930c48c4af329d49fd01363ba5
- hash: 6282903e718efb6e60e0f1f5a6086610157b112168cad83507e077465ab2e7d7

## Cycle: A4 (green)

- behavior: A4
- kind: green
- subject-hash: 2318d629730beb65eef669c93d6147f2097718409baea17ed9bf9e335a338534
- criterion: AC-4
- test: test/tdd/002-subscription-error-vocabulary/a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:04:00.347100Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:04 +0: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:04 +1: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 17540231dd7a843a9b1f92e7200833bc0d5b1eb7d47bfdff8dce9af629b521c9
- hash: f5d6fb94ac554280d8ee1c74ea07efb2f503e900646d0dd968e24a5c5f8691f6

## Cycle: A5 (green)

- behavior: A5
- kind: green
- subject-hash: 65b50b336d30de019d1cec17f4ecf8268e362b2d700c3d298abfa558932366e7
- criterion: AC-5
- test: test/tdd/002-subscription-error-vocabulary/a5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart --plain-name "the result carries code `cancelled`."`
- exit: 0
- at: 2026-10-22T04:04:07.255696Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:03 +0: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:03 +1: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: bf48f0637ac916553d9cb391ad647b5a6e4415915f5cb6fb6995f4a958091a91
- hash: f5464d846aade9d753537a0599a88b9555ad7b26a7a6f394689009e0300aff87

## Cycle: A6 (green)

- behavior: A6
- kind: green
- subject-hash: 217312d6530228b22f39eedc5c5827c14a0a43b98e795085b63082cbfbd80e2f
- criterion: AC-6
- test: test/tdd/002-subscription-error-vocabulary/a6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart --plain-name "the result carries code `product_unavailable`."`
- exit: 0
- at: 2026-10-22T04:04:13.690861Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:03 +0: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:03 +1: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f7e715497982ff9ebc8280b92ace374cdadabb200169c9cebdc4499a9b16441b
- hash: 40f45c65529f37daf445bc13cda43b709a93884612ffe4f510171a22c163aeea

## Cycle: A7 (green)

- behavior: A7
- kind: green
- subject-hash: 7ad9fc582f60fe71c311621d4695995602525b8e31da55e683a751528fd60dc4
- criterion: AC-7
- test: test/tdd/002-subscription-error-vocabulary/a7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart --plain-name "the result carries code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:04:19.822548Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:03 +0: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:03 +1: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 30ce8542e3b7782bc6e4815327f900bf3f7475b0c526d248add69b32a0a61644
- hash: e6207d685ac79b502529d904889b9e97a5bf47b8e29bf3aab0498953f725a6af

## Cycle: A8 (green)

- behavior: A8
- kind: green
- subject-hash: f5fc6598eb828aed15874dd9cee810eef243f12ca237fc5c5e4c60287a2fde21
- criterion: AC-8
- test: test/tdd/002-subscription-error-vocabulary/a8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart --plain-name "the result carries code `pending`."`
- exit: 0
- at: 2026-10-22T04:04:26.155709Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:03 +0: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:03 +1: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f72954fc52daaa9f55540dc73fccbc9e64250b741babdb85734bf828165ff683
- hash: d05204c2af4976a39bf364c8991b00067e6529075de91d119b2e40f6088a6e60

## Cycle: A9 (green)

- behavior: A9
- kind: green
- subject-hash: 725ab8052a35305fc571561e060a86711104d1c99c93176c07901f01995868fb
- criterion: AC-9
- test: test/tdd/002-subscription-error-vocabulary/a9_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart --plain-name "the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success."`
- exit: 0
- at: 2026-10-22T04:04:32.569809Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:03 +0: A9 (AC-9) A9 — the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.                                                                    
00:03 +1: A9 (AC-9) A9 — the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.                                                                    
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 3fbc73e66599114863d64610988358ca0e2ec73f2d3d5eb995fb0a02f3d2704b
- hash: 197b9eb627cc0ada4d837176047bf7587f4dd2cf50fc2c249a2f319c05fdd9ad

## Cycle: A10 (green)

- behavior: A10
- kind: green
- subject-hash: e69d4cdd45271080d3a9303fb544d41317eacd481c5a937ad561aae4868f13fd
- criterion: AC-10
- test: test/tdd/002-subscription-error-vocabulary/a10_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart --plain-name "the result carries the same message."`
- exit: 0
- at: 2026-10-22T04:04:39.146265Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:03 +0: A10 (AC-10) A10 — the result carries the same message.                                                                                                                                       
00:03 +1: A10 (AC-10) A10 — the result carries the same message.                                                                                                                                       
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7566cfa5830b2e60e74d0b511109a493513122a3f1b3924b93329595ad48fdd0
- hash: 6fce1fe50c57d36eba11be4fff8b905d4a22cafe2fd028adb761818e3944d0d0

## Cycle: A11 (green)

- behavior: A11
- kind: green
- subject-hash: 38af3d69c08c1288c49ec62ee8692395e03d439f38923d094386fc5f01e321a1
- criterion: AC-11
- test: test/tdd/002-subscription-error-vocabulary/a11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart --plain-name "that failure propagates unchanged."`
- exit: 0
- at: 2026-10-22T04:04:45.391703Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:03 +0: A11 (AC-11) A11 — that failure propagates unchanged.                                                                                                                                         
00:03 +1: A11 (AC-11) A11 — that failure propagates unchanged.                                                                                                                                         
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d2e0c7780db6eea81337ee6eab10a2afb67f4196fe820733fee71a7bb4ca54cb
- hash: 7b609b83bc255581f09a68e10e403034d9e04ab9ea96150e171fa67438438323

## Two-cycle run: 002-subscription-error-vocabulary

- feature: 002-subscription-error-vocabulary
- engine-receipt: 04-engine-receipt.json (verdict: green)
- skin-receipt: 04-skin-receipt.json (verdict: green)
- at: 2026-10-22T04:04:58.632816Z

## Cycle: U1 (green)

- behavior: U1
- kind: green
- subject-hash: f5fa1bea2e3e3b5ebdde070934176a52cee401f1c7221e45f368975692884809
- criterion: FR-001, PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/002-subscription-error-vocabulary/u1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart --plain-name "`PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST"`
- exit: 0
- at: 2026-10-22T04:08:34.405224Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u1_test.dart                                                          
00:08 +0: U1 (FR-001, PurchaseSubscriptionStore.fetchProducts) U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +0: U1 (FR-001, PurchaseSubscriptionStore.fetchProducts) U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +1: U1 (FR-001, PurchaseSubscriptionStore.fetchProducts) U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST                                                                   
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 2083df77990d441c8107c385a2191757d5e9964338519a56607a03ed69f799fe
- hash: 65c57261c887fdd5bcdd103faa7ec5d24d195b18397a1bfb8c11b0c84c657ed2

## Cycle: U2 (green)

- behavior: U2
- kind: green
- subject-hash: 346924dc23ec3d32a292fda2b323c304b93015fe65a1086b1b60a0600e9fb4c4
- criterion: FR-002, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart --plain-name "`PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST"`
- exit: 0
- at: 2026-10-22T04:08:45.489487Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u2_test.dart                                                          
00:05 +0: U2 (FR-002, PurchaseSubscriptionStore.purchase) U2 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:05 +1: U2 (FR-002, PurchaseSubscriptionStore.purchase) U2 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST                                                                      
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: c1ee2155131d67b3381ac3d126ff80e6becc67d4c576ee7725c9f707bc4f7184
- hash: 9585a4e4371c6279e334a10e96647d4fa0ef705232f0ba25155da2ddd26c0713

## Cycle: U4 (green)

- behavior: U4
- kind: green
- subject-hash: 7d24dd4ddf9788786b6f6f5892c1ecffb8c3da9441f246183f98b713a79a531b
- criterion: FR-004, PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/002-subscription-error-vocabulary/u4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart --plain-name "`PurchaseSubscriptionStore.finishPurchase(String transactionId)`"`
- exit: 0
- at: 2026-10-22T04:09:00.038984Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u4_test.dart                                                          
00:04 +0: U4 (FR-004, PurchaseSubscriptionStore.finishPurchase) U4 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                  
00:04 +1: U4 (FR-004, PurchaseSubscriptionStore.finishPurchase) U4 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`                                                                  
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 2bdfe6ff76e7cc8409aac5690d1c993a6a3b966801811557ec5e62dd00a8785b
- hash: 60fd8f8fbe7fda928da53f27e76fba1e4600f7b69421c78ae267c27276219c9a

## Cycle: U6 (green)

- behavior: U6
- kind: green
- subject-hash: 01c78a3f040d4910a027cd854c8a852e97272ec858084eef1bc1e90360693462
- criterion: FR-006, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart --plain-name "A purchase-domain failure in an unrecognised code MUST surface as"`
- exit: 0
- at: 2026-10-22T04:09:12.689037Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u6_test.dart                                                          
00:03 +0: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as                                                                       
00:03 +1: U6 (FR-006, PurchaseSubscriptionStore.purchase) U6 — A purchase-domain failure in an unrecognised code MUST surface as                                                                       
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d5503336569a8cbe66b04d2c94a8d0d40a59b236de80d48a34bf79501ec912d2
- hash: 3613ce47e6db7da644316b67ff7074ba83ead6a2d4dec3c52980ebc6f3933bf5

## Cycle: U7 (green)

- behavior: U7
- kind: green
- subject-hash: 1ea3aef0f3355b11ef944bff48b00de3be56dc900a10d043296bcc60e482d413
- criterion: FR-007, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart --plain-name "The translation MUST apply only to `PurchaseException`; any other"`
- exit: 0
- at: 2026-10-22T04:09:18.755235Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u7_test.dart                                                          
00:03 +0: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other                                                                       
00:03 +1: U7 (FR-007, PurchaseSubscriptionStore.purchase) U7 — The translation MUST apply only to `PurchaseException`; any other                                                                       
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f97ec0953a0910eceade03536ea00b8c2cee58a3136945a263f17cce83f99e5d
- hash: cb9ed6bae3064679d74c852708eb9d0580bfc15e85b155406d815d023e4013a9

## Cycle: A2 (green)

- behavior: A2
- kind: green
- subject-hash: f76bbee1cbfbf40cc81ac558eb43027e043c721b80484a6aece036b0561db92e
- criterion: AC-2
- test: test/tdd/002-subscription-error-vocabulary/a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart --plain-name "the failure surfaces as a `SubscriptionException` in code `cancelled`."`
- exit: 0
- at: 2026-10-22T04:09:29.696402Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a2_test.dart                                                          
00:03 +0: A2 (AC-2) A2 — the failure surfaces as a `SubscriptionException` in code `cancelled`.                                                                                                        
00:03 +1: A2 (AC-2) A2 — the failure surfaces as a `SubscriptionException` in code `cancelled`.                                                                                                        
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: cb8fea8015bcaaa9f436110e55ce2c5afaf81fefae02319fd86d07f552f67056
- hash: bf237df7ce9d1fc031dac037bbf05d08ebde56db6dd3c48a52f794aea9e033e0

## Cycle: A9 (green)

- behavior: A9
- kind: green
- subject-hash: 725ab8052a35305fc571561e060a86711104d1c99c93176c07901f01995868fb
- criterion: AC-9
- test: test/tdd/002-subscription-error-vocabulary/a9_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart --plain-name "the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success."`
- exit: 0
- at: 2026-10-22T04:10:05.555574Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a9_test.dart                                                          
00:03 +0: A9 (AC-9) A9 — the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.                                                                    
00:03 +1: A9 (AC-9) A9 — the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.                                                                    
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 197b9eb627cc0ada4d837176047bf7587f4dd2cf50fc2c249a2f319c05fdd9ad
- hash: 5a954bb85713de5754236748667486c260c6452427966d624d8cf38504a9e85f

## Cycle: A10 (green)

- behavior: A10
- kind: green
- subject-hash: e69d4cdd45271080d3a9303fb544d41317eacd481c5a937ad561aae4868f13fd
- criterion: AC-10
- test: test/tdd/002-subscription-error-vocabulary/a10_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart --plain-name "the result carries the same message."`
- exit: 0
- at: 2026-10-22T04:10:13.667855Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a10_test.dart                                                         
00:04 +0: A10 (AC-10) A10 — the result carries the same message.                                                                                                                                       
00:04 +1: A10 (AC-10) A10 — the result carries the same message.                                                                                                                                       
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6fce1fe50c57d36eba11be4fff8b905d4a22cafe2fd028adb761818e3944d0d0
- hash: 95e613a95f7ce8ada16f22621e57f1254c35e1d026477ac7309a7174fba52463

## Cycle: A11 (green)

- behavior: A11
- kind: green
- subject-hash: 38af3d69c08c1288c49ec62ee8692395e03d439f38923d094386fc5f01e321a1
- criterion: AC-11
- test: test/tdd/002-subscription-error-vocabulary/a11_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart --plain-name "that failure propagates unchanged."`
- exit: 0
- at: 2026-10-22T04:10:23.963678Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a11_test.dart                                                         
00:06 +0: A11 (AC-11) A11 — that failure propagates unchanged.                                                                                                                                         
00:06 +1: A11 (AC-11) A11 — that failure propagates unchanged.                                                                                                                                         
00:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 7b609b83bc255581f09a68e10e403034d9e04ab9ea96150e171fa67438438323
- hash: 774edb8a76977466183e6245539589d2140003c59044f6666e6222415965270b

## Cycle: U3 (green)

- behavior: U3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: d3cd15447fb3464beee392368509ea26ef56c41d3d4c893c57e1c07060645ae2
- criterion: FR-003, PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST surface a"`
- exit: 0
- at: 2026-10-22T04:12:48.760333Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:10 +0: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:10 +1: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 3ea244abe9207d992f3dbad43da1c345abb5456efcd491321d92f2ae936f9589
- hash: 175891acd590414aa9b12f78452cb1a548462dc4e21b2941f162e1d0c5cd75f9

## Cycle: U5 (green)

- behavior: U5
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 0d7754b98d266c02002fafe8de293d63039788c7fc79c2d2d59117b827899c82
- criterion: FR-005, PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart --plain-name "The surfaced failure MUST preserve the machine code of the"`
- exit: 0
- at: 2026-10-22T04:13:05.480512Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:09 +0: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:09 +1: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: bf80d6ee88acfab4b1ceb6e0604f2389cf48d73b613f227550c763e4d1dd021f
- hash: 874adf5b4c4f692d9f078be9b5a401bf2db2bebbb71defd9a936c4060db13002

## Cycle: A1 (green)

- behavior: A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 981cae57a9f79130eee31e16570eec5ac2143df0463e8b0493031996dcf46bba
- criterion: AC-1
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart --plain-name "the failure surfaces as a `SubscriptionException` in code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:13:21.118434Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:08 +0: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:08 +1: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 54cf919b55d4e3a2612b0cc020a4b5ba7573cc055f6478e2d9d23a35dd640939
- hash: 27c8f45b1c7cc9f531f8a12020eb2aa2e0ac70ddebe23aa178255220bcd16a27

## Cycle: A3 (green)

- behavior: A3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 2402d2793d81fdf16bc5aa596808d26e762634c9f06bcb269361a8afcdf8080b
- criterion: AC-3
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:13:36.872289Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:08 +0: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:09 +0: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:09 +1: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6282903e718efb6e60e0f1f5a6086610157b112168cad83507e077465ab2e7d7
- hash: a7291143c5ed038b27ecdc1271f6861a07f38a3b411ae9207f4eed0d6255ca4f

## Cycle: A4 (green)

- behavior: A4
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 540252217664057c8e912b4876bed901a03f30062e1f85f59bd86c0d9077c4fb
- criterion: AC-4
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:13:52.937977Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:09 +0: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:09 +1: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:09 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f5d6fb94ac554280d8ee1c74ea07efb2f503e900646d0dd968e24a5c5f8691f6
- hash: fd7028e4b1eaaeb422d553a03468b8e6699aa64a456f39984d9a370e9472c37b

## Cycle: A5 (green)

- behavior: A5
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 02c6d50af1d8101cceb938f910e45e3f540dd66b384dc02b984487cda2a98fcd
- criterion: AC-5
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart --plain-name "the result carries code `cancelled`."`
- exit: 0
- at: 2026-10-22T04:14:10.975216Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:10 +0: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:10 +1: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: f5464d846aade9d753537a0599a88b9555ad7b26a7a6f394689009e0300aff87
- hash: 79fe3b379ca34d6ed9eb3708f49156a48a04a5bda556744b6a79628d937d8b65

## Cycle: A6 (green)

- behavior: A6
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 8210d8e89503b052377c1051e0e591da611733b827b8284336cbb2934d2d8b2c
- criterion: AC-6
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart --plain-name "the result carries code `product_unavailable`."`
- exit: 0
- at: 2026-10-22T04:14:28.984448Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:09 +0: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:09 +1: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 40f45c65529f37daf445bc13cda43b709a93884612ffe4f510171a22c163aeea
- hash: 6acaa47f929a5886750d67dfebd76efb8bcd2ad0095420927e2aebe006175869

## Cycle: A7 (green)

- behavior: A7
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: acd1b9f8a3a3bdabeb950f16f67848200e2237d6ffe99431b18a815a4030347f
- criterion: AC-7
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart --plain-name "the result carries code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:14:47.699230Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:10 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:10 +0: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:11 +0: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:11 +1: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:11 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: e6207d685ac79b502529d904889b9e97a5bf47b8e29bf3aab0498953f725a6af
- hash: 77b6fe90b1d101e0e37f322cff40a6b47e7cb5c21e0b828940124528b6dc59a3

## Cycle: A8 (green)

- behavior: A8
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 2aa358da88ef4eb86f44397389a5d21f89471650e75299b0288fed7c0ce45188
- criterion: AC-8
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart --plain-name "the result carries code `pending`."`
- exit: 0
- at: 2026-10-22T04:15:04.790418Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:08 +0: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:08 +1: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: d05204c2af4976a39bf364c8991b00067e6529075de91d119b2e40f6088a6e60
- hash: 3b4aeda0b299e61a1d0ab231f434c5ff9082cddfa9c179f11a1933cfe57eaa4f

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: e2cc8fc7af9677ccd20e5425d7c47b056aef7762ac4350fa1d7b17f404d56168
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart --plain-name "PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:15:20.808365Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:08 +0: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:08 +1: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 3c0d2ef061d412b6bc8f24a3eb26fb364303a124f6cc11ad55801c447bb5e0c7
- hash: c7a4b87606782951bb312f2114634cf7b6bdbf2be39287cd76b7b5634577f035

## Cycle: contract:A2 (green)

- behavior: contract:A2
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: accbf51aff908843932ff6320c5b869534cce4cd2dd2c7bb47f85b448bd23973
- criterion: PurchaseSubscriptionStore.purchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart --plain-name "PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:15:35.594451Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:08 +0: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:08 +1: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: fee5b3449f2572a82f9b4515c32e5ad691b7b3d64ea4cfb6b3345fc786d92da0
- hash: ae5aef9f0726bef91bd0152d0f8cdd5fe5e441e25ca46d0d94210b69e09d6983

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: 6244b2c017ceeaaddf3ea5f25efb1b93ddfc71f2aedf21b5486782894c573416
- criterion: PurchaseSubscriptionStore.restore
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart --plain-name "PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:15:50.956696Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:08 +0: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:08 +1: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:08 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 2a7e2067e9fe8b7f919f6f6c5a0f8427e29bf5b3352803014c5a3aa070669ba8
- hash: acd0bb245bcada2d66a66a1c7fd7bb53ceb3b59f1bbcaf3d84d4790870245839

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- evidence: issue #1162 re-certification — the subject was hand-implemented after the certified red; this green evidence binds the NEW subject shape with the passing transcript
- subject-hash: a44edf16b732314788b399d440a016e765d13b4e365d8c0d36a91e2e7f975c7c
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart --plain-name "PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:16:08.495090Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:07 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:08 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:09 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:09 +0: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:10 +0: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:10 +1: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:10 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 25c95e22e8176c6f4033c35a0d75b3ecb5a1365578c5539d09cce1ece253d2be
- hash: abf3305c1a336acfb3a5c7fdeffc7759d5726e7bc08cc3fd70f66b021253fbf3

## Cycle: U3 (green)

- behavior: U3
- kind: green
- subject-hash: d3cd15447fb3464beee392368509ea26ef56c41d3d4c893c57e1c07060645ae2
- criterion: FR-003, PurchaseSubscriptionStore.restore
- test: test/tdd/002-subscription-error-vocabulary/u3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart --plain-name "`PurchaseSubscriptionStore.restore()` MUST surface a"`
- exit: 0
- at: 2026-10-22T04:16:35.783296Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:06 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u3_test.dart                                                          
00:06 +0: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:06 +1: U3 (FR-003, PurchaseSubscriptionStore.restore) U3 — `PurchaseSubscriptionStore.restore()` MUST surface a                                                                                     
00:06 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 175891acd590414aa9b12f78452cb1a548462dc4e21b2941f162e1d0c5cd75f9
- hash: 98b97650d7c2133e6e2e27463109c65d6e9d750a4108b13c53a8503c1db8141b

## Cycle: U5 (green)

- behavior: U5
- kind: green
- subject-hash: 0d7754b98d266c02002fafe8de293d63039788c7fc79c2d2d59117b827899c82
- criterion: FR-005, PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/u5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart --plain-name "The surfaced failure MUST preserve the machine code of the"`
- exit: 0
- at: 2026-10-22T04:16:45.824692Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/u5_test.dart                                                          
00:05 +0: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:05 +1: U5 (FR-005, PurchaseSubscriptionStore.purchase) U5 — The surfaced failure MUST preserve the machine code of the                                                                              
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 874adf5b4c4f692d9f078be9b5a401bf2db2bebbb71defd9a936c4060db13002
- hash: 3b32e21e0012d337581daecbdc96f499008c55806d3fa5b50b320a90de302a0e

## Cycle: A1 (green)

- behavior: A1
- kind: green
- subject-hash: 981cae57a9f79130eee31e16570eec5ac2143df0463e8b0493031996dcf46bba
- criterion: AC-1
- test: test/tdd/002-subscription-error-vocabulary/a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart --plain-name "the failure surfaces as a `SubscriptionException` in code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:16:55.105494Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a1_test.dart                                                          
00:04 +0: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:05 +0: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:05 +1: A1 (AC-1) A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.                                                                                                
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 27c8f45b1c7cc9f531f8a12020eb2aa2e0ac70ddebe23aa178255220bcd16a27
- hash: d996ab2cdc104e40ea765e2f038b5d55036d2732aaa5ddfa25d45b7afed84420

## Cycle: A3 (green)

- behavior: A3
- kind: green
- subject-hash: 2402d2793d81fdf16bc5aa596808d26e762634c9f06bcb269361a8afcdf8080b
- criterion: AC-3
- test: test/tdd/002-subscription-error-vocabulary/a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:17:04.668345Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a3_test.dart                                                          
00:05 +0: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:05 +1: A3 (AC-3) A3 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: a7291143c5ed038b27ecdc1271f6861a07f38a3b411ae9207f4eed0d6255ca4f
- hash: 886b352cbf072af8e9ffb36fa5cf99d2d2c85597b8f59cddd04e8f71b485be1d

## Cycle: A4 (green)

- behavior: A4
- kind: green
- subject-hash: 540252217664057c8e912b4876bed901a03f30062e1f85f59bd86c0d9077c4fb
- criterion: AC-4
- test: test/tdd/002-subscription-error-vocabulary/a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart --plain-name "the failure surfaces as a `SubscriptionException`."`
- exit: 0
- at: 2026-10-22T04:17:12.506318Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a4_test.dart                                                          
00:04 +0: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:04 +1: A4 (AC-4) A4 — the failure surfaces as a `SubscriptionException`.                                                                                                                            
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: fd7028e4b1eaaeb422d553a03468b8e6699aa64a456f39984d9a370e9472c37b
- hash: 12bf1582ed848f12b990f3ac23ee531b9303e7ffc6d128cbef6c80758fd6185d

## Cycle: A5 (green)

- behavior: A5
- kind: green
- subject-hash: 02c6d50af1d8101cceb938f910e45e3f540dd66b384dc02b984487cda2a98fcd
- criterion: AC-5
- test: test/tdd/002-subscription-error-vocabulary/a5_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart --plain-name "the result carries code `cancelled`."`
- exit: 0
- at: 2026-10-22T04:17:21.597350Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a5_test.dart                                                          
00:05 +0: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:05 +1: A5 (AC-5) A5 — the result carries code `cancelled`.                                                                                                                                          
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 79fe3b379ca34d6ed9eb3708f49156a48a04a5bda556744b6a79628d937d8b65
- hash: 6d263f9a821e95a1fa67e5edeb7044411b4c4a8f167c0ee4a65e277282d825c3

## Cycle: A6 (green)

- behavior: A6
- kind: green
- subject-hash: 8210d8e89503b052377c1051e0e591da611733b827b8284336cbb2934d2d8b2c
- criterion: AC-6
- test: test/tdd/002-subscription-error-vocabulary/a6_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart --plain-name "the result carries code `product_unavailable`."`
- exit: 0
- at: 2026-10-22T04:17:30.815826Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:05 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a6_test.dart                                                          
00:05 +0: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:05 +1: A6 (AC-6) A6 — the result carries code `product_unavailable`.                                                                                                                                
00:05 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 6acaa47f929a5886750d67dfebd76efb8bcd2ad0095420927e2aebe006175869
- hash: e1a213792026d039fc4247486db27ef95a160c941f2c955966e1740d95d47ed3

## Cycle: A7 (green)

- behavior: A7
- kind: green
- subject-hash: acd1b9f8a3a3bdabeb950f16f67848200e2237d6ffe99431b18a815a4030347f
- criterion: AC-7
- test: test/tdd/002-subscription-error-vocabulary/a7_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart --plain-name "the result carries code `store_unavailable`."`
- exit: 0
- at: 2026-10-22T04:17:39.222940Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a7_test.dart                                                          
00:04 +0: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:04 +1: A7 (AC-7) A7 — the result carries code `store_unavailable`.                                                                                                                                  
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 77b6fe90b1d101e0e37f322cff40a6b47e7cb5c21e0b828940124528b6dc59a3
- hash: 0116f097447a0485011b22b0640f8d0b2e988d25dc3f213121603cfedb7e1c47

## Cycle: A8 (green)

- behavior: A8
- kind: green
- subject-hash: 2aa358da88ef4eb86f44397389a5d21f89471650e75299b0288fed7c0ce45188
- criterion: AC-8
- test: test/tdd/002-subscription-error-vocabulary/a8_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart --plain-name "the result carries code `pending`."`
- exit: 0
- at: 2026-10-22T04:17:46.889887Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/a8_test.dart                                                          
00:03 +0: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:03 +1: A8 (AC-8) A8 — the result carries code `pending`.                                                                                                                                            
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: 3b4aeda0b299e61a1d0ab231f434c5ff9082cddfa9c179f11a1933cfe57eaa4f
- hash: 74ed25eaf95c9f12fb6bf191dc27dd86bd9333f75f516edad5a2c11d08b46031

## Cycle: contract:A1 (green)

- behavior: contract:A1
- kind: green
- subject-hash: e2cc8fc7af9677ccd20e5425d7c47b056aef7762ac4350fa1d7b17f404d56168
- criterion: PurchaseSubscriptionStore.fetchProducts
- test: test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart --plain-name "PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:17:54.133169Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a1_test.dart                                                 
00:03 +0: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:03 +1: contract:A1 (PurchaseSubscriptionStore.fetchProducts) contract:A1 — PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)                                
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: c7a4b87606782951bb312f2114634cf7b6bdbf2be39287cd76b7b5634577f035
- hash: a8ac914bc099d560d21c0ca7cee599356430bc27c3b5d098cd562112d8c92b0f

## Cycle: contract:A2 (green)

- behavior: contract:A2
- kind: green
- subject-hash: accbf51aff908843932ff6320c5b869534cce4cd2dd2c7bb47f85b448bd23973
- criterion: PurchaseSubscriptionStore.purchase
- test: test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart --plain-name "PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:18:01.480556Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a2_test.dart                                                 
00:03 +0: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:03 +1: contract:A2 (PurchaseSubscriptionStore.purchase) contract:A2 — PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)                                       
00:03 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: ae5aef9f0726bef91bd0152d0f8cdd5fe5e441e25ca46d0d94210b69e09d6983
- hash: 23a1c0567a31a9f457288c57c634222580a072049a01f4f4c3a7e8003ff8ff72

## Cycle: contract:A3 (green)

- behavior: contract:A3
- kind: green
- subject-hash: 6244b2c017ceeaaddf3ea5f25efb1b93ddfc71f2aedf21b5486782894c573416
- criterion: PurchaseSubscriptionStore.restore
- test: test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart --plain-name "PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:18:09.019972Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a3_test.dart                                                 
00:04 +0: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:04 +1: contract:A3 (PurchaseSubscriptionStore.restore) contract:A3 — PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)                                                  
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: acd0bb245bcada2d66a66a1c7fd7bb53ceb3b59f1bbcaf3d84d4790870245839
- hash: f4ce3a2d92ba1e519234ac670fa5271e50fe056635a374fbc041598e64f84ca5

## Cycle: contract:A4 (green)

- behavior: contract:A4
- kind: green
- subject-hash: a44edf16b732314788b399d440a016e765d13b4e365d8c0d36a91e2e7f975c7c
- criterion: PurchaseSubscriptionStore.finishPurchase
- test: test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart
- command: `dart test --concurrency=12 /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart --plain-name "PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)"`
- exit: 0
- at: 2026-10-22T04:18:17.585957Z
- output:
```
00:00 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:01 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:02 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:03 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:04 +0: loading /Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/test/tdd/002-subscription-error-vocabulary/contract_a4_test.dart                                                 
00:04 +0: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:04 +1: contract:A4 (PurchaseSubscriptionStore.finishPurchase) contract:A4 — PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)                                             
00:04 +1: All tests passed!
```
- generation:
  (none)
- suite: baseline=0 guard=0 new=(none)

- schema: 1
- prev-hash: abf3305c1a336acfb3a5c7fdeffc7759d5726e7bc08cc3fd70f66b021253fbf3
- hash: 705a3fdeb90944d8cf4b810589fdb54f1a9b18f90ef9535d6e6a8f376e31b907

## Two-cycle run: 002-subscription-error-vocabulary

- feature: 002-subscription-error-vocabulary
- engine-receipt: 04-engine-receipt.json (verdict: green)
- skin-receipt: 04-skin-receipt.json (verdict: green)
- at: 2026-10-22T04:18:24.491712Z

