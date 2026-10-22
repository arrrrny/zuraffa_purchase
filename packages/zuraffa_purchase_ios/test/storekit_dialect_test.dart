import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
// The domain has a `PurchaseStatus` of its own — the plugin's one is the
// store's own vocabulary, which is what this test drives.
import 'package:zuraffa_purchase/zuraffa_purchase.dart' hide PurchaseStatus;
import 'package:zuraffa_purchase_ios/zuraffa_purchase_ios.dart';

AppStoreProductDetails _product({
  String id = 'pro.monthly',
  SKProductSubscriptionPeriodWrapper? period,
}) => AppStoreProductDetails(
  id: id,
  title: 'Pro $id',
  description: 'the $id plan',
  price: r'$4.99',
  rawPrice: 4.99,
  currencyCode: 'USD',
  currencySymbol: r'$',
  skProduct: SKProductWrapper(
    productIdentifier: id,
    localizedTitle: 'Pro $id',
    localizedDescription: 'the $id plan',
    priceLocale: SKPriceLocaleWrapper(
      currencySymbol: r'$',
      currencyCode: 'USD',
      countryCode: 'US',
    ),
    price: '4.99',
    subscriptionPeriod: period,
  ),
);

PurchaseDetails _purchase(String productId) => PurchaseDetails(
  purchaseID: 'tx-old',
  productID: productId,
  verificationData: PurchaseVerificationData(
    localVerificationData: 'local',
    serverVerificationData: 'server',
    source: 'test',
  ),
  transactionDate: '1700000000000',
  status: PurchaseStatus.purchased,
);

void main() {
  group('storekitPeriod', () {
    test('reads the period of a monthly subscription', () {
      final details = _product(
        period: SKProductSubscriptionPeriodWrapper(
          numberOfUnits: 1,
          unit: SKSubscriptionPeriodUnit.month,
        ),
      );

      expect(storekitPeriod(details), 'P1M');
    });

    test('reads the period of a quarterly subscription', () {
      final details = _product(
        period: SKProductSubscriptionPeriodWrapper(
          numberOfUnits: 3,
          unit: SKSubscriptionPeriodUnit.month,
        ),
      );

      expect(storekitPeriod(details), 'P3M');
    });

    test('reads the period of a yearly subscription', () {
      final details = _product(
        period: SKProductSubscriptionPeriodWrapper(
          numberOfUnits: 1,
          unit: SKSubscriptionPeriodUnit.year,
        ),
      );

      expect(storekitPeriod(details), 'P1Y');
    });

    test('has no period for a one-off product', () {
      expect(storekitPeriod(_product()), isNull);
    });

    test(
      'has no period for a product the store did not report as StoreKit',
      () {
        final details = ProductDetails(
          id: 'pro.monthly',
          title: 'Pro',
          description: 'the plan',
          price: r'$4.99',
          rawPrice: 4.99,
          currencyCode: 'USD',
        );

        expect(storekitPeriod(details), isNull);
      },
    );
  });

  group('storekitPurchaseParam', () {
    test('builds the purchase parameter of a plain purchase', () {
      final product = _product();

      final param = storekitPurchaseParam(
        request: const StorePurchaseRequest(
          productId: 'pro.monthly',
          appAccountId: 'user-1',
        ),
        product: product,
        oldPurchase: null,
      );

      expect(param.productDetails, same(product));
      expect(param.applicationUserName, 'user-1');
    });

    test('refuses to replace a subscription', () {
      expect(
        () => storekitPurchaseParam(
          request: const StorePurchaseRequest(
            productId: 'pro.monthly',
            oldPurchaseId: 'tx-old',
          ),
          product: _product(),
          oldPurchase: _purchase('pro.monthly'),
        ),
        throwsA(
          isA<PurchaseException>().having(
            (error) => error.code,
            'code',
            'plan_change_unsupported',
          ),
        ),
      );
    });
  });
}
