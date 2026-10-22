import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart'
    show
        PurchaseException,
        StoreProduct,
        StorePurchaseRequest,
        StoreTransaction,
        StoreTransactionStatus;

import 'store_client.dart';

/// The [StoreClient] over `package:in_app_purchase`.
///
/// This is the adapter that speaks StoreKit (macOS/iOS) and Play Billing
/// (Android) — the two are both reached through the same plugin, and the
/// plugin's own federated siblings supply the native side.
///
/// The client owns the *dialect*: it maps `ProductDetails` and
/// `PurchaseDetails` onto the package's own store types. The flow — waiting
/// for a terminal transaction, settling a restore, acknowledging a purchase
/// — lives in `InAppPurchaseStoreApi`.
class InAppPurchaseStoreClient implements StoreClient {
  /// The plugin this client drives.
  final InAppPurchase purchases;

  /// The injectable clock (epoch ms) — the fallback timestamp when the store
  /// reports no purchase date.
  final int Function() now;

  /// Decides whether a native error code is worth retrying. Null means every
  /// native error is recoverable.
  final bool Function(String code)? isRecoverable;

  /// The transactions this client has seen, by transaction id, so a
  /// transaction can be acknowledged later.
  final Map<String, PurchaseDetails> _byTransactionId =
      <String, PurchaseDetails>{};

  InAppPurchaseStoreClient({
    InAppPurchase? purchases,
    int Function()? now,
    this.isRecoverable,
  }) : purchases = purchases ?? InAppPurchase.instance,
       now = now ?? _epochMillis;

  @override
  Stream<List<StoreTransaction>> get transactionStream => purchases
      .purchaseStream
      .map((batch) => [for (final details in batch) _map(details)]);

  @override
  Future<bool> isAvailable() => purchases.isAvailable();

  @override
  Future<List<StoreProduct>> queryProducts(Set<String> productIds) async {
    final response = await purchases.queryProductDetails(productIds);
    final error = response.error;
    if (error != null) {
      throw _error(error);
    }
    return [
      for (final details in response.productDetails)
        StoreProduct(
          id: details.id,
          title: details.title,
          description: details.description,
          // `rawPrice` is the unformatted price in full currency units; the
          // locale-formatted `price` is not parseable in every locale.
          priceMicros: (details.rawPrice * 1000000).round(),
          currency: details.currencyCode,
        ),
    ];
  }

  @override
  Future<void> startPurchase(StorePurchaseRequest request) async {
    final response = await purchases.queryProductDetails({request.productId});
    final error = response.error;
    if (error != null) {
      throw _error(error);
    }
    ProductDetails? product;
    for (final candidate in response.productDetails) {
      if (candidate.id == request.productId) {
        product = candidate;
        break;
      }
    }
    if (product == null) {
      throw PurchaseException.productUnavailable(request.productId);
    }
    final accepted = await purchases.buyNonConsumable(
      purchaseParam: PurchaseParam(
        productDetails: product,
        applicationUserName: request.appAccountId,
      ),
    );
    if (!accepted) {
      throw PurchaseException.storeUnavailable(
        'the store refused the purchase request',
      );
    }
  }

  @override
  Future<void> restore({String? applicationUserName}) =>
      purchases.restorePurchases(applicationUserName: applicationUserName);

  @override
  Future<void> complete(String transactionId) async {
    final details = _byTransactionId[transactionId];
    // A transaction the store does not know is a no-op — finishing is
    // idempotent.
    if (details == null) return;
    // A pending transaction cannot be completed; the store rejects it.
    if (details.status == PurchaseStatus.pending) return;
    await purchases.completePurchase(details);
  }

  /// Maps a native store error onto the package's typed failure.
  ///
  /// The platform's own taxonomy decides whether the failure is worth
  /// retrying; an unknown code is not.
  PurchaseException _error(IAPError error) {
    final classifier = isRecoverable;
    final recoverable = classifier == null ? true : classifier(error.code);
    return PurchaseException.storeUnavailable(
      '${error.message} (${error.code})',
      recoverable: recoverable,
    );
  }

  StoreTransaction _map(PurchaseDetails details) {
    final transactionId = details.purchaseID ?? _derivedId(details);
    _byTransactionId[transactionId] = details;
    return StoreTransaction(
      transactionId: transactionId,
      productId: details.productID,
      status: _status(details),
      purchasedAt: _timestamp(details),
      receipt: details.verificationData.serverVerificationData,
      needsFinish: details.pendingCompletePurchase,
      errorMessage: details.error?.message,
    );
  }

  StoreTransactionStatus _status(PurchaseDetails details) =>
      switch (details.status) {
        PurchaseStatus.purchased => StoreTransactionStatus.purchased,
        PurchaseStatus.restored => StoreTransactionStatus.restored,
        PurchaseStatus.pending => StoreTransactionStatus.pending,
        PurchaseStatus.canceled => StoreTransactionStatus.cancelled,
        PurchaseStatus.error => StoreTransactionStatus.failed,
      };

  int _timestamp(PurchaseDetails details) {
    final raw = details.transactionDate;
    if (raw != null) {
      final parsed = int.tryParse(raw);
      if (parsed != null) return parsed;
    }
    return now();
  }

  /// A stable id for a transaction the store reported without one — the
  /// product id and the purchase date, so the id is never blank.
  String _derivedId(PurchaseDetails details) =>
      '${details.productID}@${details.transactionDate ?? now()}';
}

int _epochMillis() => DateTime.now().millisecondsSinceEpoch;
