// GENERATED STUB — `zfa tdd gen U7` (spec 044-test-tdd-generation).
//
// behavior_id: U7
// source_criterion: FR-007, StoreApiPurchasePort.purchase
// description: The store status taxonomy MUST map onto `PurchaseStatus` as
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

/// Subject for behavior U7 — every store status is mapped onto its own
/// `PurchaseStatus`.
Future<List<PurchaseOutcome>> subject_u7() async {
  final store = RecordingStoreApi(
    restoredTransactions: const [
      StoreTransaction(
        transactionId: 'tx-purchased',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.purchased,
        purchasedAt: 1,
      ),
      StoreTransaction(
        transactionId: 'tx-restored',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 2,
      ),
      StoreTransaction(
        transactionId: 'tx-pending',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.pending,
        purchasedAt: 3,
      ),
      StoreTransaction(
        transactionId: 'tx-cancelled',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.cancelled,
        purchasedAt: 4,
      ),
      StoreTransaction(
        transactionId: 'tx-failed',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.failed,
        purchasedAt: 5,
      ),
    ],
  );
  return PurchaseService(port: StoreApiPurchasePort(store: store)).restore();
}
