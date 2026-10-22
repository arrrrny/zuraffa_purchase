// GENERATED TEST — `zfa tdd gen U7` (spec 044-test-tdd-generation).
//
// behavior_id: U7
// source_criterion: FR-007, PurchaseSubscriptionStore.purchase
// kind: unit
// description: The translation MUST apply only to `PurchaseException`; any other
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u7_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u7_subject.dart'
    as subject;

void main() {
  group('U7 (FR-007, PurchaseSubscriptionStore.purchase)', () {
    test(
      'U7 — The translation MUST apply only to `PurchaseException`; any other',
      () async {
        final error = await subject.subject_u7(
          const subs.PurchaseRequest(productId: 'pro.monthly'),
        );
        expect(
          error,
          isA<FormatException>(),
          reason: 'only PurchaseException is translated',
        );
        expect(error, isNot(isA<subs.SubscriptionException>()));
        expect(
          (error! as FormatException).message,
          'the store answered with nonsense',
          reason: 'a failure the domain does not own travels untouched',
        );
      },
    );
  });
}
