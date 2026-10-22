import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

void main() {
  group('RecordingStoreApi', () {
    test('records the purchase request it was given', () async {
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
      );

      await store.purchase(
        const StorePurchaseRequest(
          productId: 'pro.monthly',
          appAccountId: 'u-1',
        ),
      );

      expect(store.purchaseRequests, hasLength(1));
      expect(store.purchaseRequests.single.productId, 'pro.monthly');
      expect(store.purchaseRequests.single.appAccountId, 'u-1');
    });

    test(
      'answers a purchase with a tx-prefixed transaction for the product',
      () async {
        final store = RecordingStoreApi();

        final transaction = await store.purchase(
          const StorePurchaseRequest(productId: 'pro.monthly'),
        );

        expect(transaction.transactionId, 'tx-pro.monthly');
        expect(transaction.productId, 'pro.monthly');
        expect(transaction.status, StoreTransactionStatus.purchased);
      },
    );

    test(
      'publishes the purchased transaction on the transaction stream',
      () async {
        final store = RecordingStoreApi();
        final seen = <List<StoreTransaction>>[];
        final subscription = store.transactions.listen(seen.add);

        await store.purchase(
          const StorePurchaseRequest(productId: 'pro.monthly'),
        );
        await Future<void>.delayed(Duration.zero);

        await subscription.cancel();
        expect(seen, hasLength(1));
        expect(seen.single.single.transactionId, 'tx-pro.monthly');
      },
    );

    test(
      'publishes the restored transactions on the transaction stream',
      () async {
        final restored = [
          const StoreTransaction(
            transactionId: 'tx-old',
            productId: 'pro.monthly',
            status: StoreTransactionStatus.restored,
            purchasedAt: 1600000000000,
          ),
        ];
        final store = RecordingStoreApi(restoredTransactions: restored);
        final seen = <List<StoreTransaction>>[];
        final subscription = store.transactions.listen(seen.add);

        final result = await store.restore();
        await Future<void>.delayed(Duration.zero);

        await subscription.cancel();
        expect(result, hasLength(1));
        expect(result.single.transactionId, 'tx-old');
        expect(seen, hasLength(1));
        expect(seen.single.single.transactionId, 'tx-old');
      },
    );

    test(
      'records the transaction ids it was asked to complete, in order',
      () async {
        final store = RecordingStoreApi();

        await store.complete('tx-1');
        await store.complete('tx-2');

        expect(store.completedTransactionIds, ['tx-1', 'tx-2']);
      },
    );

    test('offers only the catalog products that were asked for', () async {
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

      final products = await store.queryProducts({'pro.monthly', 'unknown'});

      expect(products.map((product) => product.id), ['pro.monthly']);
    });

    test('reports its reachability', () async {
      expect(await RecordingStoreApi().isAvailable(), isTrue);
      expect(await RecordingStoreApi(available: false).isAvailable(), isFalse);
    });
  });

  group('PurchaseSubscriptionStore defaults', () {
    test(
      'derives the expiry from a 31-day billing period by default',
      () async {
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
          ),
        );

        final purchase = await PurchaseSubscriptionStore(
          port: StoreApiPurchasePort(store: store),
        ).purchase(const subs.PurchaseRequest(productId: 'pro.monthly'));

        expect(
          purchase.expiresAt,
          1700000000000 + const Duration(days: 31).inMilliseconds,
          reason: 'the default billing period is one month',
        );
      },
    );
  });
}
