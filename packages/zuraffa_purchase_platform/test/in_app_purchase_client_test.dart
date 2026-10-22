import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_platform_interface/in_app_purchase_platform_interface.dart';
// The domain has a `PurchaseStatus` of its own — the plugin's one is the
// store's own vocabulary, which is what this test drives.
import 'package:zuraffa_purchase/zuraffa_purchase.dart' hide PurchaseStatus;
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

/// A scriptable stand-in for the store plugin.
///
/// The plugin's own API is a static singleton, so the fake takes its place
/// for the duration of the test.
class FakeInAppPurchasePlatform extends InAppPurchasePlatform {
  final StreamController<List<PurchaseDetails>> _controller =
      StreamController<List<PurchaseDetails>>.broadcast();

  /// The products the fake store offers.
  final Map<String, ProductDetails> catalog = <String, ProductDetails>{};

  /// The error the catalog query answers with.
  IAPError? queryError;

  /// Whether the store can be reached.
  bool available = true;

  /// Whether the store accepts a purchase request.
  bool acceptPurchase = true;

  /// The parameters the purchases were started with.
  final List<PurchaseParam> purchaseParams = <PurchaseParam>[];

  /// The purchases that were acknowledged.
  final List<PurchaseDetails> completed = <PurchaseDetails>[];

  @override
  Stream<List<PurchaseDetails>> get purchaseStream => _controller.stream;

  @override
  Future<bool> isAvailable() async => available;

  @override
  Future<ProductDetailsResponse> queryProductDetails(
    Set<String> identifiers,
  ) async {
    final error = queryError;
    if (error != null) {
      return ProductDetailsResponse(
        productDetails: const <ProductDetails>[],
        notFoundIDs: identifiers.toList(),
        error: error,
      );
    }
    return ProductDetailsResponse(
      productDetails: [
        for (final id in identifiers)
          if (catalog[id] != null) catalog[id]!,
      ],
      notFoundIDs: [
        for (final id in identifiers)
          if (catalog[id] == null) id,
      ],
    );
  }

  @override
  Future<bool> buyNonConsumable({required PurchaseParam purchaseParam}) async {
    purchaseParams.add(purchaseParam);
    return acceptPurchase;
  }

  @override
  Future<void> completePurchase(PurchaseDetails purchase) async {
    completed.add(purchase);
  }

  @override
  Future<void> restorePurchases({String? applicationUserName}) async {}

  /// Delivers a batch of purchases to the listeners.
  void emit(List<PurchaseDetails> purchases) => _controller.add(purchases);

  Future<void> close() => _controller.close();
}

ProductDetails _product(
  String id, {
  double rawPrice = 4.99,
  String currency = 'USD',
}) => ProductDetails(
  id: id,
  title: 'Pro $id',
  description: 'the $id plan',
  price: r'$4.99',
  rawPrice: rawPrice,
  currencyCode: currency,
);

PurchaseDetails _purchase(
  String productId, {
  String? purchaseID,
  PurchaseStatus status = PurchaseStatus.purchased,
  String? transactionDate = '1700000000000',
  bool pendingCompletePurchase = false,
}) {
  final details = PurchaseDetails(
    purchaseID: purchaseID,
    productID: productId,
    verificationData: PurchaseVerificationData(
      localVerificationData: 'local',
      serverVerificationData: 'server',
      source: 'test',
    ),
    transactionDate: transactionDate,
    status: status,
  );
  details.pendingCompletePurchase = pendingCompletePurchase;
  return details;
}

void main() {
  late FakeInAppPurchasePlatform platform;
  late InAppPurchase purchases;

  setUp(() {
    platform = FakeInAppPurchasePlatform();
    // The plugin registers the native store of the host platform the first
    // time it is asked for — which opens a real channel to a store that is
    // not there. A platform the plugin knows nothing about keeps it from
    // doing that, and the fake takes its place below.
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
    purchases = InAppPurchase.instance;
    InAppPurchasePlatform.instance = platform;
  });

  tearDown(() async {
    debugDefaultTargetPlatformOverride = null;
    await platform.close();
  });

  group('InAppPurchaseStoreClient', () {
    test('maps the catalog onto the store products', () async {
      platform.catalog['pro.monthly'] = _product('pro.monthly');
      final client = InAppPurchaseStoreClient(purchases: purchases);

      final products = await client.queryProducts({'pro.monthly'});

      expect(products, hasLength(1));
      expect(products.single.id, 'pro.monthly');
      expect(products.single.priceMicros, 4990000);
      expect(products.single.currency, 'USD');
    });

    test('reads the billing period of the product', () async {
      platform.catalog['pro.yearly'] = _product('pro.yearly');
      final client = InAppPurchaseStoreClient(
        purchases: purchases,
        periodResolver: (details) => details.id == 'pro.yearly' ? 'P1Y' : 'P1M',
      );

      final products = await client.queryProducts({'pro.yearly'});

      expect(products.single.period, 'P1Y');
    });

    test('reuses the catalog details for the purchase', () async {
      platform.catalog['pro.monthly'] = _product('pro.monthly');
      final client = InAppPurchaseStoreClient(purchases: purchases);

      await client.queryProducts({'pro.monthly'});
      await client.startPurchase(
        const StorePurchaseRequest(productId: 'pro.monthly'),
      );

      expect(platform.purchaseParams, hasLength(1));
      expect(platform.purchaseParams.single.productDetails.id, 'pro.monthly');
    });

    test('refuses a purchase of a product the store does not offer', () async {
      final client = InAppPurchaseStoreClient(purchases: purchases);

      await expectLater(
        client.startPurchase(
          const StorePurchaseRequest(productId: 'pro.ghost'),
        ),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'product_unavailable',
          ),
        ),
      );
    });

    test('reports a store that refused the purchase request', () async {
      platform.catalog['pro.monthly'] = _product('pro.monthly');
      platform.acceptPurchase = false;
      final client = InAppPurchaseStoreClient(purchases: purchases);

      await expectLater(
        client.startPurchase(
          const StorePurchaseRequest(productId: 'pro.monthly'),
        ),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'store_error',
          ),
        ),
      );
    });

    test('maps the store status onto the transaction status', () async {
      final client = InAppPurchaseStoreClient(purchases: purchases);
      final seen = <StoreTransaction>[];
      final subscription = client.transactionStream.listen(
        (batch) => seen.addAll(batch),
      );
      addTearDown(subscription.cancel);

      platform.emit([
        _purchase('pro.monthly', purchaseID: 'tx-purchased'),
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-pending',
          status: PurchaseStatus.pending,
        ),
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-cancelled',
          status: PurchaseStatus.canceled,
        ),
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-restored',
          status: PurchaseStatus.restored,
        ),
      ]);
      await Future<void>.delayed(Duration.zero);

      expect(seen.map((transaction) => transaction.status).toList(), [
        StoreTransactionStatus.purchased,
        StoreTransactionStatus.pending,
        StoreTransactionStatus.cancelled,
        StoreTransactionStatus.restored,
      ]);
    });

    test(
      'derives an id for a transaction the store reported without one',
      () async {
        final client = InAppPurchaseStoreClient(purchases: purchases);
        final seen = <StoreTransaction>[];
        final subscription = client.transactionStream.listen(
          (batch) => seen.addAll(batch),
        );
        addTearDown(subscription.cancel);

        platform.emit([
          _purchase('pro.monthly', transactionDate: '1700000000000'),
        ]);
        await Future<void>.delayed(Duration.zero);

        expect(seen.single.transactionId, 'pro.monthly@1700000000000');
      },
    );

    test(
      'falls back to the clock when the store reports no purchase date',
      () async {
        final client = InAppPurchaseStoreClient(
          purchases: purchases,
          now: () => 42,
        );
        final seen = <StoreTransaction>[];
        final subscription = client.transactionStream.listen(
          (batch) => seen.addAll(batch),
        );
        addTearDown(subscription.cancel);

        platform.emit([_purchase('pro.monthly', transactionDate: null)]);
        await Future<void>.delayed(Duration.zero);

        expect(seen.single.transactionId, 'pro.monthly@42');
        expect(seen.single.purchasedAt, 42);
      },
    );

    test('expiry of a yearly purchase is a year out', () async {
      platform.catalog['pro.yearly'] = _product('pro.yearly');
      final client = InAppPurchaseStoreClient(
        purchases: purchases,
        periodResolver: (details) => 'P1Y',
      );
      await client.queryProducts({'pro.yearly'});

      final seen = <StoreTransaction>[];
      final subscription = client.transactionStream.listen(
        (batch) => seen.addAll(batch),
      );
      addTearDown(subscription.cancel);

      platform.emit([_purchase('pro.yearly', purchaseID: 'tx-yearly')]);
      await Future<void>.delayed(Duration.zero);

      expect(seen.single.expiresAt, 1700000000000 + 365 * 24 * 60 * 60 * 1000);
    });

    test(
      'carries no expiry for a product the store reports no period for',
      () async {
        final client = InAppPurchaseStoreClient(purchases: purchases);
        final seen = <StoreTransaction>[];
        final subscription = client.transactionStream.listen(
          (batch) => seen.addAll(batch),
        );
        addTearDown(subscription.cancel);

        platform.emit([_purchase('pro.once', purchaseID: 'tx-once')]);
        await Future<void>.delayed(Duration.zero);

        expect(seen.single.expiresAt, isNull);
      },
    );

    test('maps a store error through the adapter seam', () async {
      platform.queryError = IAPError(
        source: 'test',
        code: 'storekit_no_response',
        message: 'the store did not answer',
      );
      final client = InAppPurchaseStoreClient(
        purchases: purchases,
        errorFactory: (error) => PurchaseException(
          'native_${error.code}',
          error.message,
          recoverable: false,
        ),
      );

      await expectLater(
        client.queryProducts({'pro.monthly'}),
        throwsA(
          isA<PurchaseException>()
              .having(
                (error) => error.code,
                'code',
                'native_storekit_no_response',
              )
              .having((error) => error.recoverable, 'recoverable', isFalse),
        ),
      );
    });

    test('maps a store error without a seam onto a store error', () async {
      platform.queryError = IAPError(
        source: 'test',
        code: 'storekit_no_response',
        message: 'the store did not answer',
      );
      final client = InAppPurchaseStoreClient(purchases: purchases);

      await expectLater(
        client.queryProducts({'pro.monthly'}),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'store_error',
          ),
        ),
      );
    });

    test('completes a purchase the store is waiting for', () async {
      final client = InAppPurchaseStoreClient(purchases: purchases);
      final subscription = client.transactionStream.listen((_) {});
      addTearDown(subscription.cancel);

      platform.emit([
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-1',
          pendingCompletePurchase: true,
        ),
      ]);
      await Future<void>.delayed(Duration.zero);

      await client.complete('tx-1');

      expect(platform.completed, hasLength(1));
      expect(platform.completed.single.purchaseID, 'tx-1');
    });

    test('never completes a purchase twice', () async {
      final client = InAppPurchaseStoreClient(purchases: purchases);
      final subscription = client.transactionStream.listen((_) {});
      addTearDown(subscription.cancel);

      platform.emit([
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-1',
          pendingCompletePurchase: true,
        ),
      ]);
      await Future<void>.delayed(Duration.zero);

      await client.complete('tx-1');
      await client.complete('tx-1');

      expect(platform.completed, hasLength(1));
    });

    test(
      'completes nothing for a transaction the store does not know',
      () async {
        final client = InAppPurchaseStoreClient(purchases: purchases);

        await client.complete('tx-unknown');

        expect(platform.completed, isEmpty);
      },
    );

    test('completes nothing for a pending purchase', () async {
      final client = InAppPurchaseStoreClient(purchases: purchases);
      final subscription = client.transactionStream.listen((_) {});
      addTearDown(subscription.cancel);

      platform.emit([
        _purchase(
          'pro.monthly',
          purchaseID: 'tx-pending',
          status: PurchaseStatus.pending,
          pendingCompletePurchase: true,
        ),
      ]);
      await Future<void>.delayed(Duration.zero);

      await client.complete('tx-pending');

      expect(platform.completed, isEmpty);
    });

    test(
      'completes nothing for a purchase the store no longer waits for',
      () async {
        final client = InAppPurchaseStoreClient(purchases: purchases);
        final subscription = client.transactionStream.listen((_) {});
        addTearDown(subscription.cancel);

        platform.emit([
          _purchase(
            'pro.monthly',
            purchaseID: 'tx-done',
            pendingCompletePurchase: false,
          ),
        ]);
        await Future<void>.delayed(Duration.zero);

        await client.complete('tx-done');

        expect(platform.completed, isEmpty);
      },
    );

    test(
      'hands the purchase being replaced to the plan-change builder',
      () async {
        platform.catalog['pro.monthly'] = _product('pro.monthly');
        PurchaseDetails? seenOldPurchase;
        final client = InAppPurchaseStoreClient(
          purchases: purchases,
          purchaseParamBuilder:
              ({required request, required product, required oldPurchase}) {
                seenOldPurchase = oldPurchase;
                return PurchaseParam(
                  productDetails: product,
                  applicationUserName: request.appAccountId,
                );
              },
        );

        final subscription = client.transactionStream.listen((_) {});
        addTearDown(subscription.cancel);
        platform.emit([_purchase('pro.monthly', purchaseID: 'tx-old')]);
        await Future<void>.delayed(Duration.zero);

        await client.startPurchase(
          const StorePurchaseRequest(
            productId: 'pro.monthly',
            oldPurchaseId: 'tx-old',
          ),
        );

        expect(seenOldPurchase?.purchaseID, 'tx-old');
        expect(platform.purchaseParams, hasLength(1));
      },
    );

    test('refuses a plan change when the store has no builder', () async {
      platform.catalog['pro.monthly'] = _product('pro.monthly');
      final client = InAppPurchaseStoreClient(purchases: purchases);

      await expectLater(
        client.startPurchase(
          const StorePurchaseRequest(
            productId: 'pro.monthly',
            oldPurchaseId: 'tx-old',
          ),
        ),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'plan_change_unsupported',
          ),
        ),
      );
      expect(platform.purchaseParams, isEmpty);
    });

    test(
      'refuses a plan change of a transaction the store did not report',
      () async {
        platform.catalog['pro.monthly'] = _product('pro.monthly');
        final client = InAppPurchaseStoreClient(
          purchases: purchases,
          purchaseParamBuilder:
              ({required request, required product, required oldPurchase}) =>
                  PurchaseParam(productDetails: product),
        );

        await expectLater(
          client.startPurchase(
            const StorePurchaseRequest(
              productId: 'pro.monthly',
              oldPurchaseId: 'tx-ghost',
            ),
          ),
          throwsA(
            isA<PurchaseException>().having(
              (error) => error.code,
              'code',
              'plan_change_unknown',
            ),
          ),
        );
        expect(platform.purchaseParams, isEmpty);
      },
    );
  });

  group('storePeriodDuration', () {
    test('reads the ISO-8601 durations', () {
      expect(storePeriodDuration('P1D'), const Duration(days: 1));
      expect(storePeriodDuration('P1W'), const Duration(days: 7));
      expect(storePeriodDuration('P1M'), const Duration(days: 31));
      expect(storePeriodDuration('P3M'), const Duration(days: 93));
      expect(storePeriodDuration('P1Y'), const Duration(days: 365));
    });

    test('has no duration for a label it does not read', () {
      expect(storePeriodDuration(null), isNull);
      expect(storePeriodDuration(''), isNull);
      expect(storePeriodDuration('monthly'), isNull);
      expect(storePeriodDuration('P0M'), isNull);
    });
  });
}
