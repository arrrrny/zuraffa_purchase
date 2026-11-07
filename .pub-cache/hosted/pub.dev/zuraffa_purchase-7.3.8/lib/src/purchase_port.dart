import 'catalog_product.dart';
import 'purchase_intent.dart';
import 'purchase_outcome.dart';

/// The store contract: products, purchasing, restoring, finishing.
///
/// Every adapter implements this. It is deliberately platform-neutral — the
/// platform adapters speak their own store's dialect underneath and map it
/// onto this shape, so the domain never sees a StoreKit or Play Billing type.
abstract class PurchasePort {
  const PurchasePort();

  /// The products the store offers for [productIds].
  ///
  /// Ids the store does not offer are absent from the result — they are not
  /// an error. A store that is unavailable raises a
  /// [PurchaseException] with the `store_unavailable` code.
  Future<List<CatalogProduct>> products(List<String> productIds);

  /// Launches the purchase described by [intent] and resolves with its
  /// outcome.
  ///
  /// A cancelled purchase raises a `PurchaseException` with the `cancelled`
  /// code; a deferred purchase resolves with a `PurchaseOutcome` in the
  /// `pending` status.
  Future<PurchaseOutcome> purchase(PurchaseIntent intent);

  /// The purchases the user already owns, as the store replays them.
  Future<List<PurchaseOutcome>> restore();

  /// Acknowledges [transactionId] on the store so it stops replaying it.
  ///
  /// Idempotent: a transaction the store does not know is a no-op, not an
  /// error.
  Future<void> finish(String transactionId);
}
