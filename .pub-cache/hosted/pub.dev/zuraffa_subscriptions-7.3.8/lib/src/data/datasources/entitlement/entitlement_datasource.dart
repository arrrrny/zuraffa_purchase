// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../../domain/entities/entitlement/entitlement.dart';

abstract class EntitlementDataSource with Loggable, FailureHandler {
  Future<Entitlement> create(Entitlement entitlement);
  Future<Entitlement> get(QueryParams<Entitlement> params);
  Future<List<Entitlement>> getList(ListQueryParams<Entitlement> params);
  Future<Entitlement> update(UpdateParams<String, EntitlementPatch> params);
  Future<void> delete(DeleteParams<String> params);
}

// END GENERATED
