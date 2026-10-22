import 'dart:async';

import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// A store event, tagged with the sequence number it was received at.
///
/// The sequence number lets a late listener ignore the events that arrived
/// before it started waiting — a purchase must not resolve on a transaction
/// left over from an earlier attempt.
class StoreEvent {
  /// The receipt order of the event within the queue.
  final int seq;

  /// The transaction the store reported.
  final StoreTransaction transaction;

  const StoreEvent(this.seq, this.transaction);
}

/// A pending wait for a store event, cancellable by its owner.
class PendingStoreEvent {
  final Future<List<StoreTransaction>> future;
  final void Function() _cancel;

  PendingStoreEvent(this.future, this._cancel);

  /// Abandons the wait. The future never completes.
  void cancel() => _cancel();
}

/// The store's event buffer.
///
/// It subscribes to the store's transaction stream once, keeps the last
/// [recentLimit] transactions it saw, and hands out two kinds of wait:
///
/// * [waitForTerminal] — the first transaction for one product, used by the
///   purchase flow;
/// * [collect] — everything that arrives during a quiet window, used by the
///   restore flow.
class StoreEventQueue {
  /// The subscriptions this queue holds open.
  late final StreamSubscription<List<StoreTransaction>> _subscription;

  /// The broadcast feed of the events as they arrive.
  final StreamController<StoreEvent> _controller =
      StreamController<StoreEvent>.broadcast();

  /// Every transaction the queue has seen, oldest first.
  final List<StoreTransaction> _recent = <StoreTransaction>[];

  /// How many transactions [recent] keeps.
  ///
  /// The buffer is a diagnostic window, not a log: a long-lived app would
  /// otherwise keep every transaction it ever saw.
  static const int recentLimit = 64;

  int _nextSeq = 0;

  StoreEventQueue({required Stream<List<StoreTransaction>> source}) {
    _subscription = source.listen(_onBatch);
  }

  /// The events as they arrive.
  Stream<StoreEvent> get events => _controller.stream;

  /// The sequence number the next event will carry.
  ///
  /// A wait that starts at this sequence only sees the events that arrive
  /// after it — which is how a purchase is kept from settling on a
  /// transaction the store replayed from an earlier session.
  int get seq => _nextSeq;

  /// Every transaction the queue has seen, oldest first.
  List<StoreTransaction> get recent =>
      List<StoreTransaction>.unmodifiable(_recent);

  void _onBatch(List<StoreTransaction> batch) {
    for (final transaction in batch) {
      final event = StoreEvent(_nextSeq++, transaction);
      _recent.add(transaction);
      if (_recent.length > recentLimit) {
        _recent.removeAt(0);
      }
      _controller.add(event);
    }
  }

  /// Waits for the first transaction of [productId] that arrives from now on.
  ///
  /// Only a transaction the store reports *for this purchase* settles the
  /// wait: a restored transaction and a deferred one are not the outcome of
  /// a fresh purchase, so they are ignored. A transaction the store
  /// replayed from an earlier session is ignored as well, by starting the
  /// wait at [fromSeq] — the sequence the store had reached when it
  /// accepted the purchase request.
  ///
  /// The wait ends with an empty list when [timeout] elapses without a
  /// matching transaction.
  PendingStoreEvent waitForTerminal({
    required String productId,
    required Duration timeout,
    int? fromSeq,
  }) {
    final startSeq = fromSeq ?? _nextSeq;
    final completer = Completer<List<StoreTransaction>>();
    StreamSubscription<StoreEvent>? subscription;
    Timer? timer;

    void finish(List<StoreTransaction> transactions) {
      if (completer.isCompleted) return;
      timer?.cancel();
      subscription?.cancel();
      completer.complete(transactions);
    }

    subscription = _controller.stream.listen((event) {
      if (event.seq < startSeq) return;
      if (event.transaction.productId != productId) return;
      // A replayed or deferred transaction is not this purchase's outcome.
      if (event.transaction.status == StoreTransactionStatus.restored) return;
      if (event.transaction.status == StoreTransactionStatus.pending) return;
      finish([event.transaction]);
    });

    timer = Timer(timeout, () {
      finish(const []);
    });

    return PendingStoreEvent(completer.future, () {
      timer?.cancel();
      subscription?.cancel();
    });
  }

  /// Collects every transaction that arrives during a quiet window.
  ///
  /// The window restarts on each arrival, so a slow restore is not reported
  /// as an empty one. [timeout] is the hard ceiling.
  PendingStoreEvent collect({
    required Duration quietPeriod,
    required Duration timeout,
  }) {
    final startSeq = _nextSeq;
    final completer = Completer<List<StoreTransaction>>();
    final collected = <StoreTransaction>[];
    StreamSubscription<StoreEvent>? subscription;
    Timer? quietTimer;
    Timer? hardTimer;

    void finish() {
      if (completer.isCompleted) return;
      quietTimer?.cancel();
      hardTimer?.cancel();
      subscription?.cancel();
      completer.complete(List<StoreTransaction>.unmodifiable(collected));
    }

    subscription = _controller.stream.listen((event) {
      if (event.seq < startSeq) return;
      collected.add(event.transaction);
      quietTimer?.cancel();
      quietTimer = Timer(quietPeriod, finish);
    });

    quietTimer = Timer(quietPeriod, finish);
    hardTimer = Timer(timeout, finish);

    return PendingStoreEvent(completer.future, () {
      quietTimer?.cancel();
      hardTimer?.cancel();
      subscription?.cancel();
    });
  }

  /// Releases the queue's subscription to the store's stream.
  Future<void> dispose() async {
    await _subscription.cancel();
    await _controller.close();
  }
}
