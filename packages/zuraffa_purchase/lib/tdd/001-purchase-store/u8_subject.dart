// GENERATED STUB — `zfa tdd gen U8` (spec 044-test-tdd-generation).
//
// behavior_id: U8
// source_criterion: FR-008, PurchaseSubscriptionStore.fetchProducts
// description: `PurchaseSubscriptionStore.fetchProducts(List<String> ids)` MUST
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

/// Subject for behavior U8 — the subscription store's catalog.
Future<List<subs.Product>> subject_u8(List<String> productIds) async {
  final store = RecordingStoreApi(
    catalog: const [
      StoreProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
      ),
      StoreProduct(
        id: 'pro.yearly',
        title: 'Pro yearly',
        description: 'yearly plan',
        priceMicros: 49900000,
        currency: 'USD',
      ),
    ],
  );
  final subscriptionStore = PurchaseSubscriptionStore(
    port: StoreApiPurchasePort(store: store),
  );
  return subscriptionStore.fetchProducts(productIds);
}
