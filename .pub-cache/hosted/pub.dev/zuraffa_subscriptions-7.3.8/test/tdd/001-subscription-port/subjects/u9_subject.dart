// GENERATED STUB — `zfa tdd gen U9` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U9
// source_criterion: FR-009, Entities.roundTrip
// description: The generated entities (`Product`, `Purchase`, `Entitlement`,
//
// Hand-implemented against the DECLARED contract `roundTrip() -> bool`:
// every generated entity round-trips toJson → fromJson preserving every
// field, copyWith replaces only the given fields, and equality is
// field-based. Returns the round-trip verdict as the declared outcome.
// ignore_for_file: non_constant_identifier_names
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

/// Subject for behavior U9 — declared contract: `roundTrip() -> bool`.
Future<bool> subject_u9() async {
  // Product: round-trip, copyWith, equality.
  final product = Product(
    id: 'pro',
    storeId: 'pro.monthly',
    title: 'Pro',
    description: 'The Pro tier',
    priceMicros: 4990000,
    currency: 'USD',
    period: 'P1M',
  );
  final productBack = Product.fromJson(product.toJson());
  expect(productBack, product, reason: 'Product round-trips');
  expect(product.priceMicros, 4990000);
  final rePriced = product.copyWith(priceMicros: 9990000);
  expect(rePriced.priceMicros, 9990000);
  expect(rePriced.title, 'Pro', reason: 'copyWith replaces only the given');
  expect(product, isNot(rePriced), reason: 'equality is field-based');

  // Purchase.
  final purchase = Purchase(
    id: 'p1',
    productId: 'pro.monthly',
    state: PurchaseState.purchased,
    purchasedAt: 1000,
    expiresAt: 2000,
    userId: 'u-9',
  );
  final purchaseBack = Purchase.fromJson(purchase.toJson());
  expect(purchaseBack, purchase, reason: 'Purchase round-trips');
  expect(purchaseBack.expiresAt, 2000);

  // Entitlement.
  final entitlement = Entitlement(
    id: 'ent-1',
    userId: 'u-9',
    productId: 'pro.monthly',
    state: EntitlementState.gracePeriod,
    grantedAt: 1000,
    expiresAt: 2000,
  );
  final entitlementBack = Entitlement.fromJson(entitlement.toJson());
  expect(entitlementBack, entitlement, reason: 'Entitlement round-trips');
  expect(entitlementBack.state, EntitlementState.gracePeriod);

  // EntitlementSnapshot carries its nested entitlements through JSON.
  final snapshot = EntitlementSnapshot(
    id: 'snapshot-u-9',
    userId: 'u-9',
    entitlements: [entitlement],
    generatedAt: 3000,
  );
  final snapshotBack = EntitlementSnapshot.fromJson(snapshot.toJson());
  // The snapshot round-trips every FIELD; the generated equality compares
  // list fields by identity, so the nested entitlements compare
  // element-wise (the documented raw entity contract — scalar-field
  // entities above pin whole-object field equality).
  expect(snapshotBack.id, snapshot.id);
  expect(snapshotBack.userId, snapshot.userId);
  expect(snapshotBack.generatedAt, snapshot.generatedAt);
  expect(snapshotBack.entitlements, hasLength(1));
  expect(snapshotBack.entitlements.single, entitlement);
  expect(snapshot.copyWith(generatedAt: 4000).generatedAt, 4000);
  return true;
}
