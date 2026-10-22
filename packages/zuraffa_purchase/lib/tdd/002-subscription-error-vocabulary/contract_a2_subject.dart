// GENERATED STUB — `zfa tdd gen contract:A2` (issue #1007).
//
// behavior_id: contract:A2
// source_criterion: PurchaseSubscriptionStore.purchase
// kind: contract
// target: subject_contract_a2
// description: PurchaseSubscriptionStore.purchase(PurchaseRequest) -> StorePurchase (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `PurchaseSubscriptionStore.purchase(dynamic PurchaseRequest) -> StorePurchase`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
// zfa:tdd: contract:A2:hand — hand step completed before first red certification (issue #1411)
// zfa:tdd: contract:A2:hand — hand step completed before first red certification (issue #1411)
library;

// IMPLEMENTED (spec 002-subscription-error-vocabulary): the seam is wired to the
// real implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.

import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart' as subs;
import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? purchase(dynamic request) => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(),
).purchase(request as subs.PurchaseRequest);
