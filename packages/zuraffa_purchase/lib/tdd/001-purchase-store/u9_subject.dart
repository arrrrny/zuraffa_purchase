// GENERATED STUB — `zfa tdd gen U9` (spec 044-test-tdd-generation).
//
// behavior_id: U9
// source_criterion: FR-009, PurchaseSubscriptionStore.purchase
// description: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST
//
// This is a MINIMAL COMPILABLE STUB. It compiles cleanly (FR-011) but
// does NOT satisfy the behavior described above — the paired test will
// fail on first execution with an assertion-level failure (honest red).
// Replace this stub body with real implementation to make the test pass.
//
// The subject name is derived from the behavior id (`subject_u1`) and is
// deliberately snake_cased — the generator KNOWS the name it emits, so
// the lint its shape provably trips is suppressed here rather than
// renaming the contract surface (issue #1035).
// ignore_for_file: non_constant_identifier_names
library;

// IMPLEMENTED (spec 001-purchase-store): the subject drives the real
// implementation over the scriptable RecordingStoreApi and returns the
// observable outcome the paired test asserts.

import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Subject for behavior U9 — a completed and a deferred subscription purchase.
Future<({subs.StorePurchase purchased, subs.StorePurchase pending})> subject_u9() async {
  final catalog = const [
    StoreProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
    ),
  ];

  final completed = RecordingStoreApi(
    catalog: catalog,
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-1',
      productId: request.productId,
      status: StoreTransactionStatus.purchased,
      purchasedAt: 1700000000000,
      receipt: 'receipt-abc',
      needsFinish: true,
    ),
  );
  final deferred = RecordingStoreApi(
    catalog: catalog,
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-pending',
      productId: request.productId,
      status: StoreTransactionStatus.pending,
      purchasedAt: 1700000000000,
    ),
  );

  final purchased = await PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: completed),
    billingPeriod: const Duration(days: 31),
  ).purchase(const subs.PurchaseRequest(productId: 'pro.monthly'));
  final pending = await PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: deferred),
    billingPeriod: const Duration(days: 31),
  ).purchase(const subs.PurchaseRequest(productId: 'pro.monthly'));

  return (purchased: purchased, pending: pending);
}
