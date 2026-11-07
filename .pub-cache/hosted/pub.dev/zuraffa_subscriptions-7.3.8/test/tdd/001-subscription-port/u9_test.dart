// GENERATED TEST — `zfa tdd gen U9` (spec 044-test-tdd-generation).
//
// behavior_id: U9
// source_criterion: FR-009, Entities.roundTrip
// kind: unit
// description: The generated entities (`Product`, `Purchase`, `Entitlement`,
//
// Hand-delta (issue #1259 seam): the round-trip verdict is the declared
// scalar outcome; per-entity round-trip/copyWith/equality asserts live
// in the subject. The capture keeps the stub's red an ASSERTION class.
library;

import 'package:test/test.dart';
import 'subjects/u9_subject.dart' as subject;

void main() {
  group('U9 (FR-009, Entities.roundTrip)', () {
    test(
      'U9 — The generated entities (`Product`, `Purchase`, `Entitlement`,',
      () async {
        final result = (() {
          try {
            return subject.subject_u9();
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(isTrue));
      },
    );
  });
}
