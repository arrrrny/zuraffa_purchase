// GENERATED TEST — `zfa tdd gen U8` (spec 044-test-tdd-generation).
//
// behavior_id: U8
// source_criterion: FR-008, PurchaseSubscriptionStore.fetchProducts
// kind: unit
// description: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u8_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u8_subject.dart' as subject;

void main() {
  group('U8 (FR-008, PurchaseSubscriptionStore.fetchProducts)', () {
    test('U8 — `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST', () async {
      final products = await subject.subject_u8(
        const ['pro.monthly', 'pro.yearly'],
      );
      expect(products, hasLength(2));
      expect(products.first.id, 'pro.monthly');
      expect(products.first.storeId, 'pro.monthly');
      expect(products.first.title, 'Pro monthly');
      expect(products.first.description, 'monthly plan');
      expect(products.first.priceMicros, 4990000);
      expect(products.first.currency, 'USD');
      expect(products.first.period, 'P1M');
    });
  });
}
