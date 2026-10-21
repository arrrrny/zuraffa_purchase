import 'dart:async';

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// The transport seam the store flow runs over.
///
/// The domain never talks to `package:in_app_purchase` directly — it talks
/// to this seam, so the same flow runs over the bundled store plugin, over a
/// native shell the app supplies, or over a fake in a test.
abstract class StoreClient {
  const StoreClient();

  /// The store's transaction stream — purchases, restores and the replay of
  /// unfinished transactions all arrive here.
  Stream<List<StoreTransaction>> get transactionStream;

  /// Whether the store can be reached at all.
  Future<bool> isAvailable();

  /// The products the store offers for [productIds]. Ids the store does not
  /// offer are absent from the result.
  Future<List<StoreProduct>> queryProducts(Set<String> productIds);

  /// Starts the purchase described by [request]. The outcome arrives on
  /// [transactionStream] — this call only reports whether the store accepted
  /// the request.
  Future<void> startPurchase(StorePurchaseRequest request);

  /// Asks the store to replay the purchases the user already owns. The
  /// replayed transactions arrive on [transactionStream].
  ///
  /// [applicationUserName] is the account id the purchases were made under —
  /// the store expects the same one it was given at purchase time.
  Future<void> restore({String? applicationUserName});

  /// Acknowledges [transactionId] on the store so it stops replaying it.
  /// A transaction the store does not know is a no-op.
  Future<void> complete(String transactionId);
}
