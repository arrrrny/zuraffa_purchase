// GENERATED STUB — `zfa tdd gen contract:A4` (issue #1007).
//
// behavior_id: contract:A4
// source_criterion: PurchaseSubscriptionStore.finishPurchase
// kind: contract
// target: subject_contract_a4
// description: PurchaseSubscriptionStore.finishPurchase(String) -> void (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `PurchaseSubscriptionStore.finishPurchase(dynamic String) -> void`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
// zfa:tdd: contract:A4:hand — hand step completed before first red certification (issue #1411)
library;

// IMPLEMENTED (spec 002-subscription-error-vocabulary): the seam is wired to the
// real implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? finishPurchase(dynamic transactionId) => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(),
).finishPurchase(transactionId as String);
