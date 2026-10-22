// GENERATED TEST — `zfa tdd gen U5` (spec 044-test-tdd-generation).
//
// behavior_id: U5
// source_criterion: FR-005, PurchaseService.restore
// kind: unit
// description: `PurchaseService.restore()` MUST return every transaction the store
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u5_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u5_subject.dart'
    as subject;

void main() {
  group('U5 (FR-005, PurchaseService.restore)', () {
    test(
      'U5 — `PurchaseService.restore()` MUST return every transaction the store',
      () async {
        final outcomes = await subject.subject_u5();
        expect(outcomes, hasLength(2));
        expect(outcomes.map((outcome) => outcome.transactionId).toList(), [
          'tx-1',
          'tx-2',
        ]);
        expect(
          outcomes.map((outcome) => outcome.status).toList(),
          everyElement(PurchaseStatus.restored),
        );
      },
    );
  });
}
