// GENERATED TEST — `zfa tdd gen U3` (spec 044-test-tdd-generation).
//
// behavior_id: U3
// source_criterion: FR-003, SubscriptionService.finishPurchase
// kind: unit
// description: `SubscriptionService.finishPurchase` MUST acknowledge via the
//
// Hand-delta (the designed seam, issue #1259): the declared contract
// returns `void`, so the observable outcome is the completion itself plus
// the idempotency asserts the subject carries. The UnimplementedError
// capture stays so the stub's red is an ASSERTION failure (honest red).
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u3_subject.dart' as subject;

void main() {
  group('U3 (FR-003, SubscriptionService.finishPurchase)', () {
    test(
      'U3 — `SubscriptionService.finishPurchase` MUST acknowledge via the',
      () async {
        final result = (() {
          try {
            return subject.subject_u3(
              const StorePurchase(
                transactionId: 'txn-u3',
                productId: 'pro.monthly',
                state: PurchaseState.purchased,
                purchasedAt: 1000,
              ),
            );
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        // The stub's UnimplementedError surfaces as the assertion mismatch
        // (honest red); completion is the declared `void` outcome.
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completes);
      },
    );
  });
}
