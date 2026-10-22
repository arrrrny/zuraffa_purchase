// GENERATED IMPLEMENTATION — `zfa tdd compose A11` (issue
// #642; spec 052-acceptance-make-composition: the acceptance subject is
// composed against the feature's green / entity-wired unit subjects by a
// generation-pipeline step, never by a wrapper or by hand).
//
// behavior_id: A11
// source_criterion: AC-11
// composed against: U1 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u1_subject.dart), U2 (/Users/arrrrny/Developer/zuraffa_purchase/packages/zuraffa_purchase/lib/tdd/001-purchase-store/u2_subject.dart)
// description: a store purchase is returned in state `purchased`, carrying the transaction id, the product id, the purchase timestamp, the derived expiry and the receipt, and flagged `pendingFinish`.
//
// This replaces the `zfa tdd gen` stub with the minimal composed
// implementation (spec 047 FR-005): the feature's unit subjects are the
// implementation anchors. An anchor marked [entity-wired] carries only
// the `zfa tdd wire` wiring so far (issue #923) — the composed scenario's
// real green transition lands when those unit subjects are filled with
// business logic in later cycles. Extend the body with real behavior in
// later cycles — the paired test file is immutable (044 ownership).
//
// The subject name is derived from the behavior id (`subject_a11`) and is
// deliberately snake_cased — the generator KNOWS the name it emits, so
// the lint its shape provably trips is suppressed here rather than
// renaming the contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u1_subject.dart'
    as anchor0;
import 'package:zuraffa_purchase/tdd/001-purchase-store/u2_subject.dart'
    as anchor1;

/// Subject for behavior A11 — the acceptance scenario: the subscription
/// store purchases through the purchase port, and the store purchase comes
/// back in state `purchased` with the transaction id, the product id, the
/// purchase timestamp, the derived expiry, the receipt, and `pendingFinish`.
Future<void> subject_a11() async {
  // Composition anchor: references the feature's green unit subjects.
  // ignore: unused_local_variable
  final composedUnitAnchors = <Function>[
    anchor0.subject_u1,
    anchor1.subject_u2,
  ];

  final store = RecordingStoreApi(
    catalog: const [
      StoreProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
      ),
    ],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-1',
      productId: request.productId,
      status: StoreTransactionStatus.purchased,
      purchasedAt: 1700000000000,
      receipt: 'receipt-abc',
      needsFinish: true,
    ),
  );
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
    billingPeriod: const Duration(days: 31),
  );

  final purchase = await subscriptionStore.purchase(
    const subs.PurchaseRequest(productId: 'pro.monthly'),
  );

  expect(purchase.state, subs.PurchaseState.purchased);
  expect(purchase.transactionId, 'tx-1');
  expect(purchase.productId, 'pro.monthly');
  expect(purchase.purchasedAt, 1700000000000);
  expect(
    purchase.expiresAt,
    1700000000000 + const Duration(days: 31).inMilliseconds,
  );
  expect(purchase.receipt, 'receipt-abc');
  expect(purchase.pendingFinish, isTrue);
}
