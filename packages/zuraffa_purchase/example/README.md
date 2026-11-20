# zuraffa_purchase

In-app purchase plugin for Zuraffa/Flutter — query products, launch the native
purchase flow, and verify/restore purchases across the App Store and Play Store.

## Buy a product

```dart
import 'package:flutter/material.dart';
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

Future<void> buy() async {
  final products = await ZuraffaPurchase.queryProducts({'premium'});
  final purchase = await ZuraffaPurchase.buyNonConsumable(
    product: products.first,
  );
  debugPrint('purchased: ${purchase.productId}');
}
```

## Restore purchases

```dart
import 'package:zuraffa_purchase/zuraffa_purchase.dart';

final restored = await ZuraffaPurchase.restorePurchases();
```