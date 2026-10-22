import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// Reads the billing period of a product the store reported.
///
/// The period lives on the *federated* product details — StoreKit reports it
/// on `AppStoreProductDetails.skProduct.subscriptionPeriod`, Play Billing on
/// `GooglePlayProductDetails.subscriptionOfferDetails` — and the shared core
/// does not depend on either sibling, so the platform adapter that owns the
/// store supplies this reader.
///
/// The reader answers an ISO-8601 duration — `P1M`, `P3M`, `P1Y` — and null
/// for a product that is not a subscription.
typedef StorePeriodResolver = String? Function(ProductDetails details);

/// Builds the plugin's purchase parameter for a purchase.
///
/// The plan-change details are federated as well: Play Billing takes a
/// `GooglePlayPurchaseParam` with a `ChangeSubscriptionParam`, the App Store
/// has no product-change path at all. The adapter that owns the store builds
/// the parameter — and refuses the purchase, rather than buying the target
/// plan as a second one, when its store cannot replace a subscription.
///
/// [oldPurchase] is the purchase being replaced — the plugin's own details
/// for the transaction named by the request — and null when the request
/// replaces nothing.
typedef StorePurchaseParamBuilder =
    PurchaseParam Function({
      required StorePurchaseRequest request,
      required ProductDetails product,
      required PurchaseDetails? oldPurchase,
    });

/// Maps a native store error onto the domain's typed failure.
///
/// The platform's own taxonomy decides whether the failure is worth
/// retrying, so the adapter that owns the store supplies the mapping.
typedef StoreErrorFactory = PurchaseException Function(IAPError error);

/// The length of a billing period label such as `P1M` or `P1Y`.
///
/// Null when the label is not an ISO-8601 duration this package reads. A
/// month is 31 days and a year is 365 — the same lengths the domain's
/// billing-period fallback uses.
Duration? storePeriodDuration(String? label) {
  if (label == null) return null;
  final match = RegExp(r'^P(\d+)([DWMY])$').firstMatch(label.toUpperCase());
  if (match == null) return null;
  final count = int.tryParse(match.group(1)!);
  if (count == null || count <= 0) return null;
  return switch (match.group(2)) {
    'D' => Duration(days: count),
    'W' => Duration(days: 7 * count),
    'M' => Duration(days: 31 * count),
    'Y' => Duration(days: 365 * count),
    _ => null,
  };
}
