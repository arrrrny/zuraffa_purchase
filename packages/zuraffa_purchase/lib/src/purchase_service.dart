import 'dart:typed_data';

import 'package:zuraffa/zuraffa.dart';

import 'purchase_exception.dart';
import 'purchase_module.dart';
import 'purchase_port.dart';
import 'purchase_value.dart';

/// Facade over the [PurchasePort]: owns the compiled-module registry
/// and turns lifecycle mistakes (double compile, call-before-compile)
/// into typed failures before they reach the platform.
class PurchaseService {
  final PurchasePort port;
  final Map<String, PurchaseModule> _modules = {};

  PurchaseService({required this.port});

  /// The compiled modules currently held by this service.
  Set<String> get compiledModules => Set.unmodifiable(_modules.keys);

  Future<bool> supported() => port.isSupported();

  Future<PurchaseModule> compile({
    required String id,
    required Uint8List bytes,
  }) async {
    if (_modules.containsKey(id)) {
      throw PurchaseException(
        'already_compiled',
        'Module "$id" is already compiled — unload it first.',
        recoverable: false,
      );
    }
    final module = await port.compile(id: id, bytes: bytes);
    _modules[id] = module;
    return module;
  }

  Future<List<PurchaseValue>> call({
    required String id,
    required String export,
    List<PurchaseValue> args = const [],
  }) async {
    _requireCompiled(id);
    return port.invoke(id: id, export: export, args: args);
  }

  Future<void> unload({required String id}) async {
    _requireCompiled(id);
    await port.unload(id: id);
    _modules.remove(id);
  }

  void _requireCompiled(String id) {
    if (!_modules.containsKey(id)) {
      throw PurchaseException(
        'not_compiled',
        'Module "$id" is not compiled — call compile() first.',
        recoverable: false,
      );
    }
  }
}

/// A port placeholder registered when no platform adapter was wired:
/// every operation surfaces the typed `port_not_wired` failure instead of
/// a null dereference at resolve time.
class _UnwiredPurchasePort implements PurchasePort {
  const _UnwiredPurchasePort();

  Never _unwired() => throw const PurchaseException(
        'port_not_wired',
        'No PurchasePort was registered — wire the platform adapter '
        'for the running platform before resolving PurchaseService.',
        recoverable: false,
      );

  @override
  Future<bool> isSupported() async => _unwired();

  @override
  Future<PurchaseModule> compile({
    required String id,
    required Uint8List bytes,
  }) async =>
      _unwired();

  @override
  Future<List<PurchaseValue>> invoke({
    required String id,
    required String export,
    List<PurchaseValue> args = const [],
  }) async =>
      _unwired();

  @override
  Future<void> unload({required String id}) async => _unwired();
}

/// Registers the zuraffa_purchase stack onto [getIt]: the [PurchasePort] is
/// normally supplied by the platform adapter package for the running
/// platform (e.g. `registerAndroidPurchaseDependencies`), so the
/// service falls back to the GetIt-registered port when no explicit one
/// is passed. Without any registered port the service resolves over the
/// unwired placeholder and surfaces typed `port_not_wired` failures.
void registerPurchaseDependencies(
  GetIt getIt, {
  PurchasePort? port,
}) {
  getIt.registerLazySingleton<PurchaseService>(
    () => PurchaseService(
      port:
          port ??
          (getIt.isRegistered<PurchasePort>()
              ? getIt<PurchasePort>()
              : const _UnwiredPurchasePort()),
    ),
  );
}
