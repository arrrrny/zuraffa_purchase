// GENERATED TEST — `zfa tdd gen U6` (spec 044-test-tdd-generation).
//
// behavior_id: U6
// source_criterion: FR-006, PurchaseSubscriptionStore.purchase
// kind: unit
// description: A purchase-domain failure in an unrecognised code MUST surface as
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u6_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u6_subject.dart'
    as subject;

void main() {
  group('U6 (FR-006, PurchaseSubscriptionStore.purchase)', () {
    test(
      'U6 — A purchase-domain failure in an unrecognised code MUST surface as',
      () async {
        final error = await subject.subject_u6(
          const subs.PurchaseRequest(productId: 'pro.monthly'),
        );
        expect(error, isA<subs.SubscriptionException>());
        final failure = error! as subs.SubscriptionException;
        expect(
          failure.code,
          'store_unavailable',
          reason: 'an unknown failure is an unavailable store, never a success',
        );
        expect(
          failure.message,
          'the store answered 418',
          reason: 'the original detail survives the boundary',
        );
      },
    );
  });
}
