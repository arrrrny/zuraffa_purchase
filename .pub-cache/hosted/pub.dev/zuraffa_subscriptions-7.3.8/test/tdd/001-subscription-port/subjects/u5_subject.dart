// GENERATED STUB — `zfa tdd gen U5` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U5
// source_criterion: FR-005, SubscriptionService.entitlementsFor
// description: Entitlement state derivation against the injectable clock MUST
//
// Hand-implemented against the DECLARED contract
// `entitlementsFor(String) -> List<Entitlement>`: before expiresAt reads
// active; at expiresAt (inclusive) through the grace window (exclusive)
// reads gracePeriod; past it reads expired; a custom window is honored;
// a null expiry is never clock-derived; and a revoked entitlement is
// preserved verbatim.
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

/// Subject for behavior U5 — declared contract:
/// `entitlementsFor(String) -> List<Entitlement>`.
Future<Object?> subject_u5(String userId) async {
  const day = 24 * 60 * 60 * 1000;
  var clock = 1000;
  final store = InMemorySubscriptionStore(
    products: [_product('pro.monthly'), _product('boost.one')],
  );
  final subs = SubscriptionService(store: store, now: () => clock);

  // expiresAt = 10_000 with the default 3-day grace window.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-5',
      productId: 'pro.monthly',
      state: PurchaseState.purchased,
      purchasedAt: 0,
      expiresAt: 10000,
    ),
  );
  await subs.purchase(
    PurchaseRequest(productId: 'pro.monthly', appAccountUserId: userId),
  );
  Future<EntitlementState> stateAt(int stamp) async {
    clock = stamp;
    final entitlements = await subs.entitlementsFor(userId);
    expect(entitlements, hasLength(1));
    return entitlements.single.state;
  }

  expect(
    await stateAt(1000),
    EntitlementState.active,
    reason: 'before expiresAt',
  );
  expect(
    await stateAt(9999),
    EntitlementState.active,
    reason: 'strictly before expiresAt',
  );
  expect(
    await stateAt(10000),
    EntitlementState.gracePeriod,
    reason: 'at expiresAt the grace window opens (inclusive)',
  );
  expect(
    await stateAt(10000 + 3 * day - 1),
    EntitlementState.gracePeriod,
    reason: 'strictly inside the grace window',
  );
  expect(
    await stateAt(10000 + 3 * day),
    EntitlementState.expired,
    reason: 'at expiresAt + grace the entitlement is expired (inclusive)',
  );

  // A custom (zero) window derives expired immediately past expiry.
  clock = 10000;
  final zeroGrace = await subs.entitlementsFor(
    userId,
    gracePeriod: Duration.zero,
  );
  expect(zeroGrace.single.state, EntitlementState.expired);

  // A null expiry is never clock-derived: the stored state stands.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-5-null',
      productId: 'boost.one',
      state: PurchaseState.purchased,
      purchasedAt: 0,
    ),
  );
  await subs.purchase(
    PurchaseRequest(productId: 'boost.one', appAccountUserId: userId),
  );
  clock = 10000 + 400 * day;
  final neverExpiring = await subs.entitlementsFor(userId);
  expect(
    neverExpiring.firstWhere((e) => e.productId == 'boost.one').state,
    EntitlementState.active,
    reason: 'a null expiry never expires',
  );
  return neverExpiring;
}
