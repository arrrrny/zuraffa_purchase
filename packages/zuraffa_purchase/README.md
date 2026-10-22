# zuraffa_purchase

Typed in-app purchases for the Zuraffa ecosystem: a pure-Dart purchase port
behind a service, with federated adapters that talk to StoreKit and Play
Billing through `package:in_app_purchase`.

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

Register the adapter of the running platform first — it puts the store on the
locator — then wire the purchase family over it:

```dart
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_macos/zuraffa_purchase_macos.dart';

registerMacosPurchaseDependencies(getIt); // zuraffa_purchase_{macos,ios,android}
registerPurchaseDependencies(getIt);

final service = getIt<PurchaseService>();

final products = await service.products(['pro.monthly']);
final outcome = await service.purchase(
  const PurchaseIntent(productId: 'pro.monthly'),
);
if (outcome.pendingFinish) {
  await service.finish(outcome.transactionId);
}
```

Without a registered store every call surfaces the typed `PurchaseNotWired`
failure — a mis-registered adapter shows up at the first purchase, never as a
silent no-op.

Failures are typed: `PurchaseException` carries a stable machine `code`
(`cancelled`, `product_unavailable`, `store_unavailable`, `store_error`,
`timeout`, `pending`, `plan_change_unsupported`, `plan_change_unknown`) and a
`recoverable` flag. Every condition has its own code, so a caller that
branches on the code can always tell them apart.

### Driving the store in a test

`RecordingStoreApi` is a supported part of the API, not an implementation
detail: it is the scriptable store double an app uses to drive the store
without a device and without a platform adapter. Every call is recorded and
the outcome is scripted by the caller.

```dart
final store = RecordingStoreApi(
  catalog: [
    StoreProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
    ),
  ],
  onPurchase: (request) async => StoreTransaction(
    transactionId: 'tx-1',
    productId: request.productId,
    status: StoreTransactionStatus.purchased,
    purchasedAt: 1700000000000,
  ),
);
```

A store that holds a subscription to the platform's stream releases it
through `dispose()` — the hook on the `StoreApi` contract.

### Handing the store to `zuraffa_subscriptions`

`PurchaseSubscriptionStore` implements the `SubscriptionStorePort` of
[`zuraffa_subscriptions`](https://pub.dev/packages/zuraffa_subscriptions), so
an app derives entitlements from real store transactions without writing its
own adapter:

```dart
final store = getIt<PurchaseSubscriptionStore>();
final service = SubscriptionService(store: store);
```

## Develop

```bash
dart pub get
dart test
```
