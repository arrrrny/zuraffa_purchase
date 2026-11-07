// GENERATED STUB — `zfa tdd gen U2` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U2
// source_criterion: FR-002, SubscriptionService.purchase
// description: `SubscriptionService.purchase` MUST map a successful store
//
// Hand-implemented against the DECLARED contract
// `purchase(PurchaseRequest) -> StorePurchase`: the attributed purchase
// grants an ACTIVE entitlement owned by the request's appAccountUserId;
// an anonymous purchase falls back to the transaction id; a placeholder
// product id is corrected to the request's productId.
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

/// Subject for behavior U2 — declared contract:
/// `purchase(PurchaseRequest) -> StorePurchase`.
Future<Object?> subject_u2(PurchaseRequest purchaserequest) async {
  final store = InMemorySubscriptionStore(
    products: [_product('pro.monthly'), _product('boost.one')],
  );
  // Pinned clock: the derivation boundary is not the behavior under
  // test here (U5 owns it) — expiresAt is in the future of this clock.
  final subs = SubscriptionService(store: store, now: () => 1000);

  // Attributed: the granted entitlement belongs to the app account.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-u2',
      productId: 'pro.monthly',
      state: PurchaseState.purchased,
      purchasedAt: 1000,
      expiresAt: 1000 + 30 * 24 * 60 * 60 * 1000,
    ),
  );
  final purchase = await subs.purchase(purchaserequest);
  expect(purchase.transactionId, 'txn-u2');
  expect(purchase.productId, 'pro.monthly');

  final granted = await subs.entitlementsFor('u-1');
  expect(granted, hasLength(1), reason: 'the entitlement is the user\'s');
  expect(granted.single.id, 'ent-txn-u2');
  expect(granted.single.state, EntitlementState.active);
  expect(granted.single.expiresAt, 1000 + 30 * 24 * 60 * 60 * 1000);
  expect(await subs.hasEntitlement('u-1', 'pro.monthly'), isTrue);

  // Anonymous: the transaction id stands in as the owner.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-anon',
      productId: 'pro.monthly',
      state: PurchaseState.purchased,
      purchasedAt: 1000,
    ),
  );
  await subs.purchase(const PurchaseRequest(productId: 'pro.monthly'));
  expect(await subs.entitlementsFor('txn-anon'), hasLength(1));

  // Placeholder product id corrected to the request's productId.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-ph',
      productId: '',
      state: PurchaseState.purchased,
      purchasedAt: 1000,
    ),
  );
  final corrected = await subs.purchase(
    const PurchaseRequest(productId: 'boost.one'),
  );
  expect(corrected.productId, 'boost.one');
  return purchase;
}
