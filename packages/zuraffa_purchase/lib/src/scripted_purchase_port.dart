import 'catalog_product.dart';
import 'purchase_intent.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';
import 'purchase_status.dart';
import 'recording_store_api.dart';

/// A scriptable [PurchasePort] — the domain-level twin of
/// [RecordingStoreApi].
///
/// The store seam has a scriptable double; the port seam needs one too, so
/// the purchase domain can be driven without a device and without a
/// platform adapter:
///
/// ```dart
/// final port = ScriptedPurchasePort(
///   failure: PurchaseException.cancelled(),
/// );
/// ```
///
/// Every call raises [failure] when one is set, and answers with the
/// scripted values otherwise.
class ScriptedPurchasePort implements PurchasePort {
  /// The error every call raises instead of answering. Null answers.
  ///
  /// Typed as [Object] so a scripted port can raise something the domain
  /// does not own — a test double for a store that answers with nonsense.
  final Object? failure;

  /// The products the port offers.
  final List<CatalogProduct> catalog;

  /// The outcome the port answers a purchase with.
  final PurchaseOutcome outcome;

  /// The purchases the port replays on restore.
  final List<PurchaseOutcome> restored;

  /// The transaction ids the port was asked to finish, in order.
  final List<String> finishedTransactionIds = [];

  ScriptedPurchasePort({
    this.failure,
    this.catalog = const [],
    this.outcome = const PurchaseOutcome(
      transactionId: 'tx-1',
      productId: 'pro.monthly',
      status: PurchaseStatus.purchased,
      purchasedAt: 0,
    ),
    this.restored = const [],
  });

  @override
  Future<List<CatalogProduct>> products(List<String> productIds) async =>
      _answer([
        for (final product in catalog)
          if (productIds.contains(product.id)) product,
      ]);

  @override
  Future<PurchaseOutcome> purchase(PurchaseIntent intent) async =>
      _answer(outcome);

  @override
  Future<List<PurchaseOutcome>> restore() async => _answer(restored);

  @override
  Future<void> finish(String transactionId) async {
    finishedTransactionIds.add(transactionId);
    await _answer<void>(null);
  }

  Future<T> _answer<T>(T value) async {
    final error = failure;
    if (error != null) throw error;
    return value;
  }
}
