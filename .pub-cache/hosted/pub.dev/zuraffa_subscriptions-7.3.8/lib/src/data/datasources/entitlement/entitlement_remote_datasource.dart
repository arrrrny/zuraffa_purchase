// GENERATED - DO NOT EDIT
import 'package:zuraffa/zuraffa.dart';

import '../../../domain/entities/entitlement/entitlement.dart';
import 'entitlement_datasource.dart';

class EntitlementRemoteDataSource
    with Loggable, FailureHandler
    implements EntitlementDataSource {
  @override
  Future<Entitlement> create(Entitlement entitlement) async {
    throw UnimplementedError('Implement remote create');
  }

  @override
  Future<Entitlement> get(QueryParams<Entitlement> params) async {
    throw UnimplementedError('Implement remote get');
  }

  @override
  Future<List<Entitlement>> getList(ListQueryParams<Entitlement> params) async {
    throw UnimplementedError('Implement remote getList');
  }

  @override
  Future<Entitlement> update(
    UpdateParams<String, EntitlementPatch> params,
  ) async {
    throw UnimplementedError('Implement remote update');
  }

  @override
  Future<void> delete(DeleteParams<String> params) async {
    throw UnimplementedError('Implement remote delete');
  }
}

// END GENERATED
