import 'catalog_product.dart';
import 'purchase_exception.dart';
import 'purchase_intent.dart';
import 'purchase_not_wired.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';
import 'purchase_status.dart';
import 'store_api.dart';

/// The [PurchasePort] over the platform-facing [StoreApi].
///
/// This is the bridge every platform adapter is used through: the adapter
/// supplies the [StoreApi], this class maps the store's dialect onto the
/// platform-neutral domain.
///
/// The store is either handed over directly ([store]) or looked up on every
/// call ([storeResolver]). The resolver form is what the composition root
/// uses: the store is looked up when the port is *used*, not when it is
/// resolved, so registering the adapter after the port does not pin the app
/// to an unwired port for the lifetime of the process.
class StoreApiPurchasePort implements PurchasePort {
  /// The store this port speaks to, when it was handed over directly.
  final StoreApi? store;

  /// Looks the store up when a call needs it.
  final StoreApi? Function()? storeResolver;

  const StoreApiPurchasePort({this.store, this.storeResolver});

  /// The store this call runs against.
  ///
  /// Null when no store has been registered — the caller fails with the
  /// typed [PurchaseNotWired] rather than hanging.
  StoreApi? get _store => store ?? storeResolver?.call();

  @override
  Future<List<CatalogProduct>> products(List<String> productIds) async {
    final api = _requireStore();
    if (!await api.isAvailable()) {
      throw PurchaseException.storeNotAvailable();
    }
    final products = await api.queryProducts(productIds.toSet());
    return [
      for (final product in products)
        CatalogProduct(
          id: product.id,
          title: product.title,
          description: product.description,
          priceMicros: product.priceMicros,
          currency: product.currency,
          period: product.period,
        ),
    ];
  }

  @override
  Future<PurchaseOutcome> purchase(PurchaseIntent intent) async {
    final api = _requireStore();
    // The catalog is queried once here: the store hands the product it
    // resolved to the purchase, so the purchase path does not query the
    // product a second time.
    final catalog = await products([intent.productId]);
    if (catalog.isEmpty) {
      throw PurchaseException.productUnavailable(intent.productId);
    }
    final transaction = await api.purchase(
      StorePurchaseRequest(
        productId: intent.productId,
        appAccountId: intent.appAccountId,
        oldPurchaseId: intent.oldPurchaseId,
      ),
    );
    if (transaction.status == StoreTransactionStatus.cancelled) {
      throw PurchaseException.cancelled();
    }
    if (transaction.status == StoreTransactionStatus.failed) {
      throw PurchaseException.storeError(
        transaction.errorMessage ?? 'the purchase failed',
      );
    }
    return _map(transaction);
  }

  @override
  Future<List<PurchaseOutcome>> restore() async {
    final api = _requireStore();
    final transactions = await api.restore();
    return [for (final transaction in transactions) _map(transaction)];
  }

  @override
  Future<void> finish(String transactionId) =>
      _requireStore().complete(transactionId);

  /// The store this call runs against, or the typed failure.
  StoreApi _requireStore() {
    final api = _store;
    if (api == null) throw const PurchaseNotWired();
    return api;
  }

  PurchaseOutcome _map(StoreTransaction transaction) => PurchaseOutcome(
    transactionId: transaction.transactionId,
    productId: transaction.productId,
    status: _mapStatus(transaction.status),
    purchasedAt: transaction.purchasedAt,
    expiresAt: transaction.expiresAt,
    pendingFinish: transaction.needsFinish,
    receipt: transaction.receipt,
  );

  PurchaseStatus _mapStatus(StoreTransactionStatus status) => switch (status) {
    StoreTransactionStatus.purchased => PurchaseStatus.purchased,
    StoreTransactionStatus.restored => PurchaseStatus.restored,
    StoreTransactionStatus.pending => PurchaseStatus.pending,
    StoreTransactionStatus.cancelled => PurchaseStatus.cancelled,
    StoreTransactionStatus.failed => PurchaseStatus.failed,
  };
}
