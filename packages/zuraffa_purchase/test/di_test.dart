import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

void main() {
  group('registerPurchaseDependencies', () {
    test('registers the store it is handed and the port speaks to it', () {
      final getIt = GetIt.asNewInstance();
      final store = RecordingStoreApi();

      registerPurchaseDependencies(getIt, store: store);

      expect(getIt.isRegistered<StoreApi>(), isTrue);
      expect(identical(getIt<StoreApi>(), store), isTrue);
      expect(getIt<PurchasePort>(), isA<StoreApiPurchasePort>());
      expect(
        identical((getIt<PurchasePort>() as StoreApiPurchasePort).store, store),
        isTrue,
      );
    });

    test('keeps the store that was registered first', () {
      final getIt = GetIt.asNewInstance();
      final first = RecordingStoreApi();
      final second = RecordingStoreApi();

      registerPurchaseDependencies(getIt, store: first);
      registerPurchaseDependencies(getIt, store: second);

      expect(identical(getIt<StoreApi>(), first), isTrue,
          reason: 'a second registration does not replace the first store');
    });

    test('registers no store when none is handed in', () {
      final getIt = GetIt.asNewInstance();

      registerPurchaseDependencies(getIt);

      expect(getIt.isRegistered<StoreApi>(), isFalse);
      expect(getIt<PurchasePort>(), isA<UnwiredPurchasePort>());
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

      registerPurchaseDependencies(getIt, store: RecordingStoreApi(), port: port);

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
