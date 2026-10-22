// GENERATED TEST — `zfa tdd gen U3` (spec 044-test-tdd-generation).
//
// behavior_id: U3
// source_criterion: FR-003, PurchaseSubscriptionStore.restore
// kind: unit
// description: `PurchaseSubscriptionStore.restore()` MUST surface a
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u3_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u3_subject.dart'
    as subject;

void main() {
  group('U3 (FR-003, PurchaseSubscriptionStore.restore)', () {
    test('U3 — `PurchaseSubscriptionStore.restore()` MUST surface a', () async {
      final error = await subject.subject_u3();
      expect(
        error,
        isA<SubscriptionException>(),
        reason:
            'the port speaks SubscriptionException, never PurchaseException',
      );
      expect((error! as SubscriptionException).code, 'store_unavailable');
    });
  });
}
