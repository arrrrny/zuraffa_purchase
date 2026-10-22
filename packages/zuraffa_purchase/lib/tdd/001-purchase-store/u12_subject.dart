// GENERATED STUB — `zfa tdd gen U12` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U12
// source_criterion: FR-012, PurchaseException.code
// description: Store failures MUST surface as the typed `PurchaseException`
//
// CONTRACT-DERIVED SUBJECT (issue #1259): the signature below is
// derived from the spec's declared Layer Contract:
//
//     code() -> String
//
// The declared request and result types are preserved above: every
// declared type exists on disk and renders verbatim, import included —
// implement the body, never the signature. This is a MINIMAL
// COMPILABLE STUB: it does NOT satisfy the behavior — the paired test
// fails on first execution (honest red). Replace this stub body with
// the real implementation of the declared contract to make the test
// pass.
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

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U12 — the typed failure taxonomy.
Future<List<PurchaseException>> subject_u12() async {
  final exceptions = <PurchaseException>[
    PurchaseException.cancelled(),
    PurchaseException.productUnavailable('ghost.product'),
    PurchaseException.storeUnavailable('the purchase timed out'),
    PurchaseException.storeNotAvailable(),
    PurchaseException.pending(),
  ];

  final store = RecordingStoreApi();
  PurchaseException? raised;
  try {
    await PurchaseService(
      port: StoreApiPurchasePort(store: store),
    ).purchase(const PurchaseIntent(productId: 'ghost.product'));
  } on PurchaseException catch (error) {
    raised = error;
  }
  if (raised != null) {
    exceptions.add(raised);
  }
  return exceptions;
}
