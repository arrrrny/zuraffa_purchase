// GENERATED STUB — `zfa tdd gen contract:A18` (issue #1007).
//
// behavior_id: contract:A18
// source_criterion: CompositionRoot.registerPurchaseDependencies
// kind: contract
// target: subject_contract_A18
// description: CompositionRoot.registerPurchaseDependencies(GetIt) -> void (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `registerPurchaseDependencies(GetIt) -> void`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A18:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;
import 'package:zuraffa/zuraffa.dart' as zf;

/// The declared contract, wired to the real implementation.
Object? registerPurchaseDependencies(zf.GetIt arg0) {
  api.registerPurchaseDependencies(arg0);
  return null;
}
