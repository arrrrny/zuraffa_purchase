// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../domain/repositories/entitlement_repository.dart';
import '../../domain/usecases/entitlement/create_entitlement_usecase.dart';

void registerCreateEntitlementUseCase(GetIt getIt) {
  getIt.registerLazySingleton<CreateEntitlementUseCase>(
    () => CreateEntitlementUseCase(getIt<EntitlementRepository>()),
  );
}

// END GENERATED
