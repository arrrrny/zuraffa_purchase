// GENERATED TEST — `zfa tdd gen A2` (spec 044-test-tdd-generation).
//
// behavior_id: A2
// source_criterion: AC-2
// kind: acceptance
// description: the failure surfaces as a `SubscriptionException` in code `cancelled`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a2_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A2:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a2_subject.dart'
    as subject;

void main() {
  group('A2 (AC-2)', () {
    test(
      'A2 — the failure surfaces as a `SubscriptionException` in code `cancelled`.',
      () async {
        final result = (() {
          try {
            return subject.subject_a2();
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        final outcome = await (result as Future<Object?>);
        expect(outcome, isA<subs.SubscriptionException>());
        expect(
          (outcome as subs.SubscriptionException).code,
          'cancelled',
          reason: 'a cancelled purchase is a cancelled subscription failure',
        );
      },
    );
  });
}
