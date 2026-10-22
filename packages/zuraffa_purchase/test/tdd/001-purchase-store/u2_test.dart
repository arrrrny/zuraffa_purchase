// GENERATED TEST — `zfa tdd gen U2` (spec 044-test-tdd-generation).
//
// behavior_id: U2
// source_criterion: FR-002, PurchaseService.products
// kind: unit
// description: A store that reports itself unavailable MUST surface as a typed
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u2_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u2_subject.dart'
    as subject;

void main() {
  group('U2 (FR-002, PurchaseService.products)', () {
    test(
      'U2 — A store that reports itself unavailable MUST surface as a typed',
      () async {
        final error = await subject.subject_u2(const ['pro.monthly']);
        expect(
          error,
          isNotNull,
          reason:
              'a store that reports itself unavailable surfaces as a '
              'typed failure, not an empty catalog',
        );
        expect(error!.code, 'store_unavailable');
        expect(
          error.recoverable,
          isFalse,
          reason: 'a store that reports itself unavailable is not recoverable',
        );
      },
    );
  });
}
