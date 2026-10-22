// GENERATED TEST — `zfa tdd gen U5` (spec 044-test-tdd-generation).
//
// behavior_id: U5
// source_criterion: FR-005, PurchaseSubscriptionStore.purchase
// kind: unit
// description: The surfaced failure MUST preserve the machine code of the
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u5_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/002-subscription-error-vocabulary/u5_subject.dart'
    as subject;

void main() {
  group('U5 (FR-005, PurchaseSubscriptionStore.purchase)', () {
    test(
      'U5 — The surfaced failure MUST preserve the machine code of the',
      () async {
        final translated = await subject.subject_u5();
        expect(
          {for (final pair in translated) pair.from: pair.to},
          {
            'cancelled': 'cancelled',
            'product_unavailable': 'product_unavailable',
            'store_unavailable': 'store_unavailable',
            'pending': 'pending',
          },
          reason:
              'the machine code is what consumers branch on, so it survives '
              'the translation unchanged',
        );
      },
    );
  });
}
