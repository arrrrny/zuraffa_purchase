// GENERATED TEST — `zfa tdd gen U2` (spec 044-test-tdd-generation).
//
// behavior_id: U2
// source_criterion: FR-002, PurchaseSubscriptionStore.purchase
// kind: unit
// description: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u2_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u2_subject.dart'
    as subject;

void main() {
  group('U2 (FR-002, PurchaseSubscriptionStore.purchase)', () {
    test(
      'U2 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST',
      () async {
        final error = await subject.subject_u2(
          const subs.PurchaseRequest(productId: 'pro.monthly'),
        );
        expect(
          error,
          isA<subs.SubscriptionException>(),
          reason:
              'the port speaks SubscriptionException, never PurchaseException',
        );
        expect(
          (error! as subs.SubscriptionException).code,
          'cancelled',
          reason: 'a cancelled purchase is a cancelled subscription failure',
        );
      },
    );
  });
}
