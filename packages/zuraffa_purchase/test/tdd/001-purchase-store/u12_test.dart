// GENERATED TEST — `zfa tdd gen U12` (spec 044-test-tdd-generation).
//
// behavior_id: U12
// source_criterion: FR-012, PurchaseException.code
// kind: unit
// description: Store failures MUST surface as the typed `PurchaseException`
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u12_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u12_subject.dart'
    as subject;

void main() {
  group('U12 (FR-012, PurchaseException.code)', () {
    test(
      'U12 — Store failures MUST surface as the typed `PurchaseException`',
      () async {
        final exceptions = await subject.subject_u12();
        expect(
          exceptions.map((error) => error.code).toList(),
          containsAll(<String>[
            'cancelled',
            'product_unavailable',
            'store_unavailable',
            'pending',
          ]),
        );
        expect(
          exceptions
              .firstWhere((error) => error.code == 'cancelled')
              .recoverable,
          isTrue,
        );
        expect(
          exceptions
              .firstWhere((error) => error.code == 'product_unavailable')
              .recoverable,
          isFalse,
        );
        expect(
          exceptions.firstWhere((error) => error.code == 'pending').recoverable,
          isTrue,
        );
        expect(
          exceptions.where((error) => error.code == 'product_unavailable'),
          hasLength(2),
          reason:
              'a raised failure grants nothing and is never reported as a '
              'purchase',
        );
      },
    );
  });
}
