// GENERATED TEST — `zfa tdd gen U7` (spec 044-test-tdd-generation).
//
// behavior_id: U7
// source_criterion: FR-007, SubscriptionException.code
// kind: unit
// description: Store failures MUST surface as the typed
//
// Hand-delta (issue #1259 seam): the typed taxonomy travels with stable
// codes; the no-grant-on-error and pending-never-gates asserts live in
// the subject. The capture keeps the stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'subjects/u7_subject.dart' as subject;

void main() {
  group('U7 (FR-007, SubscriptionException.code)', () {
    test('U7 — Store failures MUST surface as the typed', () async {
      final result = (() {
        try {
          return subject.subject_u7();
        } on UnimplementedError catch (error) {
          return error;
        }
      })();
      expect(result, isNot(isA<UnimplementedError>()));
      await expectLater(result, completion('pending'));
    });
  });
}
