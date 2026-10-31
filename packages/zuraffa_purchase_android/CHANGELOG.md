# Changelog

## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

## Unreleased

- The adapter hands the shared core the Play Billing-specific knowledge it
  cannot hold itself: `playPeriod` reads the billing period of a product
  from the pricing phase that recurs — the first phase is often a free
  trial, which does not repeat — so a monthly plan reads `P1M` and a yearly
  one `P1Y`, and `playPurchaseParam` builds the purchase parameter.
- A purchase that asks to replace a subscription goes to the store as a
  `GooglePlayPurchaseParam` with a `ChangeSubscriptionParam`, so an upgrade
  or a downgrade replaces the old subscription instead of buying a second
  one.
- `AndroidPurchaseException` is now a `PurchaseException` — the typed
  failure the domain speaks — instead of a separate type, so a native Play
  Billing failure reaches the caller as a typed failure with its own code.

## 0.1.1

- No code change: released in lockstep with the `zuraffa_purchase` family so
  the in-family version constraints stay aligned across the five packages.

## 0.1.0

- Initial release of the Android adapter: Play Billing, reached through
  `package:in_app_purchase` and `in_app_purchase_android`.
- `registerAndroidPurchaseDependencies` registers the `StoreApi` on the
  locator; `registerPurchaseDependencies` then wires the purchase port, the
  service and the subscription store over it.
- `AndroidPurchaseException` classifies the native failure codes and marks the
  recoverable ones.
- `in_app_purchase_android` is pinned to `^0.5.5`, so the app's Android build
  resolves the current Play Billing implementation.
