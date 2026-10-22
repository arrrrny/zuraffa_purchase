// GENERATED TEST — `zfa tdd gen U7` (spec 044-test-tdd-generation).
//
// behavior_id: U7
// source_criterion: FR-007, StoreApiPurchasePort.purchase
// kind: unit
// description: The store status taxonomy MUST map onto `PurchaseStatus` as
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u7_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u7_subject.dart'
    as subject;

void main() {
  group('U7 (FR-007, StoreApiPurchasePort.purchase)', () {
    test(
      'U7 — The store status taxonomy MUST map onto `PurchaseStatus` as',
      () async {
        final outcomes = await subject.subject_u7();
        expect(outcomes.map((outcome) => outcome.status).toList(), [
          PurchaseStatus.purchased,
          PurchaseStatus.restored,
          PurchaseStatus.pending,
          PurchaseStatus.cancelled,
          PurchaseStatus.failed,
        ], reason: 'every store status maps onto its own PurchaseStatus');
      },
    );
  });
}
