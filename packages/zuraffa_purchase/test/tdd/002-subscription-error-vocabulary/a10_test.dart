// GENERATED TEST — `zfa tdd gen A10` (spec 044-test-tdd-generation).
//
// behavior_id: A10
// source_criterion: AC-10
// kind: acceptance
// description: the result carries the same message.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a10_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A10:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a10_subject.dart'
    as subject;

void main() {
  group('A10 (AC-10)', () {
    test('A10 — the result carries the same message.', () async {
      final result = (() {
        try {
          return subject.subject_a10();
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      final outcome = await (result as Future<Object?>);
      expect(outcome, isA<subs.SubscriptionException>());
      expect(
        (outcome as subs.SubscriptionException).message,
        'the store answered 418',
        reason: 'the original detail survives the boundary',
      );
    });
  });
}
