---
feature: 001-purchase-store
verdict: PASS
standard: .specify/extensions/tdd/templates/tdd-test-quality-rubric.md # rubric graded against
verified_at: 09af741..a36ee8c # commits audited
behaviors: 42
proven: 42
likely: 0
test_after: 0
no_test: 0
not_applicable: 0
high_smells: 0
med_smells: 0
low_smells: 0
criteria_total: 26
criteria_covered: 26
mutation_tool: mutation_test 1.8.1
mutation_scope: packages/zuraffa_purchase/lib/src (the files this feature changed)
mutants: 80
mutants_survived: 0
mutation_score: 100 # 80/80 killed, production-surface scope, rating A
suite: 66 passed, 0 failed (dart test, packages/zuraffa_purchase)
analyzer: No issues found!
---

# TDD Verification: purchase-store — the federated in-app purchase wrapper

**Verdict: PASS.** All 42 behaviors of feature `001-purchase-store` are PROVEN with
recorded red evidence; every acceptance criterion and functional requirement maps
to a behavior that exists, runs and asserts something related to it; the mutation
audit over the production surface this feature changed leaves **no surviving
mutant**; there are no HIGH test smells; and the analyzer is clean.

## Test-first evidence

Every behavior was certified RED before it was certified GREEN. The red receipts
live in `specs/001-purchase-store/tdd/cycle-log.md` (append-only) and in
`packages/zuraffa_purchase/.zfa/receipts/`.

| Lane | Behaviors | Red evidence | Green evidence |
| --- | --- | --- | --- |
| Unit (U1–U13) | 13 | 14 entries, `classification: assertionFailure` | 13 |
| Acceptance (A11) | 1 | 1 entry, `classification: assertionFailure` | 1 |
| Contract (A1–A28) | 28 | 28 × `contract-blocked.<id>.json` | 28 |

- **Unit and acceptance lanes** fail through an *assertion*, never a compile or
  load error — the honest-red property the spec demands. `zfa tdd verify-red
  --re-certify` re-certified each of them green.
- **The contract lane can never be RED by design** (spec `1007-contract-tests-first-class`):
  a failing contract test is reported as `BLOCKED`, with the receipt
  `.zfa/receipts/contract-blocked.<id>.json`. The legal path to green is
  `zfa tdd make <id> --born-green`, which requires the target test to pass, the
  vacuous-guard marker to be gone, and the subject to carry the hand-step
  attestation `// zfa:tdd: contract:<bid>:hand`. All 28 behaviors went through
  that cycle: stub → `verify-red` (BLOCKED) → seam wired to the real
  implementation → `make --born-green`.

`zfa tdd status 001-purchase-store` → `engine ✅ 42/42 | skin ✅ 0/0 | 0 violations`.

## Test smells

No HIGH, MEDIUM or LOW smells. The suite is isolated (each behavior drives its
own fake store), deterministic (the clock and the store are injected), fast (the
whole package suite runs in ~13s), specific (a failure names the behavior and
the field that diverged) and insensitive to refactoring (the behaviors are
traced to the public API, not to private structure).

## Mutation audit

- **Tool**: `mutation_test` 1.8.1 (Dart), invoked as
  `dart run mutation_test mutation-test.xml`.
- **Scope**: `packages/zuraffa_purchase/lib/src` — the files this feature
  changed. This is the scope the rubric asks for ("scope the run to the files
  the feature changed"); a whole-repo run is a CI job, not an audit step. The
  scope is declared in `packages/zuraffa_purchase/mutation-test.xml`.
- **Result**: **80 mutants, 80 killed, 0 survived — 100%, quality rating A.**

  | File | Mutants | Survived |
  | --- | --- | --- |
  | `lib/src/di.dart` | 22 | 0 |
  | `lib/src/purchase_outcome.dart` | 22 | 0 |
  | `lib/src/catalog_product.dart` | 19 | 0 |
  | `lib/src/recording_store_api.dart` | 8 | 0 |
  | `lib/src/store_api_purchase_port.dart` | 6 | 0 |
  | `lib/src/purchase_subscription_store.dart` | 3 | 0 |
  | the remaining six files | 0 (no executable code to mutate) | — |
  | **total** | **80** | **0** |

- **Excluded, deliberately**: `lib/tdd/**` — the generated behavior subjects.
  They are the test harness of this feature (their `expect` calls ARE the
  assertions), so mutating them measures the harness, not the product. The
  same reasoning is recorded in the sibling repo `zuraffa_subscriptions`.

### What the audit found, and what it changed

The first pass over this scope left **29 mutants alive**, and every one of them
was a real gap in the suite rather than noise:

| Gap | Fix |
| --- | --- |
| The default 31-day billing period of `PurchaseSubscriptionStore` was never exercised — every test passed the period explicitly, so flipping the default to `-31` broke nothing. | `test/value_objects_test.dart` asserts the default-derived expiry through the real store. |
| The shipped `RecordingStoreApi` contract was unpinned: it did not record the request, its default `tx-<productId>` id format was unasserted, and it did not publish the purchased / restored transactions on the transaction stream. | `test/recording_store_api_test.dart` pins all of it. |
| The `operator ==` of `CatalogProduct` and `PurchaseOutcome` was never compared as a value, so no test noticed a dropped field comparison. | `test/value_objects_test.dart` compares the objects as values and varies each field in turn. |
| The `registerPurchaseDependencies` guards were never exercised in the "already registered" or "no store" direction, and the `PurchaseNotWired` message was unasserted. | `test/di_test.dart` covers both directions plus the message. |

Two further mutants were **equivalent** — the `identical(this, other)` fast path
in both `operator ==` implementations is semantically redundant, so no test can
detect its removal. Rather than write a test that cannot exist, the redundant
shortcut was removed.

### The tool's own subject-scoped run

`zfa tdd verify --feature 001-purchase-store` additionally runs a mutation audit
over the registered behavior artifacts — the 42 subjects in `lib/tdd`. That run
reports 79 survivors, and every one of them is in the harness rather than in
the product:

- **equivalent mutants** — `expect(actual, expected)` → `expect(expected, actual)`
  inside a subject still passes, because both sides are plain values. No test
  can distinguish it.
- **fixture literals** — the fake catalog's `priceMicros: 4990000` →
  `-4990000`, or a fake transaction id `'tx-purchased'` → `'tx+purchased'`. The
  behavior under test (the port's mapping) is untouched by the mutation.

Per the rubric, survivors are judged rather than reported raw: none of them
sits inside a behavior marked DONE, because none of them mutates a behavior.
The production-surface run above is the audit of record for this feature.

## Traceability

`specs/001-purchase-store/tdd/traceability.md` — 26 requirement statements,
**14 automated**, 12 declared manual with their owning unit behavior,
**0 open gaps**:

| Group | Statements | Automated | Manual (owner) |
| --- | --- | --- | --- |
| Acceptance criteria (AC-1 … AC-13) | 13 | 1 (A11) | 12 → U1–U13 |
| Functional requirements (FR-001 … FR-013) | 13 | 13 | 0 |

Every `traces` value points at a test that exists and runs. The automated
acceptance scenario A11 exercises the real entry point — `SubscriptionService`
over the real `PurchaseSubscriptionStore` over the real `StoreApiPurchasePort`
— not a unit beneath a double at every boundary.

## Gates

| Gate | Result |
| --- | --- |
| `dart analyze` (all five packages) | No issues found |
| `dart test` / `flutter test` (all five packages) | 66 / 17 / 4 / 4 / 4 — 0 failed |
| `zfa tdd run 001-purchase-store` | `result=complete pending=0 red=0 green=0 done=42` |
| `zfa tdd status 001-purchase-store` | `engine ✅ 42/42, skin ✅ 0/0, 0 violations` |
| Receipt preflight (`zfa tdd verify`) | 153 receipts validated, 42 subjects audited |
| Mutation audit (production scope) | 80 mutants, 0 survived, rating A |

## Known limitation

The contract lane's 28 behaviors are certified through the `born-green` path
rather than a red-first path, because the spec makes contract tests
first-class and therefore never RED. The receipt trail
(`.zfa/receipts/contract-blocked.<id>.json`) is the equivalent of a red
receipt for that lane: it records that the test existed, failed, and blocked
the cycle before the seam was wired.
