/// A purchase to launch.
class PurchaseIntent {
  /// The store product id to buy.
  final String productId;

  /// The app account the purchase is attributed to, for store-side fraud
  /// checks and receipt attribution. Null for an anonymous purchase.
  final String? appAccountId;

  /// The transaction id of the purchase being replaced — an upgrade or a
  /// downgrade. Null for a plain purchase.
  final String? oldPurchaseId;

  const PurchaseIntent({
    required this.productId,
    this.appAccountId,
    this.oldPurchaseId,
  });
}
