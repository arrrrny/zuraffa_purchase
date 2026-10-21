// GENERATED TEST — `zfa tdd gen U10` (spec 044-test-tdd-generation).
//
// behavior_id: U10
// source_criterion: FR-010, PurchaseSubscriptionStore.restore
// kind: unit
// description: `PurchaseSubscriptionStore.restore()` MUST return one store purchase
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u10_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/001-purchase-store/u10_subject.dart' as subject;

void main() {
  group('U10 (FR-010, PurchaseSubscriptionStore.restore)', () {
    test('U10 — `PurchaseSubscriptionStore.restore()` MUST return one store purchase', () async {
      final purchases = await subject.subject_u10();
      expect(purchases, hasLength(2));
      expect(
        purchases.map((purchase) => purchase.transactionId).toList(),
        ['tx-1', 'tx-2'],
      );
      expect(
        purchases.map((purchase) => purchase.state).toList(),
        everyElement(subs.PurchaseState.restored),
      );
    });
  });
}
