import '../../domain/entities/enums/purchase_state.dart';
import '../../domain/entities/product/product.dart';
import '../../domain/store/subscription_store.dart';

/// Pure-Dart default store (test/dev): a fully scriptable catalog.
class InMemorySubscriptionStore implements SubscriptionStorePort {
  /// Catalog by storeId.
  final Map<String, Product> catalog;

  /// Purchases this "user" already owns (restored/purchased).
  final List<StorePurchase> ownedPurchases = [];

  /// The outcome the next [purchase] resolves with, or a
  /// [SubscriptionException] to throw.
  Object /* StorePurchase | SubscriptionException */ nextOutcome;

  /// Purchases finished via [finishPurchase].
  final List<String> finished = [];

  /// The outcome every purchase falls back to once scripted outcome is
  /// consumed — one literal so the fallback and the reset stay identical.
  static const StorePurchase unscriptedOutcome = StorePurchase(
    transactionId: 'txn-default',
    productId: '',
    state: PurchaseState.purchased,
    purchasedAt: 0,
  );

  InMemorySubscriptionStore({
    List<Product> products = const [],
    StorePurchase? initialOutcome,
  }) : catalog = {for (final product in products) product.storeId: product},
       nextOutcome = initialOutcome ?? unscriptedOutcome;

  /// Scripting: the next purchase resolves with [purchase].
  void setNextPurchase(StorePurchase purchase) {
    nextOutcome = purchase;
  }

  /// Scripting: the next purchase throws [exception].
  void setNextError(SubscriptionException exception) {
    nextOutcome = exception;
  }

  /// Seeds an owned purchase (restore results / prior history).
  void addOwned(StorePurchase purchase) {
    ownedPurchases.add(purchase);
  }

  @override
  Future<List<Product>> fetchProducts(List<String> productIds) async {
    return [
      for (final id in productIds)
        if (catalog[id] != null) catalog[id]!,
    ];
  }

  @override
  Future<StorePurchase> purchase(PurchaseRequest request) async {
    if (catalog[request.productId] == null) {
      throw SubscriptionException.productUnavailable(request.productId);
    }
    final outcome = nextOutcome;
    nextOutcome = unscriptedOutcome;
    if (outcome is SubscriptionException) {
      throw outcome;
    }
    final purchase = outcome as StorePurchase;
    ownedPurchases.add(purchase);
    return purchase;
  }

  @override
  Future<List<StorePurchase>> restore() async =>
      List.unmodifiable(ownedPurchases);

  @override
  Future<void> finishPurchase(String transactionId) async {
    if (!finished.contains(transactionId)) {
      finished.add(transactionId);
    }
  }
}
