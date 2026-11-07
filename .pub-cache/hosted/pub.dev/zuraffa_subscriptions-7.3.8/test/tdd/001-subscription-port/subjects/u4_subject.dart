// GENERATED STUB — `zfa tdd gen U4` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U4
// source_criterion: FR-004, SubscriptionService.restoreFor
// description: `SubscriptionService.restoreFor(userId)` MUST return the store's
//
// Hand-implemented against the DECLARED contract
// `restoreFor(String) -> List<StorePurchase>`: restored purchases
// (re)grant one entitlement each under the passed userId, and a store
// outcome already reported as expired maps to EntitlementState.expired,
// never pending.
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

/// Subject for behavior U4 — declared contract:
/// `restoreFor(String) -> List<StorePurchase>`.
Future<Object?> subject_u4(String userId) async {
  final store = InMemorySubscriptionStore(
    products: [_product('pro.monthly'), _product('boost.one')],
  );
  final subs = SubscriptionService(store: store, now: () => 1000);

  store
    ..addOwned(
      const StorePurchase(
        transactionId: 'txn-r1',
        productId: 'pro.monthly',
        state: PurchaseState.restored,
        purchasedAt: 0,
        expiresAt: 9000000000000,
      ),
    )
    ..addOwned(
      const StorePurchase(
        transactionId: 'txn-r2',
        productId: 'boost.one',
        state: PurchaseState.expired,
        purchasedAt: 0,
      ),
    );

  final restored = await subs.restoreFor(userId);
  expect(restored, hasLength(2));

  final entitlements = await subs.entitlementsFor(userId);
  expect(entitlements, hasLength(2));
  final byProduct = {for (final e in entitlements) e.productId: e};
  expect(byProduct['pro.monthly']!.state, EntitlementState.active);
  expect(
    byProduct['boost.one']!.state,
    EntitlementState.expired,
    reason: 'a store-reported expired outcome maps expired, never pending',
  );
  expect(byProduct['boost.one']!.userId, userId);
  return restored;
}
