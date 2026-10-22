import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart'
    show
        PurchaseException,
        StoreProduct,
        StorePurchaseRequest,
        StoreTransaction,
        StoreTransactionStatus;

import 'store_client.dart';
import 'store_dialect.dart';

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
///
/// The plugin's federated siblings carry the store-specific knowledge — the
/// billing period of a product, the plan-change purchase parameter, the
/// native error taxonomy — and the shared core does not depend on them, so
/// the platform adapter supplies them: [periodResolver],
/// [purchaseParamBuilder] and [errorFactory].
class InAppPurchaseStoreClient implements StoreClient {
  /// The plugin this client drives.
  final InAppPurchase purchases;

  /// The injectable clock (epoch ms) — the fallback timestamp when the store
  /// reports no purchase date.
  final int Function() now;

  /// Reads the billing period of a product the store reported.
  final StorePeriodResolver? periodResolver;

  /// Builds the plugin's purchase parameter, including the plan change when
  /// the request replaces a subscription.
  final StorePurchaseParamBuilder? purchaseParamBuilder;

  /// Maps a native store error onto the domain's typed failure.
  final StoreErrorFactory? errorFactory;

  /// The transactions this client has seen, by transaction id, so a
  /// transaction can be acknowledged later.
  final Map<String, PurchaseDetails> _byTransactionId =
      <String, PurchaseDetails>{};

  /// The billing period of the products this client has seen, by product id.
  ///
  /// The store reports the period of a product with the product, not with
  /// the transaction, so the label is kept here: it is what turns a
  /// transaction into a purchase with an expiry.
  final Map<String, String?> _periods = <String, String?>{};

  /// The product details the client has resolved, by product id.
  ///
  /// The store is asked for a product once: the catalog query resolves the
  /// details and the purchase reuses them, so buying a product the app just
  /// listed does not query the store for it a second time. A catalog query
  /// refreshes the entry.
  final Map<String, ProductDetails> _productDetails =
      <String, ProductDetails>{};

  InAppPurchaseStoreClient({
    InAppPurchase? purchases,
    int Function()? now,
    this.periodResolver,
    this.purchaseParamBuilder,
    this.errorFactory,
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
          period: _rememberProduct(details),
        ),
    ];
  }

  @override
  Future<void> startPurchase(StorePurchaseRequest request) async {
    final product = await _product(request.productId);
    if (product == null) {
      throw PurchaseException.productUnavailable(request.productId);
    }
    final accepted = await purchases.buyNonConsumable(
      purchaseParam: _purchaseParam(request: request, product: product),
    );
    if (!accepted) {
      throw PurchaseException.storeError(
        'the store refused the purchase request',
      );
    }
  }

  /// The store's own details for [productId].
  ///
  /// The details the last catalog query resolved are reused, so a purchase
  /// does not ask the store for a product the app just listed. A product the
  /// client never saw is queried once.
  Future<ProductDetails?> _product(String productId) async {
    final cached = _productDetails[productId];
    if (cached != null) return cached;
    final response = await purchases.queryProductDetails({productId});
    final error = response.error;
    if (error != null) {
      throw _error(error);
    }
    for (final candidate in response.productDetails) {
      if (candidate.id == productId) {
        _rememberProduct(candidate);
        return candidate;
      }
    }
    return null;
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
    // A purchase the store no longer waits for has been acknowledged
    // already. The plugin throws when a purchase cannot be finished, so the
    // documented no-op has to be decided here.
    if (!details.pendingCompletePurchase) return;
    await purchases.completePurchase(details);
    // The transaction is acknowledged — it is never finished twice, so it
    // does not have to be kept.
    _byTransactionId.remove(transactionId);
  }

  /// The purchase parameter for [request].
  ///
  /// A request that replaces a subscription is handed to the adapter's
  /// builder together with the purchase being replaced. A store that cannot
  /// replace a subscription refuses the request — it never buys the target
  /// plan as a second purchase, which would leave the user with both
  /// entitlements.
  PurchaseParam _purchaseParam({
    required StorePurchaseRequest request,
    required ProductDetails product,
  }) {
    final builder = purchaseParamBuilder;
    final oldPurchaseId = request.oldPurchaseId;
    if (builder == null) {
      if (oldPurchaseId != null) {
        throw PurchaseException.planChangeUnsupported(
          'the store was not given a plan-change builder',
        );
      }
      return PurchaseParam(
        productDetails: product,
        applicationUserName: request.appAccountId,
      );
    }
    return builder(
      request: request,
      product: product,
      oldPurchase: _oldPurchase(oldPurchaseId),
    );
  }

  /// The purchase being replaced, as the plugin reported it.
  ///
  /// Null when the request replaces nothing. The store has to report the
  /// old transaction before it can be replaced — usually through the replay
  /// of the unfinished purchases at launch.
  PurchaseDetails? _oldPurchase(String? oldPurchaseId) {
    if (oldPurchaseId == null) return null;
    final details = _byTransactionId[oldPurchaseId];
    if (details == null) {
      throw PurchaseException.planChangeUnknown(
        'the store did not report the transaction "$oldPurchaseId"',
      );
    }
    return details;
  }

  /// Maps a native store error onto the package's typed failure.
  ///
  /// The platform's own taxonomy decides whether the failure is worth
  /// retrying; an unknown code is not.
  PurchaseException _error(IAPError error) {
    final factory = errorFactory;
    if (factory != null) return factory(error);
    return PurchaseException.storeError('${error.message} (${error.code})');
  }

  /// The billing period of [details], remembered for the product.
  ///
  /// The product's own details are remembered beside it: they are what the
  /// purchase is made with, so a purchase does not query the store for the
  /// product a second time.
  String? _rememberProduct(ProductDetails details) {
    _productDetails[details.id] = details;
    final resolver = periodResolver;
    final period = resolver == null ? null : resolver(details);
    _periods[details.id] = period;
    return period;
  }

  StoreTransaction _map(PurchaseDetails details) {
    final transactionId = details.purchaseID ?? _derivedId(details);
    _byTransactionId[transactionId] = details;
    final purchasedAt = _timestamp(details);
    return StoreTransaction(
      transactionId: transactionId,
      productId: details.productID,
      status: _status(details),
      purchasedAt: purchasedAt,
      expiresAt: _expiresAt(details, purchasedAt),
      receipt: details.verificationData.serverVerificationData,
      needsFinish: details.pendingCompletePurchase,
      errorMessage: details.error?.message,
    );
  }

  /// When the entitlement of a transaction runs out.
  ///
  /// The store reports the billing period with the product, so the expiry of
  /// a purchase is the purchase date plus one period. Null when the store
  /// reported no period — a one-off product, or a product this client never
  /// saw.
  int? _expiresAt(PurchaseDetails details, int purchasedAt) {
    final status = _status(details);
    if (status != StoreTransactionStatus.purchased &&
        status != StoreTransactionStatus.restored) {
      return null;
    }
    final period = storePeriodDuration(_periods[details.productID]);
    if (period == null) return null;
    return purchasedAt + period.inMilliseconds;
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
