// GENERATED TEST — `zfa tdd gen U10` (spec 044-test-tdd-generation).
//
// behavior_id: U10
// source_criterion: FR-010, CompositionRoot.registerSubscriptionDependencies
// kind: unit
// description: The composition root `registerSubscriptionDependencies` MUST
//
// Hand-delta (issue #1259 seam): the declared contract returns void, so
// the observable outcome is the completion plus the singleton-identity
// asserts in the subject. The capture keeps the stub's red an ASSERTION
// class.
library;

import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'subjects/u10_subject.dart' as subject;

void main() {
  group('U10 (FR-010, CompositionRoot.registerSubscriptionDependencies)', () {
    test(
      'U10 — The composition root `registerSubscriptionDependencies` MUST',
      () async {
        final result = (() {
          try {
            return subject.subject_u10(GetIt.instance);
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completes);
      },
    );
  });
}
