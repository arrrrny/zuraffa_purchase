// GENERATED STUB — `zfa tdd gen contract:A24` (issue #1007).
//
// behavior_id: contract:A24
// source_criterion: RecordingStoreApi.isAvailable
// kind: contract
// target: subject_contract_A24
// description: RecordingStoreApi.isAvailable() -> bool (interface method contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `isAvailable() -> Future<bool>`
// (interface method contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A24:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? isAvailable() => api.RecordingStoreApi(
  catalog: [
    api.StoreProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
    ),
  ],
).isAvailable();
