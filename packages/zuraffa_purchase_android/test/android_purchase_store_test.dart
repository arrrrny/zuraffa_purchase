import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_android/zuraffa_purchase_android.dart';
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

class _FakeStoreClient implements StoreClient {
  final StreamController<List<StoreTransaction>> _controller =
      StreamController<List<StoreTransaction>>.broadcast();

  @override
  Stream<List<StoreTransaction>> get transactionStream => _controller.stream;

  @override
  Future<bool> isAvailable() async => true;

  @override
  Future<List<StoreProduct>> queryProducts(Set<String> productIds) async => [];

  @override
  Future<void> startPurchase(StorePurchaseRequest request) async {}

  @override
  Future<void> restore({String? applicationUserName}) async {}

  @override
  Future<void> complete(String transactionId) async {}
}

void main() {
  group('zuraffa_purchase_android', () {
    test('builds the store over the injected client', () {
      final store = createAndroidPurchaseStore(client: _FakeStoreClient());
      expect(store, isA<StoreApi>());
    });

    test('registers the store on the locator', () {
      final getIt = GetIt.asNewInstance();
      final store = createAndroidPurchaseStore(client: _FakeStoreClient());

      registerAndroidPurchaseDependencies(getIt, store: store);

      expect(getIt.isRegistered<StoreApi>(), isTrue);
      expect(getIt<StoreApi>(), same(store));
    });

    test('keeps an already registered store', () {
      final getIt = GetIt.asNewInstance();
      final store = createAndroidPurchaseStore(client: _FakeStoreClient());
      getIt.registerSingleton<StoreApi>(store);

      registerAndroidPurchaseDependencies(getIt);

      expect(getIt<StoreApi>(), same(store));
    });

    test('classifies the native failure codes', () {
      expect(
        AndroidPurchaseException.isRecoverable('restore_transactions_failed'),
        isTrue,
      );
      expect(
        AndroidPurchaseException.isRecoverable('billing_unknown'),
        isFalse,
      );

      final error = AndroidPurchaseException.fromNative(
        'restore_transactions_failed',
        'the store did not answer',
      );
      expect(error.code, 'restore_transactions_failed');
      expect(error.recoverable, isTrue);
    });
  });
}
