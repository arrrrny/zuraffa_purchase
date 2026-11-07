// GENERATED STUB — `zfa tdd gen U7` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U7
// source_criterion: FR-007, SubscriptionException.code
// description: Store failures MUST surface as the typed
//
// Hand-implemented against the DECLARED contract
// `SubscriptionException.code() -> String`: the typed taxonomy travels
// with stable machine codes, a raised error grants nothing, and a
// returned pending outcome parks as a pending entitlement that never
// gates. Returns the pending code as the declared scalar outcome.
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

/// Subject for behavior U7 — declared contract:
/// `SubscriptionException.code() -> String`.
Future<String?> subject_u7() async {
  var clock = 1000;
  final store = InMemorySubscriptionStore(
    products: [_product('pro.monthly'), _product('boost.one')],
  );
  final subs = SubscriptionService(store: store, now: () => clock);
  Future<String> codeOf(Future<Object?> attempt) async {
    try {
      await attempt;
      fail('expected the store failure to surface as a typed error');
    } on SubscriptionException catch (error) {
      return error.code;
    }
  }

  // Unknown catalog id → product_unavailable, and nothing granted.
  final unavailable = await codeOf(
    subs.purchase(const PurchaseRequest(productId: 'ghost.product')),
  );
  expect(unavailable, 'product_unavailable');
  expect(await subs.entitlementsFor('ghost.product'), isEmpty);

  // Scripted typed errors keep their stable codes.
  store.setNextError(SubscriptionException.cancelled());
  expect(
    await codeOf(
      subs.purchase(const PurchaseRequest(productId: 'pro.monthly')),
    ),
    'cancelled',
  );
  store.setNextError(SubscriptionException.storeUnavailable('network down'));
  expect(
    await codeOf(
      subs.purchase(const PurchaseRequest(productId: 'pro.monthly')),
    ),
    'store_unavailable',
  );
  store.setNextError(SubscriptionException.pending());
  expect(
    await codeOf(
      subs.purchase(const PurchaseRequest(productId: 'pro.monthly')),
    ),
    'pending',
  );

  // The typed errors granted nothing.
  expect(await subs.entitlementsFor('txn-default'), isEmpty);

  // A RETURNED pending outcome parks as a pending entitlement: it never
  // gates and its null expiry is never clock-activated.
  store.setNextPurchase(
    const StorePurchase(
      transactionId: 'txn-7-pending',
      productId: 'pro.monthly',
      state: PurchaseState.pending,
      purchasedAt: 0,
    ),
  );
  await subs.purchase(
    const PurchaseRequest(productId: 'pro.monthly', appAccountUserId: 'u-7'),
  );
  clock = 9000000000000;
  final pending = await subs.entitlementsFor('u-7');
  expect(pending.single.state, EntitlementState.pending);
  expect(await subs.hasEntitlement('u-7', 'pro.monthly'), isFalse);
  return pending.single.state.name;
}
