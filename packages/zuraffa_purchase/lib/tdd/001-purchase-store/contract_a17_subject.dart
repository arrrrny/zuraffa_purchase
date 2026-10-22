// GENERATED STUB — `zfa tdd gen contract:A17` (issue #1007).
//
// behavior_id: contract:A17
// source_criterion: PurchaseException.code
// kind: contract
// target: subject_contract_A17
// description: PurchaseException.code() -> String (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `code() -> String`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A17:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? code() => api.PurchaseException.cancelled().code;
