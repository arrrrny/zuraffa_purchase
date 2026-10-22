// GENERATED STUB — `zfa tdd gen U4` (spec 044-test-tdd-generation).
//
// behavior_id: U4
// source_criterion: FR-004, PurchaseService.purchase
// description: A cancelled store transaction MUST surface as a typed recoverable
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

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

StoreProduct _product(String id) => StoreProduct(
  id: id,
  title: 'Pro $id',
  description: 'desc',
  priceMicros: 4990000,
  currency: 'USD',
);

/// Subject for behavior U4 — a cancelled purchase and a deferred purchase.
Future<({PurchaseException? failure, PurchaseOutcome? outcome})>
subject_u4() async {
  final cancelled = RecordingStoreApi(
    catalog: [_product('pro.monthly')],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-cancelled',
      productId: request.productId,
      status: StoreTransactionStatus.cancelled,
      purchasedAt: 0,
    ),
  );
  PurchaseException? failure;
  try {
    await PurchaseService(
      port: StoreApiPurchasePort(store: cancelled),
    ).purchase(const PurchaseIntent(productId: 'pro.monthly'));
  } on PurchaseException catch (error) {
    failure = error;
  }

  final deferred = RecordingStoreApi(
    catalog: [_product('pro.monthly')],
    onPurchase: (request) async => StoreTransaction(
      transactionId: 'tx-pending',
      productId: request.productId,
      status: StoreTransactionStatus.pending,
      purchasedAt: 0,
    ),
  );
  final outcome = await PurchaseService(
    port: StoreApiPurchasePort(store: deferred),
  ).purchase(const PurchaseIntent(productId: 'pro.monthly'));
  return (failure: failure, outcome: outcome);
}
