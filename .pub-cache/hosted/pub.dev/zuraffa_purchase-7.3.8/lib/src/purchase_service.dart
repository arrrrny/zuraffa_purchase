import 'catalog_product.dart';
import 'purchase_intent.dart';
import 'purchase_outcome.dart';
import 'purchase_port.dart';

/// The app-facing purchase service: a thin facade over the [PurchasePort].
///
/// ```dart
/// final service = PurchaseService(port: getIt<PurchasePort>());
/// final products = await service.products(['pro.monthly']);
/// final outcome = await service.purchase(
///   PurchaseIntent(productId: 'pro.monthly', appAccountId: userId),
/// );
/// await service.finish(outcome.transactionId);
/// ```
class PurchaseService {
  /// The store the service speaks to.
  final PurchasePort port;

  const PurchaseService({required this.port});

  /// The products the store offers for [productIds].
  Future<List<CatalogProduct>> products(List<String> productIds) =>
      port.products(productIds);

  /// Launches the purchase described by [intent].
  Future<PurchaseOutcome> purchase(PurchaseIntent intent) =>
      port.purchase(intent);

  /// The purchases the user already owns.
  Future<List<PurchaseOutcome>> restore() => port.restore();

  /// Acknowledges [transactionId] on the store.
  Future<void> finish(String transactionId) => port.finish(transactionId);
}
