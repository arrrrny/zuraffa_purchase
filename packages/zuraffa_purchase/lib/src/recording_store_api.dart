import 'dart:async';

import 'store_api.dart';

/// A scriptable [StoreApi] for tests — and for apps that drive the store
/// themselves.
///
/// Every call is recorded, and the outcomes are scripted by the caller:
///
/// ```dart
/// final store = RecordingStoreApi(
///   catalog: [StoreProduct(id: 'pro.monthly', ...)],
///   onPurchase: (request) async => StoreTransaction(
///     transactionId: 'tx-1',
///     productId: request.productId,
///     status: StoreTransactionStatus.purchased,
///     purchasedAt: 1700000000000,
///   ),
/// );
/// ```
class RecordingStoreApi implements StoreApi {
  /// Whether the store reports itself as reachable.
  bool available;

  /// The products the store offers.
  final List<StoreProduct> catalog;

  /// The transactions the store replays on [restore].
  final List<StoreTransaction> restoredTransactions;

  /// The purchase requests the port made, in order.
  final List<StorePurchaseRequest> purchaseRequests = [];

  /// The transaction ids the port asked the store to complete, in order.
  final List<String> completedTransactionIds = [];

  /// The outcome the store answers a purchase with. Defaults to a completed
  /// purchase of the requested product.
  final Future<StoreTransaction> Function(StorePurchaseRequest request)?
  onPurchase;

  final StreamController<List<StoreTransaction>> _controller =
      StreamController<List<StoreTransaction>>.broadcast();

  RecordingStoreApi({
    this.available = true,
    this.catalog = const [],
    this.restoredTransactions = const [],
    this.onPurchase,
  });

  /// Emits [transactions] on the store's transaction stream — for tests that
  /// need a transaction to arrive outside a purchase call.
  void emit(List<StoreTransaction> transactions) =>
      _controller.add(transactions);

  /// Closes the transaction stream.
  Future<void> close() => _controller.close();

  @override
  Future<void> dispose() => close();

  @override
  Stream<List<StoreTransaction>> get transactions => _controller.stream;

  @override
  Future<bool> isAvailable() async => available;

  @override
  Future<List<StoreProduct>> queryProducts(Set<String> productIds) async => [
    for (final product in catalog)
      if (productIds.contains(product.id)) product,
  ];

  @override
  Future<StoreTransaction> purchase(StorePurchaseRequest request) async {
    purchaseRequests.add(request);
    final handler = onPurchase;
    final transaction = handler == null
        ? StoreTransaction(
            transactionId: 'tx-${request.productId}',
            productId: request.productId,
            status: StoreTransactionStatus.purchased,
            purchasedAt: 0,
          )
        : await handler(request);
    _controller.add([transaction]);
    return transaction;
  }

  @override
  Future<List<StoreTransaction>> restore() async {
    _controller.add(restoredTransactions);
    return restoredTransactions;
  }

  @override
  Future<void> complete(String transactionId) async {
    completedTransactionIds.add(transactionId);
  }
}
