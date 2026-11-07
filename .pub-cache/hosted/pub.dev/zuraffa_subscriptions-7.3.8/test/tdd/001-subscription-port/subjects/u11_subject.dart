// GENERATED STUB — `zfa tdd gen U11` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U11
// source_criterion: FR-011, InMemorySubscriptionStore.purchase
// description: The `InMemorySubscriptionStore` default MUST honor: catalog
//
// Hand-implemented against the DECLARED contract
// `purchase(PurchaseRequest) -> StorePurchase`: catalog gating raises the
// typed product_unavailable, outcome scripting is consumed exactly once,
// restore returns an unmodifiable view of accumulated purchases, and the
// finish log is idempotent. Returns the default scripted outcome.
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

/// Subject for behavior U11 — declared contract:
/// `purchase(PurchaseRequest) -> StorePurchase`.
Future<Object?> subject_u11(PurchaseRequest request) async {
  final store = InMemorySubscriptionStore(products: [_product('pro.monthly')]);

  // Catalog gating: an id outside the catalog raises the typed error.
  await expectLater(
    store.purchase(request),
    throwsA(
      isA<SubscriptionException>().having(
        (e) => e.code,
        'code',
        'product_unavailable',
      ),
    ),
  );

  // Exactly-once scripting: the scripted error is consumed by ONE call,
  // then the default outcome stands.
  store.setNextError(SubscriptionException.cancelled());
  await expectLater(
    store.purchase(const PurchaseRequest(productId: 'pro.monthly')),
    throwsA(
      isA<SubscriptionException>().having((e) => e.code, 'code', 'cancelled'),
    ),
  );
  final defaultOutcome = await store.purchase(
    const PurchaseRequest(productId: 'pro.monthly'),
  );
  expect(
    defaultOutcome.transactionId,
    'txn-default',
    reason: 'scripting is consumed exactly once',
  );

  // Restore returns an unmodifiable view of the accumulated purchases.
  store
    ..addOwned(
      const StorePurchase(
        transactionId: 'txn-11a',
        productId: 'pro.monthly',
        state: PurchaseState.restored,
        purchasedAt: 0,
      ),
    )
    ..addOwned(
      const StorePurchase(
        transactionId: 'txn-11b',
        productId: 'pro.monthly',
        state: PurchaseState.purchased,
        purchasedAt: 0,
      ),
    );
  final restored = await store.restore();
  // The default outcome purchase above accumulated too (owned =
  // restored/purchased), so the view carries all three.
  expect(restored, hasLength(3));
  expect(
    () => restored.add(
      const StorePurchase(
        transactionId: 'x',
        productId: 'pro.monthly',
        state: PurchaseState.purchased,
        purchasedAt: 0,
      ),
    ),
    throwsUnsupportedError,
    reason: 'the restored view is unmodifiable',
  );

  // The finish log is idempotent at the port level.
  await store.finishPurchase('txn-11a');
  await store.finishPurchase('txn-11a');
  expect(store.finished, ['txn-11a']);
  return defaultOutcome;
}
