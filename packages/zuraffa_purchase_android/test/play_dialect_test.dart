import 'package:flutter_test/flutter_test.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
// The domain has a `PurchaseStatus` of its own — the plugin's one is the
// store's own vocabulary, which is what this test drives.
import 'package:zuraffa_purchase/zuraffa_purchase.dart' hide PurchaseStatus;
import 'package:zuraffa_purchase_android/zuraffa_purchase_android.dart';

GooglePlayProductDetails _subscription({
  String id = 'pro.monthly',
  List<PricingPhaseWrapper> pricingPhases = const [
    PricingPhaseWrapper(
      billingCycleCount: 1,
      billingPeriod: 'P7D',
      formattedPrice: '0',
      priceAmountMicros: 0,
      priceCurrencyCode: 'USD',
      recurrenceMode: RecurrenceMode.nonRecurring,
    ),
    PricingPhaseWrapper(
      billingCycleCount: 1,
      billingPeriod: 'P1M',
      formattedPrice: r'$4.99',
      priceAmountMicros: 4990000,
      priceCurrencyCode: 'USD',
      recurrenceMode: RecurrenceMode.infiniteRecurring,
    ),
  ],
}) => GooglePlayProductDetails.fromProductDetails(
  ProductDetailsWrapper(
    description: 'the plan',
    name: 'Pro',
    productId: id,
    productType: ProductType.subs,
    title: 'Pro $id',
    subscriptionOfferDetails: [
      SubscriptionOfferDetailsWrapper(
        basePlanId: 'base',
        offerTags: const [],
        offerIdToken: 'offer-token',
        pricingPhases: pricingPhases,
      ),
    ],
  ),
).single;

GooglePlayPurchaseDetails _playPurchase(String productId) =>
    GooglePlayPurchaseDetails(
      purchaseID: 'tx-old',
      productID: productId,
      verificationData: PurchaseVerificationData(
        localVerificationData: 'local',
        serverVerificationData: 'server',
        source: 'test',
      ),
      transactionDate: '1700000000000',
      status: PurchaseStatus.purchased,
      billingClientPurchase: const PurchaseWrapper(
        orderId: 'tx-old',
        packageName: 'com.zuraffa.purchase',
        purchaseTime: 1700000000000,
        purchaseToken: 'token',
        signature: 'signature',
        products: ['pro.monthly'],
        isAutoRenewing: true,
        originalJson: '{}',
        isAcknowledged: false,
        purchaseState: PurchaseStateWrapper.purchased,
      ),
    );

void main() {
  group('playPeriod', () {
    test('reads the period of the phase that recurs', () {
      expect(playPeriod(_subscription()), 'P1M');
    });

    test('reads the period of a yearly subscription', () {
      expect(
        playPeriod(
          _subscription(
            pricingPhases: const [
              PricingPhaseWrapper(
                billingCycleCount: 1,
                billingPeriod: 'P1Y',
                formattedPrice: r'$49.99',
                priceAmountMicros: 49990000,
                priceCurrencyCode: 'USD',
                recurrenceMode: RecurrenceMode.infiniteRecurring,
              ),
            ],
          ),
        ),
        'P1Y',
      );
    });

    test('has no period when the offer does not repeat', () {
      expect(
        playPeriod(
          _subscription(
            pricingPhases: const [
              PricingPhaseWrapper(
                billingCycleCount: 1,
                billingPeriod: 'P7D',
                formattedPrice: '0',
                priceAmountMicros: 0,
                priceCurrencyCode: 'USD',
                recurrenceMode: RecurrenceMode.nonRecurring,
              ),
            ],
          ),
        ),
        isNull,
      );
    });

    test('has no period for a product the store did not report as Play', () {
      final details = ProductDetails(
        id: 'pro.monthly',
        title: 'Pro',
        description: 'the plan',
        price: r'$4.99',
        rawPrice: 4.99,
        currencyCode: 'USD',
      );

      expect(playPeriod(details), isNull);
    });
  });

  group('playPurchaseParam', () {
    test('builds the purchase parameter of a plain purchase', () {
      final product = _subscription();

      final param = playPurchaseParam(
        request: const StorePurchaseRequest(
          productId: 'pro.monthly',
          appAccountId: 'user-1',
        ),
        product: product,
        oldPurchase: null,
      );

      expect(param, isA<PurchaseParam>());
      expect(param.productDetails, same(product));
      expect(param.applicationUserName, 'user-1');
    });

    test('replaces the subscription through a change subscription param', () {
      final param = playPurchaseParam(
        request: const StorePurchaseRequest(
          productId: 'pro.monthly',
          oldPurchaseId: 'tx-old',
        ),
        product: _subscription(),
        oldPurchase: _playPurchase('pro.monthly'),
      );

      expect(param, isA<GooglePlayPurchaseParam>());
      final change = (param as GooglePlayPurchaseParam).changeSubscriptionParam;
      expect(change, isNotNull);
      expect(change!.oldPurchaseDetails.purchaseID, 'tx-old');
    });

    test('refuses to replace a purchase the store did not report as Play', () {
      expect(
        () => playPurchaseParam(
          request: const StorePurchaseRequest(
            productId: 'pro.monthly',
            oldPurchaseId: 'tx-old',
          ),
          product: _subscription(),
          oldPurchase: PurchaseDetails(
            purchaseID: 'tx-old',
            productID: 'pro.monthly',
            verificationData: PurchaseVerificationData(
              localVerificationData: 'local',
              serverVerificationData: 'server',
              source: 'test',
            ),
            transactionDate: '1700000000000',
            status: PurchaseStatus.purchased,
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
    });
  });
}
