/// zuraffa_purchase — Purchase support for the Zuraffa ecosystem.
///
/// A pure-Dart port (`PurchasePort`), a facade (`PurchaseService`),
/// typed failures, and DI registration. Platform adapters implement the
/// port over an injected platform channel — the shared envelope machinery
/// lives in `zuraffa_purchase_platform`.
library;

export 'src/purchase_exception.dart';
export 'src/purchase_module.dart';
export 'src/purchase_port.dart';
export 'src/purchase_service.dart';
export 'src/purchase_value.dart';
