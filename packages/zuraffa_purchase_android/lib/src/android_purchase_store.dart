import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

import 'android_purchase_exception.dart';

/// Builds the Android [StoreApi] — Play Billing through
/// `package:in_app_purchase`.
///
/// The native side is `in_app_purchase_android`, which this package depends
/// on so the Play Billing implementation is bundled with the app.
StoreApi createAndroidPurchaseStore({
  StoreClient? client,
  Duration purchaseTimeout = const Duration(minutes: 2),
  Duration restoreQuietPeriod = const Duration(seconds: 2),
  Duration restoreTimeout = const Duration(minutes: 1),
  String? restoreAccountId,
}) => InAppPurchaseStoreApi(
  client:
      client ??
      InAppPurchaseStoreClient(
        isRecoverable: AndroidPurchaseException.isRecoverable,
      ),
  purchaseTimeout: purchaseTimeout,
  restoreQuietPeriod: restoreQuietPeriod,
  restoreTimeout: restoreTimeout,
  restoreAccountId: restoreAccountId,
);
