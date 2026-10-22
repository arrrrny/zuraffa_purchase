import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

import 'ios_purchase_exception.dart';
import 'storekit_dialect.dart';

/// Builds the iOS [StoreApi] — StoreKit through `package:in_app_purchase`.
///
/// The native side is `in_app_purchase_storekit`, which this package depends
/// on so the StoreKit implementation is bundled with the app — and pinned to
/// a version that builds without the StoreKit 1 deprecation warnings.
///
/// The StoreKit-specific knowledge the shared core cannot hold itself — the
/// billing period of a product, the purchase parameter, the native error
/// taxonomy — is handed to the client here.
StoreApi createIosPurchaseStore({
  StoreClient? client,
  Duration purchaseTimeout = const Duration(minutes: 2),
  Duration restoreQuietPeriod = const Duration(seconds: 2),
  Duration restoreTimeout = const Duration(minutes: 1),
  String? restoreAccountId,
}) => InAppPurchaseStoreApi(
  client:
      client ??
      InAppPurchaseStoreClient(
        periodResolver: storekitPeriod,
        purchaseParamBuilder: storekitPurchaseParam,
        errorFactory: IosPurchaseException.fromError,
      ),
  purchaseTimeout: purchaseTimeout,
  restoreQuietPeriod: restoreQuietPeriod,
  restoreTimeout: restoreTimeout,
  restoreAccountId: restoreAccountId,
);
