// GENERATED STUB — `zfa tdd gen contract:A11` (issue #1007).
//
// behavior_id: contract:A11
// source_criterion: StoreApiPurchasePort.restore
// kind: contract
// target: subject_contract_A11
// description: StoreApiPurchasePort.restore() -> List<PurchaseOutcome> (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `restore() -> List<PurchaseOutcome>`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A11:hand — hand step completed before first red certification (issue #1411)
library;
import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? restore() => api.StoreApiPurchasePort(store: api.RecordingStoreApi(catalog: [api.StoreProduct(id: 'pro.monthly', title: 'Pro monthly', description: 'monthly plan', priceMicros: 4990000, currency: 'USD')])).restore();
