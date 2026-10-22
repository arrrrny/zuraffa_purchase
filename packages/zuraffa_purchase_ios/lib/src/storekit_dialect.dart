import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Reads the StoreKit billing period of a product.
///
/// StoreKit reports the period of a subscription on the product itself —
/// `SKProduct.subscriptionPeriod` — and a one-off product has none. The
/// label is an ISO-8601 duration, so a monthly plan reads `P1M` and a
/// yearly one `P1Y`.
String? storekitPeriod(ProductDetails details) {
  if (details is! AppStoreProductDetails) return null;
  final period = details.skProduct.subscriptionPeriod;
  if (period == null) return null;
  return 'P${period.numberOfUnits}${_suffix(period.unit)}';
}

/// The ISO-8601 suffix of a StoreKit period unit.
String _suffix(SKSubscriptionPeriodUnit unit) => switch (unit) {
  SKSubscriptionPeriodUnit.day => 'D',
  SKSubscriptionPeriodUnit.week => 'W',
  SKSubscriptionPeriodUnit.month => 'M',
  SKSubscriptionPeriodUnit.year => 'Y',
};

/// The StoreKit purchase parameter.
///
/// The App Store has no product-change path in `in_app_purchase_storekit`: a
/// plan change is made in the App Store itself and reaches the app through
/// the transaction stream. A purchase that asks to replace a subscription is
/// therefore refused — buying the target plan as a second purchase would
/// leave the user with both entitlements and charge them twice.
PurchaseParam storekitPurchaseParam({
  required StorePurchaseRequest request,
  required ProductDetails product,
  required PurchaseDetails? oldPurchase,
}) {
  if (oldPurchase != null) {
    throw PurchaseException.planChangeUnsupported(
      'the App Store cannot replace a subscription from the app',
    );
  }
  return PurchaseParam(
    productDetails: product,
    applicationUserName: request.appAccountId,
  );
}
