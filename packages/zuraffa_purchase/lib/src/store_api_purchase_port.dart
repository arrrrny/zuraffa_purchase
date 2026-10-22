import 'catalog_product.dart';
import 'purchase_exception.dart';
import 'purchase_intent.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';
import 'purchase_status.dart';
import 'store_api.dart';

/// The [PurchasePort] over the platform-facing [StoreApi].
///
/// This is the bridge every platform adapter is used through: the adapter
/// supplies the [StoreApi], this class maps the store's dialect onto the
/// platform-neutral domain.
class StoreApiPurchasePort implements PurchasePort {
  /// The store this port speaks to.
  final StoreApi store;

  const StoreApiPurchasePort({required this.store});

  @override
  Future<List<CatalogProduct>> products(List<String> productIds) async {
    if (!await store.isAvailable()) {
      throw PurchaseException.storeNotAvailable();
    }
    final products = await store.queryProducts(productIds.toSet());
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
    final catalog = await products([intent.productId]);
    if (catalog.isEmpty) {
      throw PurchaseException.productUnavailable(intent.productId);
    }
    final transaction = await store.purchase(
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
      throw PurchaseException.storeUnavailable(
        transaction.errorMessage ?? 'the purchase failed',
      );
    }
    return _map(transaction);
  }

  @override
  Future<List<PurchaseOutcome>> restore() async {
    final transactions = await store.restore();
    return [for (final transaction in transactions) _map(transaction)];
  }

  @override
  Future<void> finish(String transactionId) => store.complete(transactionId);

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
