// GENERATED TEST — `zfa tdd gen A3` (spec 044-test-tdd-generation).
//
// behavior_id: A3
// source_criterion: AC-3
// kind: acceptance
// description: the failure surfaces as a `SubscriptionException`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a3_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A3:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a3_subject.dart'
    as subject;

void main() {
  group('A3 (AC-3)', () {
    test('A3 — the failure surfaces as a `SubscriptionException`.', () async {
      final result = (() {
        try {
          return subject.subject_a3();
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
        reason: 'a restore that fails surfaces as the port\'s own failure',
      );
    });
  });
}
