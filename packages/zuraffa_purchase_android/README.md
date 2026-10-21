# zuraffa_purchase_android

The Android adapter of the `zuraffa_purchase` family: Play Billing, reached
through `package:in_app_purchase` (`in_app_purchase_android`).

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

```dart
import 'package:zuraffa_purchase_android/zuraffa_purchase_android.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

registerAndroidPurchaseDependencies(getIt); // the StoreApi on the locator
registerPurchaseDependencies(getIt); // the port, the service, the store
```

Afterwards the app resolves `PurchaseService` and `PurchaseSubscriptionStore`
from the locator like any other Zuraffa service. Native failures are
classified into a typed taxonomy (`AndroidPurchaseException`) with a
`recoverable` flag.

The adapter pins `in_app_purchase_android: ^0.5.5`, so the app's Android build
resolves the current Play Billing implementation.

## Develop

```bash
flutter pub get
flutter test
```
