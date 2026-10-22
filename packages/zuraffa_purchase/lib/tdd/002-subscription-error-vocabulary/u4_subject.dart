// GENERATED STUB — `zfa tdd gen U4` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U4
// source_criterion: FR-004, PurchaseSubscriptionStore.finishPurchase
// description: `PurchaseSubscriptionStore.finishPurchase(String transactionId)`
//
// CONTRACT-DERIVED SUBJECT (issue #1259): the signature below is
// derived from the spec's declared Layer Contract:
//
//     finishPurchase(String) -> void
//
// The declared request and result types are preserved above: every
// declared type exists on disk and renders verbatim, import included —
// implement the body, never the signature. This is a MINIMAL
// COMPILABLE STUB: it does NOT satisfy the behavior — the paired test
// fails on first execution (honest red). Replace this stub body with
// the real implementation of the declared contract to make the test
// pass.
// Declared parameters: text: String
//
// The subject name is derived from the behavior id and is deliberately
// snake_cased — the generator KNOWS the name it emits, so the lint its
// shape provably trips is suppressed here rather than renaming the
// contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

// IMPLEMENTED (spec 002-subscription-error-vocabulary): the subject drives the
// real implementation over the scriptable ScriptedPurchasePort and returns the
// observable outcome the paired test asserts.

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U4 — a transaction that cannot be finished leaves the
/// subscription store as a `SubscriptionException`.
Future<Object?> subject_u4(String transactionId) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: PurchaseException.storeUnavailable('the acknowledgement failed'),
    ),
  );
  try {
    await store.finishPurchase(transactionId);
  } on Object catch (error) {
    return error;
  }
  return null;
}
