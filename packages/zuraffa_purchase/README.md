# zuraffa_purchase

Purchase support for the Zuraffa ecosystem: a pure-Dart port behind an injected platform channel with federated adapters.

Part of the [zuraffa_purchase](https://github.com/arrrrny/zuraffa_purchase) federated monorepo, built on the
[Zuraffa](https://pub.dev/packages/zuraffa) framework.

## Use

```dart
final service = PurchaseService(port: myPlatformPort);
final module = await service.compile(id: 'demo', bytes: moduleBytes);
final results = await service.call(
    id: 'demo', export: 'run', args: [PurchaseI32(1)]);
await service.unload(id: 'demo');
```

Wire the platform adapter for the running platform first — e.g.
`registerAndroidPurchaseDependencies(getIt, channel: ...)` from
the adapter package — then resolve `PurchaseService`, or call
`registerPurchaseDependencies(getIt, port: ...)` directly. Without a
wired port every call surfaces the typed `port_not_wired` failure.

## Develop

```bash
dart pub get
dart test
```
