// GENERATED STUB — `zfa tdd gen contract:A1` (issue #1007).
//
// behavior_id: contract:A1
// source_criterion: PurchaseSubscriptionStore.fetchProducts
// kind: contract
// target: subject_contract_a1
// description: PurchaseSubscriptionStore.fetchProducts(List<String>) -> List<Product> (usecase contract)
//
// CONTRACT SEAM (issue #1007): this file is where the declared contract
// `PurchaseSubscriptionStore.fetchProducts(List<String> arg0) -> List<Product>`
// (usecase contract) gets its implementation. Implement the seam
// below — or wire it to the production method. The paired contract test
// enumerates the contract's cases and stays BLOCKED (never RED) until
// every case is satisfied.
// zfa:tdd: contract:A1:hand — hand step completed before first red certification (issue #1411)
library;

// IMPLEMENTED (spec 002-subscription-error-vocabulary): the seam is wired to the
// real implementation, so the declared contract is satisfied against the
// shipped code and not against a stub.

import 'package:zuraffa_purchase/zuraffa_purchase.dart' as api;

/// The declared contract, wired to the real implementation.
Object? fetchProducts(List<String> arg0) => api.PurchaseSubscriptionStore(
  port: api.ScriptedPurchasePort(
    catalog: [
      api.CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ),
    ],
  ),
).fetchProducts(arg0);
