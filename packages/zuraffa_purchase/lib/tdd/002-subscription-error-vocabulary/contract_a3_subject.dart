// GENERATED STUB — `zfa tdd gen contract:A3` (issue #1007).
//
// behavior_id: contract:A3
// source_criterion: PurchaseSubscriptionStore.restore
// kind: contract
// target: subject_contract_a3
// description: PurchaseSubscriptionStore.restore() -> List<StorePurchase> (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `PurchaseSubscriptionStore.restore() -> List<StorePurchase>`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
// zfa:tdd: contract:A3:hand — hand step completed before first red certification (issue #1411)
library;

// IMPLEMENTED (spec 002-subscription-error-vocabulary): the seam is wired to the
// real implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? restore() =>
    api.PurchaseSubscriptionStore(port: api.ScriptedPurchasePort()).restore();
