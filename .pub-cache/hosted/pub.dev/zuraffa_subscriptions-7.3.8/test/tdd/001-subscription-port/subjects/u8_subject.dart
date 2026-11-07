// GENERATED STUB — `zfa tdd gen U8` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U8
// source_criterion: FR-008, SubscriptionService.snapshotFor
// description: `SubscriptionService.snapshotFor(userId)` MUST return a snapshot
//
// Hand-implemented against the DECLARED contract
// `snapshotFor(String) -> EntitlementSnapshot`: the snapshot id, the
// user's derived entitlements, the clock-stamped generatedAt, and the
// deduplicated activeProductIds extension.
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

/// Subject for behavior U8 — declared contract:
/// `snapshotFor(String) -> EntitlementSnapshot`.
Future<Object?> subject_u8(String userId) async {
  var clock = 1000;
  final store = InMemorySubscriptionStore(
    products: [_product('pro.monthly'), _product('boost.one')],
  );
  final subs = SubscriptionService(store: store, now: () => clock);

  // Active forever + one inside the grace window + one expired.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-8a',
      productId: 'pro.monthly',
      state: PurchaseState.purchased,
      purchasedAt: 0,
    ),
  );
  await subs.purchase(
    PurchaseRequest(productId: 'pro.monthly', appAccountUserId: userId),
  );
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-8b',
      productId: 'boost.one',
      state: PurchaseState.purchased,
      purchasedAt: 0,
      expiresAt: 10000,
    ),
  );
  await subs.purchase(
    PurchaseRequest(productId: 'boost.one', appAccountUserId: userId),
  );
  clock = 10002; // boost.one is inside its grace window.

  final snapshot = await subs.snapshotFor(userId);
  expect(snapshot.id, 'snapshot-$userId');
  expect(snapshot.userId, userId);
  expect(snapshot.generatedAt, clock);
  expect(snapshot.entitlements, hasLength(2));
  expect(
    snapshot.entitlements.map((e) => e.state),
    containsAll([EntitlementState.active, EntitlementState.gracePeriod]),
  );
  expect(snapshot.activeProductIds, {
    'pro.monthly',
    'boost.one',
  }, reason: 'active and grace product ids, deduplicated');
  return snapshot;
}
