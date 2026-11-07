/// zuraffa_subscriptions — in-app purchases and subscriptions for the
/// Zuraffa ecosystem.
///
/// A [SubscriptionStorePort] (products/purchase/restore/finish) behind a
/// [SubscriptionService] that maps store transactions into domain
/// entitlements, re-derives state against the clock (active → grace →
/// expired), and snapshots per user. StoreKit/Play Billing adapters
/// implement the port; the in-memory store is fully scriptable.
///
/// ```dart
/// final subs = SubscriptionService();
/// final purchase = await subs.purchase(PurchaseRequest(
///     productId: 'pro.monthly', appAccountUserId: userId));
/// await subs.finishPurchase(purchase);
/// final hasPro = await subs.hasEntitlement(userId, 'pro.monthly');
/// ```
library;

export 'src/domain/store/subscription_store.dart';
export 'src/data/store/in_memory_subscription_store.dart';
export 'src/domain/entities/enums/entitlement_state.dart';
export 'src/domain/entities/enums/purchase_state.dart';
export 'src/domain/entities/product/product.dart';
export 'src/domain/entities/purchase/purchase.dart';
export 'src/domain/entities/entitlement/entitlement.dart';
export 'src/domain/entities/entitlement_snapshot/entitlement_snapshot.dart';
export 'src/subscription_service.dart';
