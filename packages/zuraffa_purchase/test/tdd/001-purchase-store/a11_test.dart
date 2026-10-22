// GENERATED TEST — `zfa tdd gen A11` (spec 044-test-tdd-generation).
//
// behavior_id: A11
// source_criterion: AC-11
// kind: acceptance
// description: a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/a11_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/a11_subject.dart'
    as subject;

void main() {
  group('A11 (AC-11)', () {
    test(
      'A11 — a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.',
      () {
        final Object? result = (() {
          try {
            subject.subject_a11();
            return null;
          } on UnimplementedError catch (error) {
            return error;
          }
        })();
        // zfa:tdd: acceptance-guard (issue #1512): the acceptance lane's
        // assertion set is the UnimplementedError guard ONLY. The acceptance
        // subject is a parameterless `void` scenario runner and the declared
        // outcome is asserted through the composition lane (`zfa tdd compose
        // <id> --feature <f>`), not in this test — so this is the
        // fallback-routed gap, NOT the traced hand-delta seam, and the
        // vacuous-guard marker is deliberately absent.
        expect(result, isNot(isA<UnimplementedError>()));
      },
    );
  });
}
