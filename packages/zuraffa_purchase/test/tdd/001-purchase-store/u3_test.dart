// GENERATED TEST — `zfa tdd gen U3` (spec 044-test-tdd-generation).
//
// behavior_id: U3
// source_criterion: FR-003, PurchaseService.purchase
// kind: unit
// description: `PurchaseService.purchase(PurchaseIntent request)` MUST map a
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u3_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u3_subject.dart' as subject;

void main() {
  group('U3 (FR-003, PurchaseService.purchase)', () {
    test('U3 — `PurchaseService.purchase(PurchaseIntent request)` MUST map a', () async {
      final outcome = await subject.subject_u3();
      expect(outcome.status, PurchaseStatus.purchased);
      expect(outcome.transactionId, 'tx-1');
      expect(outcome.productId, 'pro.monthly');
      expect(outcome.purchasedAt, 1700000000000);
      expect(outcome.expiresAt, 1702592000000);
      expect(outcome.receipt, 'receipt-abc');
      expect(outcome.pendingFinish, isTrue,
          reason: 'a purchase is handed to the caller unacknowledged');
    });
  });
}
