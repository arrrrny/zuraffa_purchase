// GENERATED STUB — `zfa tdd gen U1` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U1
// source_criterion: FR-001, PurchaseSubscriptionStore.fetchProducts
// description: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
//
// CONTRACT-DERIVED SUBJECT (issue #1259): the signature below is
// derived from the spec's declared Layer Contract:
//
//     fetchProducts(List<String>) -> List<Product>
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
// Declared parameters: listString: List<String>
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

/// Subject for behavior U1 — a catalog query that fails leaves the
/// subscription store as a `SubscriptionException`.
Future<Object?> subject_u1(List<String> productIds) async {
  final store = PurchaseSubscriptionStore(
    port: ScriptedPurchasePort(
      failure: PurchaseException.storeUnavailable('the store is offline'),
    ),
  );
  try {
    await store.fetchProducts(productIds);
  } on Object catch (error) {
    return error;
  }
  return null;
}
