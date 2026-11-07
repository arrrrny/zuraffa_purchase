import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

void main() {
  group('registerPurchaseDependencies', () {
    test(
      'registers the store it is handed and the port speaks to it',
      () async {
        final getIt = GetIt.asNewInstance();
        final store = RecordingStoreApi(
          catalog: const [
            StoreProduct(
              id: 'pro.monthly',
              title: 'Pro monthly',
              description: 'monthly plan',
              priceMicros: 4990000,
              currency: 'USD',
            ),
          ],
        );

        registerPurchaseDependencies(getIt, store: store);

        expect(getIt.isRegistered<StoreApi>(), isTrue);
        expect(identical(getIt<StoreApi>(), store), isTrue);
        expect(getIt<PurchasePort>(), isA<StoreApiPurchasePort>());
        final products = await getIt<PurchasePort>().products(const [
          'pro.monthly',
        ]);
        expect(products.single.id, 'pro.monthly');
      },
    );

    test('keeps the store that was registered first', () {
      final getIt = GetIt.asNewInstance();
      final first = RecordingStoreApi();
      final second = RecordingStoreApi();

      registerPurchaseDependencies(getIt, store: first);
      registerPurchaseDependencies(getIt, store: second);

      expect(
        identical(getIt<StoreApi>(), first),
        isTrue,
        reason: 'a second registration does not replace the first store',
      );
    });

    test('registers no store when none is handed in', () async {
      final getIt = GetIt.asNewInstance();

      registerPurchaseDependencies(getIt);

      expect(getIt.isRegistered<StoreApi>(), isFalse);
      await expectLater(
        getIt<PurchasePort>().products(const ['pro.monthly']),
        throwsA(isA<PurchaseNotWired>()),
        reason: 'an unwired port fails loudly instead of hanging',
      );
    });

    test('a port resolved before the adapter registers speaks to the store '
        'registered later', () async {
      final getIt = GetIt.asNewInstance();

      registerPurchaseDependencies(getIt);
      // The port is resolved before any adapter registered — the app
      // holds on to it.
      final port = getIt<PurchasePort>();
      expect(port, isA<StoreApiPurchasePort>());

      getIt.registerSingleton<StoreApi>(
        RecordingStoreApi(
          catalog: const [
            StoreProduct(
              id: 'pro.monthly',
              title: 'Pro monthly',
              description: 'monthly plan',
              priceMicros: 4990000,
              currency: 'USD',
            ),
          ],
        ),
      );

      final products = await port.products(const ['pro.monthly']);
      expect(
        products.single.id,
        'pro.monthly',
        reason:
            'an early resolution must not pin the app to an unwired port for '
            'the lifetime of the process',
      );
    });

    test('the unwired port fails with the typed failure', () async {
      final getIt = GetIt.asNewInstance();
      registerPurchaseDependencies(getIt);

      await expectLater(
        getIt<PurchasePort>().products(const ['pro.monthly']),
        throwsA(isA<PurchaseNotWired>()),
      );
    });

    test('an injected port wins over the store', () {
      final getIt = GetIt.asNewInstance();
      final port = StoreApiPurchasePort(store: RecordingStoreApi());

      registerPurchaseDependencies(
        getIt,
        store: RecordingStoreApi(),
        port: port,
      );

      expect(identical(getIt<PurchasePort>(), port), isTrue);
    });
  });

  group('PurchaseNotWired', () {
    test('names the registration call that fixes it', () {
      expect(
        const PurchaseNotWired().toString(),
        'PurchaseNotWired: no store was registered — call the platform '
        "adapter's register*PurchaseDependencies before using the port.",
      );
    });
  });
}
