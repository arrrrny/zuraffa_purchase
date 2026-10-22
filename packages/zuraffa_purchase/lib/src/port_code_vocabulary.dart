/// The purchase-domain codes the port's vocabulary carries verbatim.
///
/// The vocabulary is owned by `zuraffa_subscriptions` — its
/// `SubscriptionException` factories are the source of truth. This set is a
/// copy of that vocabulary and must track it: the dependency is `^2.0.0`, so
/// a 2.x minor may add a code, and an unrecognised code is silently
/// downgraded to `store_unavailable` by the adapter.
///
/// The guard test (`test/purchase_subscription_store_test.dart`) compares
/// this set against the port's own factories, so a dependency bump that
/// adds a code fails there instead of disappearing into the fallback.
///
/// Not exported from the package barrel: this is the adapter's internal
/// copy of somebody else's vocabulary, not a contract of this package.
const portCodeVocabulary = <String>{
  'cancelled',
  'product_unavailable',
  'store_unavailable',
  'pending',
};
