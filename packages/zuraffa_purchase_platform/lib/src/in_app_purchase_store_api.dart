import 'package:zuraffa_purchase/zuraffa_purchase.dart';

import 'store_client.dart';
import 'store_event_queue.dart';

/// The [StoreApi] over a [StoreClient].
///
/// This is where the *flow* lives — the part that is the same on every store
/// even though the dialects differ:
///
/// * a purchase waits for the terminal transaction of its product;
/// * a restore settles after a quiet window, so a slow restore is not
///   reported as an empty one;
/// * finishing is idempotent.
class InAppPurchaseStoreApi implements StoreApi {
  /// The transport the flow runs over.
  final StoreClient client;

  /// How long a purchase may take to reach a terminal state.
  final Duration purchaseTimeout;

  /// How long the restore stream must stay quiet before the restore settles.
  final Duration restoreQuietPeriod;

  /// The hard ceiling on a restore.
  final Duration restoreTimeout;

  /// The account id the store replays purchases for.
  final String? restoreAccountId;

  /// The store's event buffer.
  final StoreEventQueue _queue;

  InAppPurchaseStoreApi({
    required this.client,
    this.purchaseTimeout = const Duration(minutes: 2),
    this.restoreQuietPeriod = const Duration(seconds: 2),
    this.restoreTimeout = const Duration(minutes: 1),
    this.restoreAccountId,
  }) : _queue = StoreEventQueue(source: client.transactionStream);

  @override
  Future<bool> isAvailable() => client.isAvailable();

  @override
  Future<List<StoreProduct>> queryProducts(Set<String> productIds) =>
      client.queryProducts(productIds);

  @override
  Future<StoreTransaction> purchase(StorePurchaseRequest request) async {
    // The store accepts the request first, and the wait starts from the
    // sequence the store had reached by then: a transaction the store
    // replayed from an earlier session cannot settle this purchase.
    await client.startPurchase(request);
    final pending = _queue.waitForTerminal(
      productId: request.productId,
      timeout: purchaseTimeout,
      fromSeq: _queue.seq,
    );
    final transactions = await pending.future;
    if (transactions.isEmpty) {
      throw PurchaseException.timeout(
        'the purchase of "${request.productId}" did not reach a terminal state '
        'within ${purchaseTimeout.inSeconds}s',
      );
    }
    return transactions.first;
  }

  @override
  Future<List<StoreTransaction>> restore() async {
    final pending = _queue.collect(
      quietPeriod: restoreQuietPeriod,
      timeout: restoreTimeout,
    );
    try {
      await client.restore(applicationUserName: restoreAccountId);
    } catch (_) {
      pending.cancel();
      rethrow;
    }
    final transactions = await pending.future;
    return transactions;
  }

  @override
  Future<void> complete(String transactionId) => client.complete(transactionId);

  @override
  Stream<List<StoreTransaction>> get transactions async* {
    await for (final event in _queue.events) {
      yield [event.transaction];
    }
  }

  @override
  Future<void> dispose() => _queue.dispose();
}
