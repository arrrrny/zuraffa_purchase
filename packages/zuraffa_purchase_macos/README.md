# zuraffa_purchase_macos

The macOS adapter of the `zuraffa_purchase` family: StoreKit, reached
through `package:in_app_purchase` (`in_app_purchase_storekit`).

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

```dart
import 'package:zuraffa_purchase_macos/zuraffa_purchase_macos.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

registerMacosPurchaseDependencies(getIt); // the StoreApi on the locator
registerPurchaseDependencies(getIt); // the port, the service, the store
```

Afterwards the app resolves `PurchaseService` and `PurchaseSubscriptionStore`
from the locator like any other Zuraffa service. Native failures are
classified into a typed taxonomy (`MacosPurchaseException`) with a
`recoverable` flag.

The adapter pins `in_app_purchase_storekit: ^0.4.15` — past 0.4.13, so the
app's macOS build carries none of the StoreKit 1 deprecation warnings
(`SKPaymentTransaction`, `SKPayment`, `SKProduct`).

## Develop

```bash
flutter pub get
flutter test
```
