/// The platform-facing store contract.
///
/// Adapters implement this over their own store — StoreKit on macOS/iOS,
/// Play Billing on Android — and the app-facing package maps it onto the
/// platform-neutral [PurchasePort].
///
/// The contract resolves outcomes, not just starts them: [purchase] returns
/// the terminal transaction for the product, and [restore] returns everything
/// the store replayed. The waiting — for the purchase sheet to close, for the
/// restore stream to go quiet — lives behind the contract, because it is the
/// part that differs per store.
abstract class StoreApi {
  const StoreApi();

  /// Whether the store can be reached at all.
  Future<bool> isAvailable();

  /// The products the store offers for [productIds]. Ids the store does not
  /// offer are simply absent from the result.
  Future<List<StoreProduct>> queryProducts(Set<String> productIds);

  /// Launches the purchase described by [request] and resolves with the
  /// terminal transaction for it.
  ///
  /// A deferred purchase resolves with a transaction in the
  /// [StoreTransactionStatus.pending] status; a dismissed purchase sheet
  /// resolves with the [StoreTransactionStatus.cancelled] status. Neither is
  /// an error — the caller maps them.
  Future<StoreTransaction> purchase(StorePurchaseRequest request);

  /// The transactions the store replays for this user.
  Future<List<StoreTransaction>> restore();

  /// Acknowledges [transactionId] on the store so it stops replaying it.
  Future<void> complete(String transactionId);

  /// The store's transaction stream — purchases, restores and the replay of
  /// unfinished transactions all arrive here.
  Stream<List<StoreTransaction>> get transactions;
}

/// A product as the store reports it.
class StoreProduct {
  /// The store's product id.
  final String id;

  /// The store's display title.
  final String title;

  /// The store's display description.
  final String description;

  /// The price in micro-units of [currency].
  final int priceMicros;

  /// The ISO currency code.
  final String currency;

  /// The billing period label, when the store reports one.
  final String? period;

  const StoreProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.priceMicros,
    required this.currency,
    this.period,
  });
}

/// The store's own outcome vocabulary.
enum StoreTransactionStatus {
  /// The store completed the purchase.
  purchased,

  /// The store replayed a purchase the user already owned.
  restored,

  /// The store deferred the purchase.
  pending,

  /// The user dismissed the purchase sheet.
  cancelled,

  /// The purchase failed.
  failed,
}

/// A purchase to launch at the store.
class StorePurchaseRequest {
  /// The store product id to buy.
  final String productId;

  /// The app account the purchase is attributed to.
  final String? appAccountId;

  /// The transaction id of the purchase being replaced.
  final String? oldPurchaseId;

  const StorePurchaseRequest({
    required this.productId,
    this.appAccountId,
    this.oldPurchaseId,
  });
}

/// A transaction event as the store reports it.
class StoreTransaction {
  /// The store's transaction identifier.
  final String transactionId;

  /// The store product id the transaction belongs to.
  final String productId;

  /// The store's outcome.
  final StoreTransactionStatus status;

  /// When the store says the purchase happened, in epoch milliseconds.
  final int purchasedAt;

  /// When the purchase expires, in epoch milliseconds. Null when the store
  /// does not report an expiry.
  final int? expiresAt;

  /// The receipt / server verification payload.
  final String? receipt;

  /// Whether the transaction still has to be acknowledged on the store side.
  final bool needsFinish;

  /// The store's error detail, when [status] is
  /// [StoreTransactionStatus.failed].
  final String? errorMessage;

  const StoreTransaction({
    required this.transactionId,
    required this.productId,
    required this.status,
    required this.purchasedAt,
    this.expiresAt,
    this.receipt,
    this.needsFinish = false,
    this.errorMessage,
  });
}
