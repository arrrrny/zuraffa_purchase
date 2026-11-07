// GENERATED STUB — `zfa tdd gen U10` (spec 044-test-tdd-generation
// + issue #1259 contract derivation).
//
// behavior_id: U10
// source_criterion: FR-010, CompositionRoot.registerSubscriptionDependencies
// description: The composition root `registerSubscriptionDependencies` MUST
//
// Hand-implemented against the DECLARED contract
// `registerSubscriptionDependencies(GetIt) -> void`: the store port and
// the service register as lazy singletons — repeated resolution yields
// identical instances — and an injected store is honored.
// ignore_for_file: non_constant_identifier_names
library;

import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

/// Subject for behavior U10 — declared contract:
/// `registerSubscriptionDependencies(GetIt) -> void`.
Future<void> subject_u10(Object? getit) async {
  final getIt = getit! as GetIt;
  final injected = InMemorySubscriptionStore();

  registerSubscriptionDependencies(getIt, store: injected);

  // Lazy singletons: repeated resolution yields identical instances.
  final service = getIt<SubscriptionService>();
  expect(identical(service, getIt<SubscriptionService>()), isTrue);
  expect(
    identical(getIt<SubscriptionStorePort>(), getIt<SubscriptionStorePort>()),
    isTrue,
  );

  // The injected store is honored and is what the service resolves.
  expect(identical(getIt<SubscriptionStorePort>(), injected), isTrue);
  expect(identical(service.store, injected), isTrue);
}
