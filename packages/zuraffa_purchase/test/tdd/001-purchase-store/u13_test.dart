// GENERATED TEST — `zfa tdd gen U13` (spec 044-test-tdd-generation).
//
// behavior_id: U13
// source_criterion: FR-013, CompositionRoot.registerPurchaseDependencies
// kind: unit
// description: The composition root `registerPurchaseDependencies` MUST register the
//
// This test asserts the observable behavior described above. It is
// "honest red" on first execution: the paired subject at
// `package:zuraffa_purchase/tdd/001-purchase-store/u13_subject.dart` is unimplemented, so the test fails through an
// assertion (not an uncaught error, compile/load error, skip, or
// placeholder). Replace the subject's
// stub body with real implementation to make this test pass.
library;

import 'package:test/test.dart';
import 'package:zuraffa/zuraffa.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase/tdd/001-purchase-store/u13_subject.dart' as subject;

void main() {
  group('U13 (FR-013, CompositionRoot.registerPurchaseDependencies)', () {
    test('U13 — The composition root `registerPurchaseDependencies` MUST register the', () async {
      final getIt = GetIt.asNewInstance();
      subject.subject_u13(getIt);
      expect(getIt.isRegistered<PurchasePort>(), isTrue);
      expect(getIt.isRegistered<PurchaseService>(), isTrue);
      expect(getIt.isRegistered<PurchaseSubscriptionStore>(), isTrue);
      expect(identical(getIt<PurchasePort>(), getIt<PurchasePort>()), isTrue,
          reason: 'the port is a lazy singleton');
      expect(
        identical(getIt<PurchaseService>(), getIt<PurchaseService>()),
        isTrue,
      );
      expect(
        identical(
          getIt<PurchaseSubscriptionStore>(),
          getIt<PurchaseSubscriptionStore>(),
        ),
        isTrue,
      );

      final injected = GetIt.asNewInstance();
      final port = StoreApiPurchasePort(store: RecordingStoreApi());
      subject.subject_u13(injected, port: port);
      expect(identical(injected<PurchasePort>(), port), isTrue,
          reason: 'an injected port is honored');
    });
  });
}
