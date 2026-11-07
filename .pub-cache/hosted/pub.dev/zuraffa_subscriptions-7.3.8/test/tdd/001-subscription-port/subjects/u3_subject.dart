// GENERATED STUB — `zfa tdd gen U3` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U3
// source_criterion: FR-003, SubscriptionService.finishPurchase
// description: `SubscriptionService.finishPurchase` MUST acknowledge via the
//
// Hand-implemented against the DECLARED contract
// `finishPurchase(StorePurchase) -> void`: acknowledging the store
// transaction is idempotent — a transaction already finished is not
// finished again.
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

/// Subject for behavior U3 — declared contract:
/// `finishPurchase(StorePurchase) -> void`.
Future<void> subject_u3(StorePurchase storepurchase) async {
  final store = InMemorySubscriptionStore(products: [_product('pro.monthly')]);
  final subs = SubscriptionService(store: store, now: () => 1000);

  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-u3',
      productId: 'pro.monthly',
      state: PurchaseState.purchased,
      purchasedAt: 1000,
    ),
  );
  final purchase = await subs.purchase(
    const PurchaseRequest(productId: 'pro.monthly'),
  );

  await subs.finishPurchase(purchase);
  await subs.finishPurchase(purchase);
  expect(store.finished, ['txn-u3'], reason: 'finishing is idempotent');
}
