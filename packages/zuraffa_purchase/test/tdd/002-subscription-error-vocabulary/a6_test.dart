// GENERATED TEST — `zfa tdd gen A6` (spec 044-test-tdd-generation).
//
// behavior_id: A6
// source_criterion: AC-6
// kind: acceptance
// description: the result carries code `product_unavailable`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a6_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A6:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a6_subject.dart'
    as subject;

void main() {
  group('A6 (AC-6)', () {
    test('A6 — the result carries code `product_unavailable`.', () async {
      final result = (() {
        try {
          return subject.subject_a6();
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      final outcome = await (result as Future<Object?>);
      expect(outcome, 'product_unavailable');
    });
  });
}
