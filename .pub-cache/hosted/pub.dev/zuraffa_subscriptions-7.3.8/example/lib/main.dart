// The zuraffa_subscriptions example: every plugin operation, wired end
// to end, on android, ios and macos.
//
// The in-memory store is seeded with a small catalog (the template's
// simulator seam) and the panels exercise: products, purchase,
// finishPurchase, restoreFor, entitlementsFor/hasEntitlement,
// snapshotFor, and the verbatim SubscriptionException banner (simulate
// a store error).
library;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:zuraffa_subscriptions/zuraffa_subscriptions.dart';

const _demoUser = 'demo-user';

Future<void> main() async {
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
    Product(
      id: 'pro-yearly',
      storeId: 'pro.yearly',
      title: 'Pro — yearly',
      description: 'Everything, billed yearly (2 months free).',
      priceMicros: 49990000,
      currency: 'USD',
      period: '1 year',
    ),
  ]);
  registerSubscriptionDependencies(GetIt.instance, store: store);
  runApp(ZuraffaSubscriptionsExampleApp(
    initialService: SubscriptionService(store: store),
    store: store,
  ));
}

class ZuraffaSubscriptionsExampleApp extends StatelessWidget {
  const ZuraffaSubscriptionsExampleApp({
    super.key,
    this.initialService,
    this.store,
  });

  final SubscriptionService? initialService;
  final InMemorySubscriptionStore? store;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zuraffa_subscriptions example',
      theme: ThemeData(colorSchemeSeed: const Color(0xFF7B61FF), useMaterial3: true),
      home: SubscriptionsPage(service: initialService, store: store),
    );
  }
}

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key, this.service, this.store});

  final SubscriptionService? service;
  final InMemorySubscriptionStore? store;

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  late SubscriptionService _subs;
  late InMemorySubscriptionStore _store;
  List<Product> _catalog = const [];
  final List<StorePurchase> _pending = [];
  EntitlementSnapshot? _snapshot;
  String? _error;

  @override
  void initState() {
    super.initState();
    _subs = widget.service ?? GetIt.instance<SubscriptionService>();
    _store = widget.store ?? InMemorySubscriptionStore();
    _refreshCatalog();
    _refreshSnapshot();
  }

  Future<void> _refreshCatalog() async {
    try {
      final products = await _subs.products(
          ['pro.monthly', 'pro.yearly', 'missing.product']);
      setState(() => _catalog = products);
    } on SubscriptionException catch (error) {
      setState(() => _error = '${error.code}: ${error.message}');
    }
  }

  Future<void> _refreshSnapshot() async {
    try {
      final snapshot = await _subs.snapshotFor(_demoUser);
      setState(() => _snapshot = snapshot);
    } on SubscriptionException catch (error) {
      setState(() => _error = '${error.code}: ${error.message}');
    }
  }

  Future<void> _purchase(Product product) async {
    try {
      setState(() => _error = null);
      final purchase = await _subs.purchase(PurchaseRequest(
        productId: product.storeId,
        appAccountUserId: _demoUser,
      ));
      setState(() => _pending.add(purchase));
      await _refreshSnapshot();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('purchased ${product.storeId} — finish to grant')));
    } on SubscriptionException catch (error) {
      setState(() => _error = '${error.code}: ${error.message}');
    }
  }

  Future<void> _finish(StorePurchase purchase) async {
    try {
      await _subs.finishPurchase(purchase);
      setState(() => _pending.remove(purchase));
      await _refreshSnapshot();
    } on SubscriptionException catch (error) {
      setState(() => _error = '${error.code}: ${error.message}');
    }
  }

  Future<void> _restore() async {
    final restored = await _subs.restoreFor(_demoUser);
    setState(() {
      // Dedupe by transaction id: restoring an already-pending (or
      // already-finished) purchase must not duplicate list entries.
      for (final purchase in restored) {
        final exists = _pending
            .any((p) => p.transactionId == purchase.transactionId);
        if (!exists) _pending.add(purchase);
      }
    });
    await _refreshSnapshot();
  }

  Future<void> _simulateError() async {
    // Arm the store, then immediately attempt a purchase: the verbatim
    // store error appears in the banner without any extra steps.
    _store.setNextError(const SubscriptionException(
      'store_unavailable',
      'The simulated store refused the transaction.',
    ));
    final product = _catalog.isNotEmpty ? _catalog.first : null;
    if (product == null) {
      setState(() => _error =
          'store_unavailable: armed — the next purchase will fail');
      return;
    }
    await _purchase(product);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('zuraffa_subscriptions')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null)
            Card(
              color: Theme.of(context).colorScheme.errorContainer,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(_error!, key: const Key('error-banner')),
              ),
            ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Catalog (products)',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  if (_catalog.isEmpty) const Text('catalog empty'),
                  for (final product in _catalog)
                    Padding(
                      key: Key('product-${product.storeId}'),
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '${product.title} · ${product.period} — '
                                  '${(product.priceMicros / 1000000).toStringAsFixed(2)} ${product.currency}',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              const SizedBox(width: 8),
                              FilledButton(
                                key: Key('buy-${product.storeId}'),
                                onPressed: () => _purchase(product),
                                child: const Text('purchase'),
                              ),
                            ],
                          ),
                          Text(product.description),
                        ],
                      ),
                    ),
                  const Divider(),
                  Wrap(
                    spacing: 8,
                    children: [
                      OutlinedButton(
                        key: const Key('restore'),
                        onPressed: _restore,
                        child: const Text('restoreFor'),
                      ),
                      OutlinedButton(
                        key: const Key('simulate-error'),
                        onPressed: () => _simulateError(),
                        child: const Text('simulate store error'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_pending.isNotEmpty)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pending purchases — finishPurchase',
                        style: Theme.of(context).textTheme.titleMedium),
                    for (final (index, purchase) in _pending.indexed)
                      ListTile(
                        key: Key('pending-$index-${purchase.transactionId}'),
                        dense: true,
                        title: Text(purchase.productId),
                        subtitle: Text('${purchase.state.name} · ${purchase.transactionId}'),
                        trailing: TextButton(
                          key: Key('finish-$index-${purchase.transactionId}'),
                          onPressed: () => _finish(purchase),
                          child: const Text('finish'),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                key: const Key('entitlements-card'),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Entitlements ($_demoUser)',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('snapshot: ${_snapshot?.id ?? '-'} · '
                      'generated ${_snapshot?.generatedAt ?? 0}'),
                  for (final entitlement in _snapshot?.entitlements ?? const [])
                    ListTile(
                      dense: true,
                      leading: const Icon(Icons.workspace_premium),
                      title: Text(entitlement.productId),
                      subtitle: Text('${entitlement.state.toString().split('.').last} · '
                          'granted ${entitlement.grantedAt}'),
                    ),
                  if ((_snapshot?.entitlements.isEmpty ?? true))
                    const Text('no entitlements yet — purchase + finish above'),
                  for (final product in const ['pro.monthly', 'pro.yearly'])
                    FutureBuilder<bool>(
                      future: _subs.hasEntitlement(_demoUser, product),
                      builder: (context, snap) => Text(
                        'hasEntitlement($product): ${snap.data ?? '…'}',
                        key: Key('has-$product'),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
