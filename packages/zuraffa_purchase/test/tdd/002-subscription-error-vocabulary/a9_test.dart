// GENERATED TEST — `zfa tdd gen A9` (spec 044-test-tdd-generation).
//
// behavior_id: A9
// source_criterion: AC-9
// kind: acceptance
// description: the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a9_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A9:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a9_subject.dart'
    as subject;

void main() {
  group('A9 (AC-9)', () {
    test(
      'A9 — the result carries code `store_unavailable` — an unknown failure is an unavailable store, never a success.',
      () async {
        final result = (() {
          try {
            return subject.subject_a9();
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
          reason: 'an unknown failure is an unavailable store, never a success',
        );
      },
    );
  });
}
