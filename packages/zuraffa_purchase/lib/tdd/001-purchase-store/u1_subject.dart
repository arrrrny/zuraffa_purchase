// GENERATED STUB — `zfa tdd gen U1` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U1
// source_criterion: FR-001, PurchaseService.products
// description: `PurchaseService.products(List<String> productIds)` MUST return the
//
// IMPLEMENTED (spec 001-purchase-store, FR-001): the subject drives the REAL
// PurchaseService over the scriptable RecordingStoreApi and asserts the
// observable contract — the offered ids only, each carrying its title, price
// and currency — before returning the fetched catalog as the declared outcome
// (`products(List<String>) -> List<CatalogProduct>`). The subject name is the
// generator's (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

StoreProduct _product(String id) => StoreProduct(
  id: id,
  title: 'Pro $id',
  description: 'desc',
  priceMicros: 4990000,
  currency: 'USD',
);

/// Subject for behavior U1 — declared contract:
/// `products(List<String>) -> List<CatalogProduct>`.
Future<Object?> subject_u1(List<String> productIds) async {
  final store = RecordingStoreApi(
    catalog: [_product('pro.monthly'), _product('boost.one')],
  );
  final service = PurchaseService(port: StoreApiPurchasePort(store: store));

  final products = await service.products(productIds);

  // The ids the store does not offer are absent; the offered ones travel
  // with their price and currency.
  expect(products.map((p) => p.id).toList(), ['pro.monthly', 'boost.one']);
  expect(products, everyElement(isA<CatalogProduct>()));
  expect(products.first.priceMicros, 4990000);
  expect(products.first.currency, 'USD');
  return products;
}
