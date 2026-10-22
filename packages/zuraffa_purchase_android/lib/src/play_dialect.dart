import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Reads the Play Billing billing period of a product.
///
/// Play Billing reports the period of a subscription on the pricing phase
/// that recurs — the first phase is often a free trial, which does not
/// repeat. The label is an ISO-8601 duration, so a monthly plan reads `P1M`
/// and a yearly one `P1Y`.
String? playPeriod(ProductDetails details) {
  if (details is! GooglePlayProductDetails) return null;
  final index = details.subscriptionIndex;
  final offers = details.productDetails.subscriptionOfferDetails;
  if (index == null || offers == null || index >= offers.length) return null;
  final phase = _recurringPhase(offers[index]);
  if (phase == null) return null;
  return phase.billingPeriod;
}

/// The pricing phase that repeats, if the offer has one.
PricingPhaseWrapper? _recurringPhase(SubscriptionOfferDetailsWrapper offer) {
  for (final phase in offer.pricingPhases) {
    if (phase.recurrenceMode != RecurrenceMode.nonRecurring) return phase;
  }
  return null;
}

/// The Play Billing purchase parameter.
///
/// Play Billing replaces a subscription through
/// `ChangeSubscriptionParam`: the purchase being replaced is handed to the
/// store together with the replacement mode, so an upgrade or a downgrade
/// replaces the old subscription instead of buying a second one.
PurchaseParam playPurchaseParam({
  required StorePurchaseRequest request,
  required ProductDetails product,
  required PurchaseDetails? oldPurchase,
}) {
  if (oldPurchase == null) {
    return PurchaseParam(
      productDetails: product,
      applicationUserName: request.appAccountId,
    );
  }
  if (oldPurchase is! GooglePlayPurchaseDetails) {
    throw PurchaseException.planChangeUnsupported(
      'the purchase being replaced was not reported as a Play Billing purchase',
    );
  }
  return GooglePlayPurchaseParam(
    productDetails: product,
    applicationUserName: request.appAccountId,
    changeSubscriptionParam: ChangeSubscriptionParam(
      oldPurchaseDetails: oldPurchase,
      replacementMode: ReplacementMode.withTimeProration,
    ),
  );
}
