// GENERATED TEST — `zfa tdd gen U4` (spec 044-test-tdd-generation).
//
// behavior_id: U4
// source_criterion: FR-004, PurchaseService.purchase
// kind: unit
// description: A cancelled store transaction MUST surface as a typed recoverable
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u4_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u4_subject.dart' as subject;

void main() {
  group('U4 (FR-004, PurchaseService.purchase)', () {
    test('U4 — A cancelled store transaction MUST surface as a typed recoverable', () async {
      final result = await subject.subject_u4();
      expect(result.failure, isNotNull,
          reason: 'a cancelled purchase is a typed failure');
      expect(result.failure!.code, 'cancelled');
      expect(result.failure!.recoverable, isTrue);
      expect(result.outcome, isNotNull,
          reason: 'a deferred purchase is never a failure');
      expect(result.outcome!.status, PurchaseStatus.pending);
      expect(result.outcome!.status, isNot(PurchaseStatus.purchased));
    });
  });
}
