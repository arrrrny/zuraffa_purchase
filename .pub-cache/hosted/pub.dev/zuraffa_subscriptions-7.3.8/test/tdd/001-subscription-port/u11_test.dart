// GENERATED TEST — `zfa tdd gen U11` (spec 044-test-tdd-generation).
//
// behavior_id: U11
// source_criterion: FR-011, InMemorySubscriptionStore.purchase
// kind: unit
// description: The `InMemorySubscriptionStore` default MUST honor: catalog
//
// Hand-delta (issue #1259 seam): the scripted store outcome is the
// declared outcome; catalog-gating/once-scripting/restore/finish asserts
// live in the subject. The capture keeps the stub's red an ASSERTION
// class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u11_subject.dart' as subject;

void main() {
  group('U11 (FR-011, InMemorySubscriptionStore.purchase)', () {
    test(
      'U11 — The `InMemorySubscriptionStore` default MUST honor: catalog',
      () async {
        final result = (() {
          try {
            return subject.subject_u11(
              const PurchaseRequest(productId: 'ghost.product'),
            );
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(isA<StorePurchase>()));
      },
    );
  });
}
