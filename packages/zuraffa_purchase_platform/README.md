# zuraffa_purchase_platform

The shared store core of the `zuraffa_purchase` family: the transport seam the
store flow runs over, the `in_app_purchase`-backed client, the event queue that
turns a firehose of transactions into a terminal purchase and a settled
restore, and the `StoreApi` implementation.

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

Most apps never import this package directly — they import the adapter for
their platform (`zuraffa_purchase_macos`, `zuraffa_purchase_ios`,
`zuraffa_purchase_android`) and let it register the store.

Reach for it directly when you drive the store yourself:

```dart
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

final store = InAppPurchaseStoreApi(
  client: InAppPurchaseStoreClient(),
  purchaseTimeout: const Duration(minutes: 2),
  restoreQuietPeriod: const Duration(seconds: 2),
);
```

`InAppPurchaseStoreApi` is the `StoreApi` the domain package consumes: a
purchase resolves on the terminal transaction for the requested product, a
restore settles after a quiet window (so a slow restore is never reported as an
empty restore), and a purchase that never settles fails with a typed, named
timeout instead of hanging.

## Develop

```bash
flutter pub get
flutter test
```
