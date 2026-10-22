// GENERATED STUB — `zfa tdd gen U13` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U13
// source_criterion: FR-013, CompositionRoot.registerPurchaseDependencies
// description: The composition root `registerPurchaseDependencies` MUST register the
//
// CONTRACT-DERIVED SUBJECT (issue #1259): the signature below is
// derived from the spec's declared Layer Contract:
//
//     registerPurchaseDependencies(GetIt) -> void
//
// The declared request and result types are preserved above. A
// declared type whose entity does not exist yet renders as `Object?`
// so the stub compiles cleanly (FR-011) — the degradation is
// unconditional ONLY for entities that do not exist on disk; replace
// it with the declared type once the entity lands. This is a MINIMAL
// COMPILABLE STUB: it does NOT satisfy the behavior — the paired test
// fails on first execution (honest red). Replace this stub body with
// the real implementation of the declared contract to make the test
// pass.
// Declared parameters: getit: GetIt (non-existent entity types render as Object? until implemented)
//
// The subject name is derived from the behavior id and is deliberately
// snake_cased — the generator KNOWS the name it emits, so the lint its
// shape provably trips is suppressed here rather than renaming the
// contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

// IMPLEMENTED (spec 001-purchase-store): the subject drives the real
// implementation over the scriptable RecordingStoreApi and returns the
// observable outcome the paired test asserts.

import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U13 — the composition root registers the family.
void subject_u13(GetIt getIt, {PurchasePort? port}) =>
    registerPurchaseDependencies(getIt, port: port);
