// GENERATED TEST — `zfa tdd gen U9` (spec 044-test-tdd-generation).
//
// behavior_id: U9
// source_criterion: FR-009, PurchaseSubscriptionStore.purchase
// kind: unit
// description: `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u9_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/tdd/001-purchase-store/u9_subject.dart'
    as subject;

void main() {
  group('U9 (FR-009, PurchaseSubscriptionStore.purchase)', () {
    test(
      'U9 — `PurchaseSubscriptionStore.purchase(PurchaseRequest request)` MUST',
      () async {
        final result = await subject.subject_u9();
        expect(result.purchased.state, subs.PurchaseState.purchased);
        expect(result.purchased.transactionId, 'tx-1');
        expect(result.purchased.productId, 'pro.monthly');
        expect(result.purchased.purchasedAt, 1700000000000);
        expect(
          result.purchased.expiresAt,
          1700000000000 + const Duration(days: 31).inMilliseconds,
          reason: 'the expiry is derived from the configured billing period',
        );
        expect(result.purchased.receipt, 'receipt-abc');
        expect(result.purchased.pendingFinish, isTrue);
        expect(result.pending.state, subs.PurchaseState.pending);
        expect(
          result.pending.expiresAt,
          isNull,
          reason: 'a pending purchase carries no expiry',
        );
      },
    );
  });
}
