// GENERATED STUB — `zfa tdd gen U10` (spec 044-test-tdd-generation).
//
// behavior_id: U10
// source_criterion: FR-010, PurchaseSubscriptionStore.restore
// description: `PurchaseSubscriptionStore.restore()` MUST return one store purchase
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

/// Subject for behavior U10 — the subscription store replays two purchases.
Future<List<subs.StorePurchase>> subject_u10() async {
  final store = RecordingStoreApi(
    restoredTransactions: const [
      StoreTransaction(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 1,
      ),
      StoreTransaction(
        transactionId: 'tx-2',
        productId: 'pro.yearly',
        status: StoreTransactionStatus.restored,
        purchasedAt: 2,
      ),
    ],
  );
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
  );
  return subscriptionStore.restore();
}
