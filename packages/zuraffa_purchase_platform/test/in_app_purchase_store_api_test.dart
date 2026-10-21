import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

/// A scriptable [StoreClient] — the transport seam the store flow runs over.
class FakeStoreClient implements StoreClient {
  final StreamController<List<StoreTransaction>> _controller =
      StreamController<List<StoreTransaction>>.broadcast();

  bool available = true;
  List<StoreProduct> catalog = const [];
  List<StoreTransaction> restored = const [];
  Object? startPurchaseError;
  Object? restoreError;
  final List<StorePurchaseRequest> purchaseRequests = [];
  final List<String> completed = [];

  @override
  Stream<List<StoreTransaction>> get transactionStream => _controller.stream;

  @override
  Future<bool> isAvailable() async => available;

  @override
  Future<List<StoreProduct>> queryProducts(Set<String> productIds) async => [
    for (final product in catalog)
      if (productIds.contains(product.id)) product,
  ];

  @override
  Future<void> startPurchase(StorePurchaseRequest request) async {
    purchaseRequests.add(request);
    final error = startPurchaseError;
    if (error != null) throw error;
  }

  @override
  Future<void> restore({String? applicationUserName}) async {
    final error = restoreError;
    if (error != null) throw error;
  }

  @override
  Future<void> complete(String transactionId) async {
    completed.add(transactionId);
  }

  void emit(List<StoreTransaction> transactions) =>
      _controller.add(transactions);

  Future<void> close() => _controller.close();
}

StoreTransaction _transaction(
  String id, {
  String productId = 'pro.monthly',
  StoreTransactionStatus status = StoreTransactionStatus.purchased,
}) => StoreTransaction(
  transactionId: id,
  productId: productId,
  status: status,
  purchasedAt: 0,
);

void main() {
  late FakeStoreClient client;

  setUp(() {
    client = FakeStoreClient();
  });

  tearDown(() async {
    await client.close();
  });

  group('InAppPurchaseStoreApi', () {
    test('reports the store availability', () async {
      final store = InAppPurchaseStoreApi(client: client);
      expect(await store.isAvailable(), isTrue);

      client.available = false;
      expect(await store.isAvailable(), isFalse);
    });

    test('queries the catalog through the client', () async {
      client.catalog = const [
        StoreProduct(
          id: 'pro.monthly',
          title: 'Pro monthly',
          description: 'monthly plan',
          priceMicros: 4990000,
          currency: 'USD',
        ),
      ];
      final store = InAppPurchaseStoreApi(client: client);

      final products = await store.queryProducts({'pro.monthly', 'ghost'});

      expect(products, hasLength(1));
      expect(products.single.id, 'pro.monthly');
    });

    test('resolves the purchase with the terminal transaction', () async {
      final store = InAppPurchaseStoreApi(
        client: client,
        purchaseTimeout: const Duration(seconds: 5),
      );

      final pending = store.purchase(
        const StorePurchaseRequest(productId: 'pro.monthly'),
      );
      client.emit([_transaction('tx-1')]);

      final transaction = await pending;
      expect(transaction.transactionId, 'tx-1');
      expect(client.purchaseRequests.single.productId, 'pro.monthly');
    });

    test('fails with a typed timeout when the purchase never settles',
        () async {
      final store = InAppPurchaseStoreApi(
        client: client,
        purchaseTimeout: const Duration(milliseconds: 80),
      );

      await expectLater(
        store.purchase(const StorePurchaseRequest(productId: 'pro.monthly')),
        throwsA(
          isA<PurchaseException>()
              .having((error) => error.code, 'code', 'store_unavailable')
              .having((error) => error.recoverable, 'recoverable', isTrue),
        ),
      );
    });

    test('propagates a store failure that happens while starting', () async {
      client.startPurchaseError = StateError('the store is unreachable');
      final store = InAppPurchaseStoreApi(
        client: client,
        purchaseTimeout: const Duration(seconds: 5),
      );

      await expectLater(
        store.purchase(const StorePurchaseRequest(productId: 'pro.monthly')),
        throwsA(isA<StateError>()),
      );
    });

    test('settles the restore after the quiet window', () async {
      final store = InAppPurchaseStoreApi(
        client: client,
        restoreQuietPeriod: const Duration(milliseconds: 80),
        restoreTimeout: const Duration(seconds: 5),
      );

      final pending = store.restore();
      client.emit([_transaction('tx-1')]);
      client.emit([_transaction('tx-2', status: StoreTransactionStatus.restored)]);

      final transactions = await pending;
      expect(
        transactions.map((transaction) => transaction.transactionId).toList(),
        ['tx-1', 'tx-2'],
      );
    });

    test('settles an empty restore when the store stays quiet', () async {
      final store = InAppPurchaseStoreApi(
        client: client,
        restoreQuietPeriod: const Duration(milliseconds: 60),
        restoreTimeout: const Duration(seconds: 5),
      );

      expect(await store.restore(), isEmpty);
    });

    test('propagates a store failure that happens while restoring', () async {
      client.restoreError = StateError('the store is unreachable');
      final store = InAppPurchaseStoreApi(
        client: client,
        restoreQuietPeriod: const Duration(milliseconds: 60),
        restoreTimeout: const Duration(seconds: 5),
      );

      await expectLater(store.restore(), throwsA(isA<StateError>()));
    });

    test('asks the client to complete the transaction', () async {
      final store = InAppPurchaseStoreApi(client: client);

      await store.complete('tx-1');

      expect(client.completed, ['tx-1']);
    });

    test('publishes the store transactions on its own stream', () async {
      final store = InAppPurchaseStoreApi(client: client);

      final published = store.transactions.first;
      client.emit([_transaction('tx-1')]);

      final batch = await published;
      expect(batch.single.transactionId, 'tx-1');
    });
  });
}
