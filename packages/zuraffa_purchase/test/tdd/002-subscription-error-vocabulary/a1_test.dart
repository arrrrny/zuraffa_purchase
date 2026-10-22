// GENERATED TEST — `zfa tdd gen A1` (spec 044-test-tdd-generation).
//
// behavior_id: A1
// source_criterion: AC-1
// kind: acceptance
// description: the failure surfaces as a `SubscriptionException` in code `store_unavailable`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a1_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A1:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a1_subject.dart'
    as subject;

void main() {
  group('A1 (AC-1)', () {
    test(
      'A1 — the failure surfaces as a `SubscriptionException` in code `store_unavailable`.',
      () async {
        final result = (() {
          try {
            return subject.subject_a1();
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        final outcome = await (result as Future<Object?>);
        expect(outcome, isA<subs.SubscriptionException>());
        expect(
          (outcome as subs.SubscriptionException).code,
          'store_unavailable',
          reason:
              'a store that cannot be reached surfaces as the port\'s own '
              'failure, in the port\'s own code',
        );
      },
    );
  });
}
