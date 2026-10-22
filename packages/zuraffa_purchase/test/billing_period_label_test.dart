import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

/// A catalog entry that lets the store derive the period label itself —
/// `period: null` is what sends `fetchProducts` through `_label`.
CatalogProduct _product({String? period}) => CatalogProduct(
  id: 'pro.monthly',
  title: 'Pro monthly',
  description: 'monthly plan',
  priceMicros: 4990000,
  currency: 'USD',
  period: period,
);

PurchaseSubscriptionStore _store({
  required Duration billingPeriod,
  Map<String, Duration> billingPeriods = const {},
  String? declaredPeriod,
}) => PurchaseSubscriptionStore(
  port: ScriptedPurchasePort(
    catalog: [_product(period: declaredPeriod)],
  ),
  billingPeriod: billingPeriod,
  billingPeriods: billingPeriods,
);

void main() {
  group('PurchaseSubscriptionStore derives the ISO-8601 period label', () {
    test('a year-long billing period is labelled P1Y, not P365D', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 365),
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P1Y');
    });

    test('the year label carries the multiplier — two years is P2Y', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 730),
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P2Y');
    });

    test('a month-long billing period is labelled P1M', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 31),
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P1M');
    });

    test('the month label carries the multiplier — two months is P2M', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 62),
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P2M');
    });

    test('a period that is neither a month nor a year stays in days', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 7),
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P7D');
    });

    test('a degenerate period is never silently promoted to a month', () async {
      final products = await _store(
        billingPeriod: Duration.zero,
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P0D');
    });

    test('a period the port declares wins over the derived label', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 365),
        declaredPeriod: 'P3W',
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P3W');
    });

    test('a product-specific period overrides the store default', () async {
      final products = await _store(
        billingPeriod: const Duration(days: 7),
        billingPeriods: {'pro.monthly': const Duration(days: 365)},
      ).fetchProducts(['pro.monthly']);

      expect(products.single.period, 'P1Y');
    });
  });
}
