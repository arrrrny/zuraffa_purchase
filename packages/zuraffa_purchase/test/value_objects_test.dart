import 'package:test/test.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

void main() {
  group('CatalogProduct', () {
    const product = CatalogProduct(
      id: 'pro.monthly',
      title: 'Pro monthly',
      description: 'monthly plan',
      priceMicros: 4990000,
      currency: 'USD',
      period: 'P1M',
    );

    test('two products with the same fields are equal', () {
      expect(product, const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ));
      expect(product.hashCode, const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ).hashCode);
    });

    test('a product equals itself', () {
      expect(product, product);
    });

    test('a product does not equal an object of another type', () {
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ).toString())));
    });

    test('a product differing in any one field is not equal', () {
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.other',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ))), reason: 'the id is part of the identity');
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Other title',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ))), reason: 'the title is part of the identity');
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'other description',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1M',
      ))), reason: 'the description is part of the identity');
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 1,
        currency: 'USD',
        period: 'P1M',
      ))), reason: 'the price is part of the identity');
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'EUR',
        period: 'P1M',
      ))), reason: 'the currency is part of the identity');
      expect(product, isNot(equals(const CatalogProduct(
        id: 'pro.monthly',
        title: 'Pro monthly',
        description: 'monthly plan',
        priceMicros: 4990000,
        currency: 'USD',
        period: 'P1Y',
      ))), reason: 'the billing period is part of the identity');
    });

    test('describes itself with its id, price and currency', () {
      expect(product.toString(), 'CatalogProduct(pro.monthly, 4990000 USD)');
    });
  });

  group('PurchaseOutcome', () {
    const outcome = PurchaseOutcome(
      transactionId: 'tx-1',
      productId: 'pro.monthly',
      status: PurchaseStatus.purchased,
      purchasedAt: 1700000000000,
      expiresAt: 1700000000000 + 2678400000,
      pendingFinish: true,
      receipt: 'receipt-abc',
    );

    test('two outcomes with the same fields are equal', () {
      expect(outcome, const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ));
      expect(outcome.hashCode, const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ).hashCode);
    });

    test('an outcome equals itself', () {
      expect(outcome, outcome);
    });

    test('an outcome differing in any one field is not equal', () {
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-2',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ))), reason: 'the transaction id is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.other',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ))), reason: 'the product id is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.cancelled,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ))), reason: 'the status is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000001,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ))), reason: 'the purchase date is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400001,
        pendingFinish: true,
        receipt: 'receipt-abc',
      ))), reason: 'the expiry is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: false,
        receipt: 'receipt-abc',
      ))), reason: 'the pending flag is part of the identity');
      expect(outcome, isNot(equals(const PurchaseOutcome(
        transactionId: 'tx-1',
        productId: 'pro.monthly',
        status: PurchaseStatus.purchased,
        purchasedAt: 1700000000000,
        expiresAt: 1700000000000 + 2678400000,
        pendingFinish: true,
        receipt: 'other-receipt',
      ))), reason: 'the receipt is part of the identity');
    });

    test('describes itself with its transaction id, product id and status', () {
      expect(
        outcome.toString(),
        'PurchaseOutcome(tx-1, pro.monthly, purchased)',
      );
    });
  });
}
