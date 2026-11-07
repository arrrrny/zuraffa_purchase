// GENERATED TEST — `zfa tdd gen U5` (spec 044-test-tdd-generation).
//
// behavior_id: U5
// source_criterion: FR-005, SubscriptionService.entitlementsFor
// kind: unit
// description: Entitlement state derivation against the injectable clock MUST
//
// Hand-delta (issue #1259 seam): the derived entitlements are the declared
// outcome; the boundary asserts (active/grace/expired, custom window, null
// expiry, revoked preserved) live in the subject. The capture keeps the
// stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u5_subject.dart' as subject;

void main() {
  group('U5 (FR-005, SubscriptionService.entitlementsFor)', () {
    test(
      'U5 — Entitlement state derivation against the injectable clock MUST',
      () async {
        final result = (() {
          try {
            return subject.subject_u5('u-5');
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(everyElement(isA<Entitlement>())));
      },
    );
  });
}
