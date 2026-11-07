// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../domain/repositories/entitlement_repository.dart';
import '../../domain/usecases/entitlement/get_entitlement_usecase.dart';

void registerGetEntitlementUseCase(GetIt getIt) {
  getIt.registerLazySingleton<GetEntitlementUseCase>(
    () => GetEntitlementUseCase(getIt<EntitlementRepository>()),
  );
}

// END GENERATED
