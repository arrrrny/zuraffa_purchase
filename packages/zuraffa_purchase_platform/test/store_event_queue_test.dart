import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';
import 'package:zuraffa_purchase_platform/zuraffa_purchase_platform.dart';

StoreTransaction _transaction(
  String id, {
  String productId = 'pro.monthly',
  StoreTransactionStatus status = StoreTransactionStatus.purchased,
}) => StoreTransaction(
  transactionId: id,
  productId: productId,
  status: status,
  purchasedAt: 0,
);

void main() {
  late StreamController<List<StoreTransaction>> source;

  setUp(() {
    source = StreamController<List<StoreTransaction>>.broadcast();
  });

  tearDown(() async {
    await source.close();
  });

  group('StoreEventQueue', () {
    test('resolves a terminal event for the requested product', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(seconds: 5),
      );
      source.add([_transaction('tx-1')]);

      final transactions = await pending.future;
      expect(transactions, hasLength(1));
      expect(transactions.single.transactionId, 'tx-1');
    });

    test('ignores transactions for another product', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(milliseconds: 120),
      );
      source.add([_transaction('tx-other', productId: 'boost.one')]);

      expect(await pending.future, isEmpty);
    });

    test(
      'ignores a transaction that arrived before the wait started',
      () async {
        final queue = StoreEventQueue(source: source.stream);
        addTearDown(queue.dispose);

        source.add([_transaction('tx-stale')]);
        await Future<void>.delayed(Duration.zero);

        final pending = queue.waitForTerminal(
          productId: 'pro.monthly',
          timeout: const Duration(milliseconds: 120),
        );
        source.add([_transaction('tx-fresh')]);

        final transactions = await pending.future;
        expect(transactions, hasLength(1));
        expect(
          transactions.single.transactionId,
          'tx-fresh',
          reason: 'a purchase must not resolve on a leftover transaction',
        );
      },
    );

    test('ignores a restored transaction', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(milliseconds: 120),
      );
      source.add([
        _transaction('tx-restored', status: StoreTransactionStatus.restored),
      ]);

      expect(
        await pending.future,
        isEmpty,
        reason: 'a restored transaction is not the outcome of a fresh purchase',
      );
    });

    test('ignores a pending transaction', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(milliseconds: 120),
      );
      source.add([
        _transaction('tx-pending', status: StoreTransactionStatus.pending),
      ]);

      expect(
        await pending.future,
        isEmpty,
        reason: 'a deferred purchase has not reached a terminal state',
      );
    });

    test('ignores the events that arrived before the given sequence', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      source.add([_transaction('tx-stale')]);
      await Future<void>.delayed(Duration.zero);
      final fromSeq = queue.seq;

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(milliseconds: 120),
        fromSeq: fromSeq,
      );
      source.add([_transaction('tx-fresh')]);

      final transactions = await pending.future;
      expect(transactions, hasLength(1));
      expect(transactions.single.transactionId, 'tx-fresh');
    });

    test('times out with no transactions', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.waitForTerminal(
        productId: 'pro.monthly',
        timeout: const Duration(milliseconds: 60),
      );

      expect(await pending.future, isEmpty);
    });

    test('collects a batch and settles after the quiet period', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.collect(
        quietPeriod: const Duration(milliseconds: 80),
        timeout: const Duration(seconds: 5),
      );
      source.add([_transaction('tx-1'), _transaction('tx-2')]);
      source.add([_transaction('tx-3')]);

      final transactions = await pending.future;
      expect(
        transactions.map((transaction) => transaction.transactionId).toList(),
        ['tx-1', 'tx-2', 'tx-3'],
      );
    });

    test('collect settles empty when the store stays quiet', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.collect(
        quietPeriod: const Duration(milliseconds: 60),
        timeout: const Duration(seconds: 5),
      );

      expect(await pending.future, isEmpty);
    });

    test('collect stops at the hard ceiling', () async {
      final queue = StoreEventQueue(source: source.stream);
      addTearDown(queue.dispose);

      final pending = queue.collect(
        quietPeriod: const Duration(seconds: 30),
        timeout: const Duration(milliseconds: 120),
      );

      expect(await pending.future, isEmpty);
    });
  });
}
