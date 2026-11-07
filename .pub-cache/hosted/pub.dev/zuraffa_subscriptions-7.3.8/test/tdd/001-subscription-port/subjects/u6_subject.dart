// GENERATED STUB — `zfa tdd gen U6` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U6
// source_criterion: FR-006, SubscriptionService.hasEntitlement
// description: The `PurchaseState` enum MUST gain a `revoked` value and a store
//
// Hand-implemented against the DECLARED contract
// `hasEntitlement(String, String) -> bool`: a store outcome with state
// revoked maps to EntitlementState.revoked, is preserved verbatim by
// clock derivation (past any expiry), and never gates.
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

/// Subject for behavior U6 — declared contract:
/// `hasEntitlement(String, String) -> bool`.
Future<bool> subject_u6(String userId, String productId) async {
  var clock = 1000;
  final store = InMemorySubscriptionStore(products: [_product(productId)]);
  final subs = SubscriptionService(store: store, now: () => clock);

  // A revoked store outcome — granted then clawed back (refund).
  store.setNextPurchase(
    StorePurchase(
      transactionId: 'txn-6',
      productId: productId,
      state: PurchaseState.revoked,
      purchasedAt: 0,
      expiresAt: 9000,
    ),
  );
  await subs.purchase(
    PurchaseRequest(productId: productId, appAccountUserId: userId),
  );

  final entitlements = await subs.entitlementsFor(userId);
  expect(
    entitlements.single.state,
    EntitlementState.revoked,
    reason: 'a revoked outcome maps to EntitlementState.revoked',
  );

  // Preserved verbatim: past expiry the state is STILL revoked — clock
  // math never re-derives it to grace or expired.
  clock = 9000 + 400 * 24 * 60 * 60 * 1000;
  final farFuture = await subs.entitlementsFor(userId);
  expect(
    farFuture.single.state,
    EntitlementState.revoked,
    reason: 'revoked is preserved verbatim by derivation',
  );

  // The snapshot excludes it from the active product ids.
  final snapshot = await subs.snapshotFor(userId);
  expect(snapshot.activeProductIds, isEmpty);

  // And the gate stays shut.
  return subs.hasEntitlement(userId, productId);
}
