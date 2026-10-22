// GENERATED TEST — `zfa tdd gen U11` (spec 044-test-tdd-generation).
//
// behavior_id: U11
// source_criterion: FR-011, PurchaseSubscriptionStore.finishPurchase
// kind: unit
// description: `PurchaseSubscriptionStore.finishPurchase(String transactionId)`
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u11_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u11_subject.dart'
    as subject;

void main() {
  group('U11 (FR-011, PurchaseSubscriptionStore.finishPurchase)', () {
    test(
      'U11 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`',
      () async {
        final completed = await subject.subject_u11('tx-1');
        expect(
          completed,
          ['tx-1'],
          reason: 'the store is asked to complete exactly that transaction id',
        );
      },
    );
  });
}
