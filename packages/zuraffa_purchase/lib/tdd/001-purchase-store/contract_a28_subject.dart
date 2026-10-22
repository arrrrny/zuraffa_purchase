// GENERATED STUB — `zfa tdd gen contract:A28` (issue #1007).
//
// behavior_id: contract:A28
// source_criterion: RecordingStoreApi.complete
// kind: contract
// target: subject_contract_A28
// description: RecordingStoreApi.complete(String) -> void (interface method contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `complete(String) -> void`
// (interface method contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
//
// IMPLEMENTED (spec 001-purchase-store): the seam is wired to the real
// implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.
//
// zfa:tdd: contract:A28:hand — hand step completed before first red certification (issue #1411)
library;

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? complete(String arg0) => api.RecordingStoreApi(
  catalog: [
    api.StoreProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
    ),
  ],
).complete(arg0);
