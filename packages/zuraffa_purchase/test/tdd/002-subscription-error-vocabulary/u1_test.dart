// GENERATED TEST — `zfa tdd gen U1` (spec 044-test-tdd-generation).
//
// behavior_id: U1
// source_criterion: FR-001, PurchaseSubscriptionStore.fetchProducts
// kind: unit
// description: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u1_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u1_subject.dart'
    as subject;

void main() {
  group('U1 (FR-001, PurchaseSubscriptionStore.fetchProducts)', () {
    test(
      'U1 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST',
      () async {
        final error = await subject.subject_u1(const ['pro.monthly']);
        expect(
          error,
          isA<SubscriptionException>(),
          reason:
              'the port speaks SubscriptionException, never PurchaseException',
        );
        expect(
          (error! as SubscriptionException).code,
          'store_unavailable',
          reason: 'the machine code survives the translation',
        );
      },
    );
  });
}
