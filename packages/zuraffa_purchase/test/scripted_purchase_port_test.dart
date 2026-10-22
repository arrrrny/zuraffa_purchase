import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

void main() {
  group('ScriptedPurchasePort', () {
    test('offers the catalog, filtered by the requested ids', () async {
      final port = ScriptedPurchasePort(
        catalog: const [
          CatalogProduct(
            id: 'pro.monthly',
            title: 'Pro monthly',
            description: 'monthly plan',
            priceMicros: 4990000,
            currency: 'USD',
          ),
          CatalogProduct(
            id: 'boost.one',
            title: 'Boost',
            description: 'one-off boost',
            priceMicros: 999000,
            currency: 'USD',
          ),
        ],
      );

      final products = await port.products(['pro.monthly', 'ghost.product']);

      expect(products.map((product) => product.id), ['pro.monthly']);
    });

    test('answers a purchase with the scripted outcome', () async {
      final port = ScriptedPurchasePort(
        outcome: const PurchaseOutcome(
          transactionId: 'tx-1',
          productId: 'pro.monthly',
          status: PurchaseStatus.purchased,
          purchasedAt: 1700000000000,
        ),
      );

      final outcome = await port.purchase(
        const PurchaseIntent(productId: 'pro.monthly'),
      );

      expect(outcome.transactionId, 'tx-1');
      expect(outcome.status, PurchaseStatus.purchased);
    });

    test('records the purchase intents it was asked to purchase', () async {
      final port = ScriptedPurchasePort();

      await port.purchase(
        const PurchaseIntent(
          productId: 'pro.monthly',
          appAccountId: 'user-1',
          oldPurchaseId: 'tx-0',
        ),
      );

      expect(port.purchaseIntents, hasLength(1));
      expect(port.purchaseIntents.single.productId, 'pro.monthly');
      expect(port.purchaseIntents.single.appAccountId, 'user-1');
      expect(port.purchaseIntents.single.oldPurchaseId, 'tx-0');
    });

    test('replays the scripted purchases on restore', () async {
      final port = ScriptedPurchasePort(
        restored: const [
          PurchaseOutcome(
            transactionId: 'tx-1',
            productId: 'pro.monthly',
            status: PurchaseStatus.restored,
            purchasedAt: 1,
          ),
        ],
      );

      final purchases = await port.restore();

      expect(purchases.map((purchase) => purchase.transactionId), ['tx-1']);
    });

    test('records the transaction ids it was asked to finish', () async {
      final port = ScriptedPurchasePort();

      await port.finish('tx-1');

      expect(port.finishedTransactionIds, ['tx-1']);
    });

    test('raises the scripted failure instead of answering', () async {
      final port = ScriptedPurchasePort(failure: PurchaseException.cancelled());

      await expectLater(
        port.products(const ['pro.monthly']),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'cancelled',
          ),
        ),
      );
      await expectLater(
        port.purchase(const PurchaseIntent(productId: 'pro.monthly')),
        throwsA(isA<PurchaseException>()),
      );
      await expectLater(port.restore(), throwsA(isA<PurchaseException>()));
      await expectLater(port.finish('tx-1'), throwsA(isA<PurchaseException>()));
      // A finish that raised did not finish anything.
      expect(port.finishedTransactionIds, isEmpty);
    });
  });
}
