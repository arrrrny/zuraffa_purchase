// GENERATED TEST — `zfa tdd gen A8` (spec 044-test-tdd-generation).
//
// behavior_id: A8
// source_criterion: AC-8
// kind: acceptance
// description: the result carries code `pending`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a8_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
// zfa:tdd: A8:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/a8_subject.dart'
    as subject;

void main() {
  group('A8 (AC-8)', () {
    test('A8 — the result carries code `pending`.', () async {
      final result = (() {
        try {
          return subject.subject_a8();
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      final outcome = await (result as Future<Object?>);
      expect(outcome, 'pending');
    });
  });
}
