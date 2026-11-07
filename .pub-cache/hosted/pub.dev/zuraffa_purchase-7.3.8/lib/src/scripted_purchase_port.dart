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

  /// The purchase intents the port was asked to purchase, in order.
  ///
  /// The twin double on the store seam ([RecordingStoreApi]) records its
  /// requests; this one records its intents, so the adapter's mapping
  /// (`appAccountUserId → appAccountId`, `oldPurchaseId → oldPurchaseId`)
  /// can be asserted through the public double.
  final List<PurchaseIntent> purchaseIntents = [];

  /// The transaction ids the port finished, in order.
  ///
  /// Only successful finishes are recorded: a call that raises the scripted
  /// [failure] did not finish anything.
  final List<String> finishedTransactionIds = [];

  /// Creates a scripted port.
  ///
  /// The default [outcome] is a stub — its `purchasedAt` is the Unix epoch,
  /// and the adapter derives the expiry from that stamp, so the default
  /// outcome is already expired once it passes through the adapter. Pass a
  /// real `purchasedAt` for a meaningful expiry.
  ScriptedPurchasePort({
    this.failure,
    this.catalog = const [],
    this.outcome = const PurchaseOutcome(
      transactionId: 'tx-1',
      productId: 'pro.monthly',
      status: PurchaseStatus.purchased,
      // The epoch — a stub value. The adapter derives the expiry from it
      // (`purchasedAt + billingPeriod`), so the default outcome comes out
      // already expired.
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
  Future<PurchaseOutcome> purchase(PurchaseIntent intent) async {
    purchaseIntents.add(intent);
    return _answer(outcome);
  }

  @override
  Future<List<PurchaseOutcome>> restore() async => _answer(restored);

  @override
  Future<void> finish(String transactionId) async {
    await _answer<void>(null);
    finishedTransactionIds.add(transactionId);
  }

  Future<T> _answer<T>(T value) async {
    final error = failure;
    if (error != null) throw error;
    return value;
  }
}
