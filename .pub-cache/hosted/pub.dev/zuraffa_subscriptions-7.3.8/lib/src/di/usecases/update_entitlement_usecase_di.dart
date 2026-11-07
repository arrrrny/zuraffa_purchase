// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../domain/repositories/entitlement_repository.dart';
import '../../domain/usecases/entitlement/update_entitlement_usecase.dart';

void registerUpdateEntitlementUseCase(GetIt getIt) {
  getIt.registerLazySingleton<UpdateEntitlementUseCase>(
    () => UpdateEntitlementUseCase(getIt<EntitlementRepository>()),
  );
}

// END GENERATED
