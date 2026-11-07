// GENERATED TEST — `zfa tdd gen U4` (spec 044-test-tdd-generation).
//
// behavior_id: U4
// source_criterion: FR-004, SubscriptionService.restoreFor
// kind: unit
// description: `SubscriptionService.restoreFor(userId)` MUST return the store's
//
// Hand-delta (issue #1259 seam): the restored purchases are the declared
// outcome; attribution + expired-mapping asserts live in the subject.
// The UnimplementedError capture keeps the stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u4_subject.dart' as subject;

void main() {
  group('U4 (FR-004, SubscriptionService.restoreFor)', () {
    test(
      'U4 — `SubscriptionService.restoreFor(userId)` MUST return the store\'s',
      () async {
        final result = (() {
          try {
            return subject.subject_u4('u-4');
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(
          result,
          completion(everyElement(isA<StorePurchase>())),
        );
      },
    );
  });
}
