// GENERATED TEST — `zfa tdd gen U6` (spec 044-test-tdd-generation).
//
// behavior_id: U6
// source_criterion: FR-006, PurchaseService.finish
// kind: unit
// description: `PurchaseService.finish(String transactionId)` MUST ask the store to
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u6_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u6_subject.dart'
    as subject;

void main() {
  group('U6 (FR-006, PurchaseService.finish)', () {
    test(
      'U6 — `PurchaseService.finish(String transactionId)` MUST ask the store to',
      () async {
        final completed = await subject.subject_u6('tx-1');
        expect(
          completed,
          ['tx-1', 'tx-unknown'],
          reason:
              'the store is asked to complete exactly the id it is given, '
              'and an unknown id completes without raising',
        );
      },
    );
  });
}
