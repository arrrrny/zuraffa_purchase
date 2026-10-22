// GENERATED TEST — `zfa tdd gen U4` (spec 044-test-tdd-generation).
//
// behavior_id: U4
// source_criterion: FR-004, PurchaseSubscriptionStore.finishPurchase
// kind: unit
// description: `PurchaseSubscriptionStore.finishPurchase(String transactionId)`
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u4_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u4_subject.dart'
    as subject;

void main() {
  group('U4 (FR-004, PurchaseSubscriptionStore.finishPurchase)', () {
    test(
      'U4 — `PurchaseSubscriptionStore.finishPurchase(String transactionId)`',
      () async {
        final error = await subject.subject_u4('tx-1');
        expect(
          error,
          isA<SubscriptionException>(),
          reason:
              'the port speaks SubscriptionException, never PurchaseException',
        );
        expect((error! as SubscriptionException).code, 'store_unavailable');
      },
    );
  });
}
