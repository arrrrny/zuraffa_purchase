// GENERATED STUB — `zfa tdd gen U1` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U1
// source_criterion: FR-001, SubscriptionService.products
// description: `SubscriptionService.products` MUST return the store catalog
//
// IMPLEMENTED (spec 001-subscription-port, FR-001): the subject drives the
// REAL SubscriptionService against the scriptable InMemorySubscriptionStore
// and asserts the observable contract — request order preserved, unknown ids
// absent — before returning the fetched catalog as the declared outcome
// (`products(List<String>) -> List<Product>`). The subject name is the
// generator's (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

Product _product(String id) => Product(
  id: id,
  storeId: id,
  title: 'Pro $id',
  description: 'desc',
  priceMicros: 4990000,
  currency: 'USD',
  period: 'P1M',
);

/// Subject for behavior U1 — declared contract:
/// `products(List<String>) -> List<Product>`.
Future<Object?> subject_u1(List<String> productIds) async {
  final subs = SubscriptionService(
    store: InMemorySubscriptionStore(
      products: [_product('pro.monthly'), _product('boost.one')],
    ),
  );

  final products = await subs.products(productIds);

  // Request order preserved; unknown ids absent; the full entity travels.
  expect(products.map((p) => p.storeId).toList(), ['boost.one', 'pro.monthly']);
  expect(products, everyElement(isA<Product>()));
  expect(products.first.priceMicros, 4990000);
  expect(products.first.currency, 'USD');
  return products;
}
