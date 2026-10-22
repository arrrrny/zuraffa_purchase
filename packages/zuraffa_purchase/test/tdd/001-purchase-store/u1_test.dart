// GENERATED TEST — `zfa tdd gen U1` (spec 044-test-tdd-generation).
//
// behavior_id: U1
// source_criterion: FR-001, PurchaseService.products
// kind: unit
// description: `PurchaseService.products(List<String> productIds)` MUST return the
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u1_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u1_subject.dart'
    as subject;

void main() {
  group('U1 (FR-001, PurchaseService.products)', () {
    test(
      'U1 — `PurchaseService.products(List<String> productIds)` MUST return the',
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
        expect(result, isNot(isA<UnimplementedError>()));
        await expectLater(
          result,
          completion(everyElement(isA<CatalogProduct>())),
        );
      },
    );
  });
}
