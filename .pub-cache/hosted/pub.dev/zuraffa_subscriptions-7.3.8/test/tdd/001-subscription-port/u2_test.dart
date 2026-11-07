// GENERATED TEST — `zfa tdd gen U2` (spec 044-test-tdd-generation).
//
// behavior_id: U2
// source_criterion: FR-002, SubscriptionService.purchase
// kind: unit
// description: `SubscriptionService.purchase` MUST map a successful store
//   outcome into a domain entitlement granted immediately, attributed to the
//   request's appAccountUserId (transaction id fallback), placeholder product
//   ids corrected to the request's productId.
//
// Hand-delta (the designed seam, issue #1259): the declared contract's
// return (`StorePurchase`) is not a scalar, so the declared assertion is the
// outcome the behavior names — the mapped store purchase, awaited from the
// subject; the entitlement attribution asserts live in the subject. The
// UnimplementedError capture stays so the stub's red is an ASSERTION
// failure (honest red), never a thrown-error class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u2_subject.dart' as subject;

void main() {
  group('U2 (FR-002, SubscriptionService.purchase)', () {
    test(
      'U2 — `SubscriptionService.purchase` MUST map a successful store',
      () async {
        final result = (() {
          try {
            return subject.subject_u2(
              const PurchaseRequest(
                productId: 'pro.monthly',
                appAccountUserId: 'u-1',
              ),
            );
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        // The stub's UnimplementedError surfaces as the assertion mismatch
        // (honest red); the real outcome assertion runs once implemented.
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(isA<StorePurchase>()));
      },
    );
  });
}
