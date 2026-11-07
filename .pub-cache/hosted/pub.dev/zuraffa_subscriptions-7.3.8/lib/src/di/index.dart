// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import 'datasources/index.dart';
import 'usecases/index.dart';
import 'simulation/index.dart';

export 'datasources/index.dart';
export 'usecases/index.dart';

void setupDependencies(GetIt getIt) {
  registerAllUseCases(getIt);
  registerAllDataSources(getIt);

  registerSimulationBindings(getIt);
}

// END GENERATED
