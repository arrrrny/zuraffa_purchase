// GENERATED TEST — `zfa tdd gen U1` (spec 044-test-tdd-generation).
//
// behavior_id: U1
// source_criterion: FR-001, SubscriptionService.products
// kind: unit
// description: `SubscriptionService.products` MUST return the store catalog
//
// Hand-delta (the designed seam, issue #1259): the declared contract's
// return (`List<Product>`) is not a scalar, so the declared assertion is
// the outcome the behavior names — the fetched catalog entries, awaited
// from the subject. The UnimplementedError capture stays so the stub's
// red is an ASSERTION failure (honest red), never a thrown-error class.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'subjects/u1_subject.dart' as subject;

void main() {
  group('U1 (FR-001, SubscriptionService.products)', () {
    test(
      'U1 — `SubscriptionService.products` MUST return the store catalog',
      () async {
        final result = (() {
          try {
            return subject.subject_u1(const [
              'boost.one',
              'ghost.product',
              'pro.monthly',
            ]);
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        // The stub's UnimplementedError surfaces as the assertion mismatch
        // (honest red); the real outcome assertion runs once implemented.
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(result, completion(everyElement(isA<Product>())));
      },
    );
  });
}
