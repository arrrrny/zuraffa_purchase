// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../domain/repositories/entitlement_repository.dart';
import '../../domain/usecases/entitlement/delete_entitlement_usecase.dart';

void registerDeleteEntitlementUseCase(GetIt getIt) {
  getIt.registerLazySingleton<DeleteEntitlementUseCase>(
    () => DeleteEntitlementUseCase(getIt<EntitlementRepository>()),
  );
}

// END GENERATED
