// GENERATED TEST — `zfa tdd gen A11` (spec 044-test-tdd-generation).
//
// behavior_id: A11
// source_criterion: AC-11
// kind: acceptance
// description: that failure propagates unchanged.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a11_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A11:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a11_subject.dart'
    as subject;

void main() {
  group('A11 (AC-11)', () {
    test('A11 — that failure propagates unchanged.', () async {
      final result = (() {
        try {
          return subject.subject_a11();
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      final outcome = await (result as Future<Object?>);
      expect(
        outcome,
        isA<FormatException>(),
        reason: 'only PurchaseException is translated',
      );
      expect(outcome, isNot(isA<subs.SubscriptionException>()));
    });
  });
}
