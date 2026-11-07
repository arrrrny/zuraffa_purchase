// Executable documentation: the complete subscription flow over the
// in-memory store.
library;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';
import 'package:zuraffa_subscriptions_example/main.dart';

void main() {
  testWidgets('catalog -> purchase -> finish -> entitlement', (tester) async {
    final store = InMemorySubscriptionStore(products: [
      Product(
        id: 'pro-monthly',
        storeId: 'pro.monthly',
        title: 'Pro — monthly',
        description: 'Everything, billed monthly.',
        priceMicros: 4990000,
        currency: 'USD',
        period: '1 month',
      ),
    ]);
    final service = SubscriptionService(store: store);
    // A tall viewport fits the whole page — no scroll bookkeeping.
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(ZuraffaSubscriptionsExampleApp(
      initialService: service,
      store: store,
    ));
    await tester.pumpAndSettle();

    // Unknown catalog ids are absent; seeded ids render.
    expect(find.textContaining('pro.monthly'), findsWidgets);

    // Purchase, then finish: the entitlement lands in the snapshot.
    await tester.tap(find.byKey(const Key('buy-pro.monthly')));
    await tester.pumpAndSettle();
    expect(store.ownedPurchases, isNotEmpty);
    final purchase = store.ownedPurchases.single;
    expect(find.textContaining('finishPurchase'), findsOneWidget);
    await tester.tap(find.byKey(
        Key('finish-0-${purchase.transactionId}')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('has-pro.monthly')), findsOneWidget);
    expect(service.hasEntitlement('demo-user', 'pro.monthly'),
        completion(isTrue));

    // restoreFor re-surfaces the finished purchase — twice: the pending
    // list must dedupe by transaction id (duplicate ListView keys crash).
    final restored = await service.restoreFor('demo-user');
    expect(restored, isNotEmpty);
    await tester.tap(find.byKey(const Key('restore')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('restore')));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);

    // simulate store error: the verbatim banner appears IMMEDIATELY
    // (arm + attempt in one action).
    await tester.tap(find.byKey(const Key('simulate-error')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('error-banner')), findsOneWidget);
    expect(find.textContaining('store_unavailable'), findsOneWidget);
  });
}
