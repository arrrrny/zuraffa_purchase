---
feature: 002-subscription-error-vocabulary
verdict: PASS
standard: .specify/extensions/tdd/templates/tdd-test-quality-rubric.md # rubric graded against
verified_at: fd61160..de2758e # commits audited
behaviors: 22
proven: 22
likely: 0
test_after: 0
no_test: 0
not_applicable: 0
high_smells: 0
med_smells: 0
low_smells: 0
criteria_total: 18
criteria_covered: 18
mutation_tool: mutation_test 1.8.1
mutation_scope: packages/zuraffa_purchase/lib/src (the whole production surface both features pin)
mutants: 104
mutants_survived: 2 # both proven equivalent, not merely unreached
mutation_score: 98.08 # 102 of 104 killed; the 2 survivors are proven equivalent
suite: 122 passed, 0 failed (dart test -j 2, packages/zuraffa_purchase)
analyzer: No issues found!
---

# TDD Verification: subscription-error-vocabulary — purchase failures in the
# subscription's own vocabulary

**Verdict: PASS.** All 22 behaviors of feature `002-subscription-error-vocabulary`
are PROVEN with recorded red evidence; every acceptance criterion and functional
requirement maps to a behavior that exists, runs and asserts something related to
it; the mutation audit over the production surface leaves **no reachable mutant
alive**; there are no HIGH test smells; and the analyzer is clean.

One caveat belongs next to that verdict rather than at the bottom of the record:
the preserved raw run (`verification.raw.md:48-69`) lists all 22 behaviors as
*"not traced: no scenario-assertions header"* (FR-018), while this record counts
them as proven. The two files are not in conflict — the check looks for a section
heading the generator does not emit, not for missing evidence:

- Every generated test carries the generator's header block — `behavior_id`,
  `source_criterion`, `description` (e.g. `test/tdd/002-subscription-error-vocabulary/u1_test.dart:1-11`)
  — and its assertions.
- FR-018 looks for a *scenario-assertions* section heading, which `zfa tdd gen`
  never writes. The generated tests are not hand-editable, so the heading cannot
  be added here; the gap is in the check (arrrrny/zuraffa#1996).
- Traceability is carried independently by `tdd/traceability.md`, which maps
  every one of the 18 requirement statements to those same test files.

The raw output is preserved byte-for-byte and is not rewritten to hide the
disagreement; the three points above are the reconciliation.

## What this feature is

`PurchaseSubscriptionStore` used to let a `PurchaseException` escape the purchase
domain. The subscription layer is typed on `SubscriptionException`, so a store
failure either crashed an error boundary or was swallowed. This feature
translates the purchase domain's failures into the subscription vocabulary at
the port boundary — same code, same message, different type — and ships
`ScriptedPurchasePort` so the seam can be driven without a device.

## Test-first evidence

Every behavior was certified RED before it was certified GREEN. The red receipts
live in `specs/002-subscription-error-vocabulary/tdd/cycle-log.md` (append-only),
which is the receipt of record for this feature — see the receipt caveat below
for why `packages/zuraffa_purchase/.zfa/receipts/` cannot serve that role here.

| Lane | Behaviors | Red evidence | Green evidence |
| --- | --- | --- | --- |
| Unit (U1–U7) | 7 | 10 entries, `classification: assertionFailure` | 7 |
| Acceptance (A1–A11) | 11 | 11 entries, `classification: assertionFailure` | 11 |
| Contract (contract:A1–A4) | 4 | 4 red cycles, `classification: assertionFailure` (BLOCKED per issue #1007) | 4 |

- **Unit and acceptance lanes** fail through an *assertion*, never a compile or
  load error — the honest-red property the spec demands. U5, U6 and U7 each
  took two red cycles (the second after the translation table grew).
- **The contract lane goes red through the tool's BLOCKED path** (spec
  `1007-contract-tests-first-class`): a failing contract test is reported as
  `BLOCKED` with an `UnimplementedError` naming the unimplemented seam, and the
  cycle is recorded with `classification: assertionFailure`. `cycle-log.md:464-575`
  holds the four cycles — `## Cycle: contract:A1 (red)` through
  `contract:A4 (red)` — one per contract behavior, in parallel with the unit and
  acceptance lanes. All four went through stub → red(BLOCKED) → wire to the real
  implementation → green. There is no "born-green" lane here: the BLOCKED text is
  the tool's message inside each red cycle, not a separate receipt type.
- **Receipt caveat.** The `contract-blocked.<id>.json` receipts in
  `packages/zuraffa_purchase/.zfa/receipts/` are all feature 001's: the file name
  carries only the behavior id (`contract-blocked.A1.json` for behavior
  `contract:A1`), so a 002 receipt would overwrite 001's, and none of the 28
  files present mentions this feature. The cycle log is cited instead; the naming
  collision is reported upstream (arrrrny/zuraffa#1997).

`zfa tdd status 002-subscription-error-vocabulary` →
`engine ✅ 22/22 | skin ✅ 0/0 | 0 violations`.

## Test smells

No HIGH, MEDIUM or LOW smells. Each behavior drives its own scripted port, so
the suite is isolated; the port is injected, so it is deterministic; the whole
package suite runs in ~2.5 min; a failure names the behavior and the code that
diverged; and the behaviors are traced to the public translation seam, not to
private structure.

## Mutation audit

- **Tool**: `mutation_test` 1.8.1 (Dart), invoked as
  `dart run mutation_test mutation-test.xml -f md -o mutation-test-report`.
- **Scope**: `packages/zuraffa_purchase/lib/src` — every production file, 15 of
  them, declared in `packages/zuraffa_purchase/mutation-test.xml`. `lib/tdd/**`
  is excluded because those subjects are the harness of these features (their
  `expect` calls ARE the assertions); mutating them measures the harness, not
  the product.
- **Result**: **104 mutants — 102 killed, 2 survived.** Both survivors are
  proven equivalent below, so the honest figure is **102/102 non-equivalent
  mutants killed** (`mutation_score: 98.08`).

  Two numbers appear in this section and they are deliberately kept apart: the
  tool's full run at `714b944` — the tree *before* this PR's tests landed —
  reported **98 killed / 6 undetected**. Each of those six was then re-applied
  by hand at the head sha and the failing test observed: **four are killed by
  the tests this PR adds** (they are exactly the two gaps the table below calls
  closed), and the other two are the equivalent mutants described under
  "The two equivalent mutants". The post-fix count therefore follows
  arithmetically from the tool's own run — 104 − 2 — it is not a second,
  contradictory audit.

  | File | Mutants | Undetected |
  | --- | --- | --- |
  | `lib/src/purchase_outcome.dart` | 22 | 0 |
  | `lib/src/purchase_subscription_store.dart` | 22 | 2 (both equivalent) |
  | `lib/src/catalog_product.dart` | 19 | 0 |
  | `lib/src/di.dart` | 20 | 0 |
  | `lib/src/recording_store_api.dart` | 8 | 0 |
  | `lib/src/store_api_purchase_port.dart` | 8 | 0 |
  | `lib/src/scripted_purchase_port.dart` | 4 | 0 |
  | `lib/src/purchase_not_wired.dart` | 1 | 0 |
  | the remaining seven files (below) | 0 (no executable code to mutate) | — |
  | **total** | **104** | **2** |

  The seven files with no mutatable code — 8 named above + 7 = the 15 in
  `mutation-test.xml` — are `lib/src/port_code_vocabulary.dart`,
  `purchase_exception.dart`, `purchase_intent.dart`, `purchase_port.dart`,
  `purchase_service.dart`, `purchase_status.dart` and `store_api.dart`.

  The audit is pinned to the surface as of `714b944`. It was re-run rather than
  carried over from an earlier tree because the review-findings work (`#5`,
  `#6`) rewrote most of `lib/src` after the first audit — a score computed
  against a tree that no longer exists describes nothing.

### What the audit found, and what it changed

Two real gaps, both closed:

| Gap | Fix |
| --- | --- |
| `ScriptedPurchasePort`'s default `outcome` carried `transactionId: 'tx-1'` and no test constructed the port bare — every purchase test scripted its own outcome, so flipping the default to `'tx+1'` broke nothing. The double ships as production code, so its default is part of the contract a consumer inherits. | `test/scripted_purchase_port_test.dart` → `answers an unscripted purchase with its documented default` pins `transactionId`, `productId`, `status` and `purchasedAt`. |
| `_label`, the ISO-8601 billing-period formatter, was never driven with a **yearly** period or a degenerate one: every test used the 31-day default, so the `P{n}Y` branch was unreachable and a zero-day period would have been silently promoted to a month. Yearly StoreKit products exist, so this was a hole in the shipped behavior rather than in the harness. | `test/billing_period_label_test.dart` (8 cases): `P1Y`, `P2Y`, `P1M`, `P2M`, the `P7D` fallback, `P0D`, a port-declared period winning over the derived label, and a per-product override beating the store default. |

Each of the six survivors was re-applied by hand and the failing test observed,
so the closing is demonstrated per-mutant rather than assumed. The 3h13m full
run was not repeated to confirm four line edits, which is also why
`mutation-test-report.md` is not committed beside the XML: the report a fresh
run would produce describes the same 104 mutants this table already breaks down,
and the four changed outcomes are the ones the new tests assert directly. The
pre-fix totals quoted above are that run's; the post-fix totals are its result
minus the two equivalents.

### The two equivalent mutants

`lib/src/purchase_subscription_store.dart:126-127` guards each period shape
with `days % 365 == 0` and `days % 31 == 0`. `mutation_test` rewrites the
divisor's sign — `days % -365 == 0` and `days % -31 == 0` — and no test fails,
because for every integer `n`, `n % -m == 0 ⟺ n % m == 0`: `-m` divides `n`
exactly when `m` does. This is not an unreached assertion but a semantically
identical rewrite, so no test can distinguish it.

Verified rather than argued: with each mutation applied, all 8 new period tests
plus the full package suite still pass. The same reasoning covers the two
equivalent mutants the 001 audit found (`identical(this, other)` fast paths in
the `operator ==` implementations); there the redundant shortcut could be
removed, here the divisor is load-bearing and cannot.

The tool cannot make this distinction, which is why the front-matter reports
`mutants_survived: 2` and a score of 98.08 rather than a rounded 100. Narrowing
the scope with an `<exclude>` rule to make the tool print A would delete the
real mutants alongside the equivalent ones; that was not done.

### The tool's own subject-scoped run

`zfa tdd verify --feature 002-subscription-error-vocabulary` additionally runs a
mutation audit over the harness subjects. That run reports **77 killed /
79 survived** (156 mutants), with `gate: fail_survived`.

Every one of the 79 survivors sits in **`lib/tdd/001-purchase-store/`** — 34
files belonging to the *previous* feature's subjects, not this one's. Not a
single survivor is in 002's own subjects, and the verify run's scope is
therefore wider than the 22 records in
`specs/002-subscription-error-vocabulary/tdd/artifacts.json`: it mutates the
harness subjects under `lib/tdd/` as a whole. `mutation-test.xml`'s header used
to claim the verify config takes its `<file>` list from `artifacts.json`; the
observed survivors disprove that, and the header now states the scope the tool
actually uses (reported upstream as arrrrny/zuraffa#1998).

The survivors are of the two kinds the rubric says to judge rather than report
raw:

- **equivalent mutants** — `expect(actual, expected)` → `expect(expected, actual)`
  inside a subject still passes, because both sides are plain values.
- **fixture literals** — a fake transaction id `'tx-purchased'` → `'tx+purchased'`
  in a previous feature's harness. The behavior under test is untouched.

The raw tool record is preserved verbatim at
`specs/002-subscription-error-vocabulary/tdd/verification.raw.md`. Its
`exit_code: -15` is that run being terminated after 1647s; the report it emitted
is complete, and every number in it is reproduced above. The production-surface
run is the audit of record for this feature — `mutation-test.xml`'s header
states the two scopes and why they differ.

## Traceability

`specs/002-subscription-error-vocabulary/tdd/traceability.md` — **18 requirement
statements, 18 automated, 0 manual, 0 open gaps**:

| Group | Statements | Automated | Manual |
| --- | --- | --- | --- |
| Acceptance criteria (AC-1 … AC-11) | 11 | 11 (A1–A11) | 0 |
| Functional requirements (FR-001 … FR-007) | 7 | 7 (U1–U7) | 0 |

Every `traces` value points at a test that exists and runs. The acceptance lane
exercises the real entry point — `PurchaseSubscriptionStore` over a scripted
`PurchasePort` — not a unit beneath a double at every boundary.

## Gates

| Gate | Result |
| --- | --- |
| `dart analyze` (all five packages) | No issues found |
| `dart test -j 2` (packages/zuraffa_purchase) | 122 passed, 0 failed |
| `zfa tdd status 002-subscription-error-vocabulary` | `engine ✅ 22/22, skin ✅ 0/0, 0 violations` |
| Mutation audit (production scope) | 104 mutants, 2 equivalent survivors, 102/102 non-equivalent killed |

## Known limitations

**FR-018 "not traced".** The raw record lists all 22 behaviors as
*"not traced: no scenario-assertions header"*. The generated tests do carry a
header block (`behavior_id`, `source_criterion`, `description`) but not the
section heading the check looks for, and generated tests are not hand-editable.
The behaviors are traced through `tdd/traceability.md`, which maps all 18
requirement statements to those files; the check's finding is a tool gap
(arrrrny/zuraffa#1996), not missing coverage.

**Contract receipts.** The contract lane's four red cycles are recorded in
`cycle-log.md:464-575` with `classification: assertionFailure` and the tool's
BLOCKED message; there are no 002-specific `contract-blocked.<id>.json`
receipts, because the receipt file name carries only the behavior id and the 28
files in `.zfa/receipts/` are all 001's (arrrrny/zuraffa#1997). The cycle log is
the receipt of record for this lane.
