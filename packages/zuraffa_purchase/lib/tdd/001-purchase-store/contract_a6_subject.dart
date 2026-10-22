// GENERATED STUB — `zfa tdd gen contract:A6` (issue #1007).
//
// behavior_id: contract:A6
// source_criterion: PurchasePort.purchase
// kind: contract
// target: subject_contract_A6
// description: PurchasePort.purchase(PurchaseIntent) -> PurchaseOutcome (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `purchase(PurchaseIntent) -> PurchaseOutcome`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A6:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? purchase(api.PurchaseIntent arg0) => api.StoreApiPurchasePort(
  store: api.RecordingStoreApi(
    catalog: [
      api.StoreProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
      ),
    ],
  ),
).purchase(arg0);
