// GENERATED TEST — `zfa tdd gen U8` (spec 044-test-tdd-generation).
//
// behavior_id: U8
// source_criterion: FR-008, SubscriptionService.snapshotFor
// kind: unit
// description: `SubscriptionService.snapshotFor(userId)` MUST return a snapshot
//
// Hand-delta (issue #1259 seam): the snapshot is the declared outcome;
// id/clock/activeProductIds asserts live in the subject. The capture
// keeps the stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u8_subject.dart' as subject;

void main() {
  group('U8 (FR-008, SubscriptionService.snapshotFor)', () {
    test(
      'U8 — `SubscriptionService.snapshotFor(userId)` MUST return a snapshot',
      () async {
        final result = (() {
          try {
            return subject.subject_u8('u-8');
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(isA<EntitlementSnapshot>()));
      },
    );
  });
}
