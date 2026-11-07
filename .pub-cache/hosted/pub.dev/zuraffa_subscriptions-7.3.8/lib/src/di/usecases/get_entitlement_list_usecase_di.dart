// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../domain/repositories/entitlement_repository.dart';
import '../../domain/usecases/entitlement/get_entitlement_list_usecase.dart';

void registerGetEntitlementListUseCase(GetIt getIt) {
  getIt.registerLazySingleton<GetEntitlementListUseCase>(
    () => GetEntitlementListUseCase(getIt<EntitlementRepository>()),
  );
}

// END GENERATED
