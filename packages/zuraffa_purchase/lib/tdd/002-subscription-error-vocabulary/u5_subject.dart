// GENERATED STUB — `zfa tdd gen U5` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U5
// source_criterion: FR-005, PurchaseSubscriptionStore.purchase
// description: The surfaced failure MUST preserve the machine code of the
//
// CONTRACT-DERIVED SUBJECT (issue #1259): the signature below is
// derived from the spec's declared Layer Contract:
//
//     purchase(PurchaseRequest) -> StorePurchase
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
// Declared parameters: purchaserequest: PurchaseRequest (non-existent entity types render as Object? until implemented)
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

import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U5 — every known purchase-domain code keeps its code
/// across the translation.
Future<List<({String from, String to})>> subject_u5() async {
  const codes = [
    'cancelled',
    'product_unavailable',
    'store_unavailable',
    'pending',
  ];
  final translated = <({String from, String to})>[];
  for (final code in codes) {
    final store = PurchaseSubscriptionStore(
      port: ScriptedPurchasePort(
        failure: PurchaseException(
          code,
          'the $code failure',
          recoverable: true,
        ),
      ),
    );
    Object? raised;
    try {
      await store.purchase(
        const subs.PurchaseRequest(productId: 'pro.monthly'),
      );
    } on Object catch (error) {
      raised = error;
    }
    translated.add((
      from: code,
      to: raised is subs.SubscriptionException ? raised.code : '',
    ));
  }
  return translated;
}
