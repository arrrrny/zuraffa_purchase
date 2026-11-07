// GENERATED TEST — `zfa tdd gen U6` (spec 044-test-tdd-generation).
//
// behavior_id: U6
// source_criterion: FR-006, SubscriptionService.hasEntitlement
// kind: unit
// description: The `PurchaseState` enum MUST gain a `revoked` value and a store
//
// Hand-delta (issue #1259 seam): the gate verdict is the declared scalar
// outcome; the revoked mapping/preservation asserts live in the subject.
// The capture keeps the stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'subjects/u6_subject.dart' as subject;

void main() {
  group('U6 (FR-006, SubscriptionService.hasEntitlement)', () {
    test(
      'U6 — The `PurchaseState` enum MUST gain a `revoked` value and a store',
      () async {
        final result = (() {
          try {
            return subject.subject_u6('u-6', 'pro.monthly');
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(isFalse));
      },
    );
  });
}
