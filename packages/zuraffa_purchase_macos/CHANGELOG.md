# Changelog

## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

## Unreleased

- The adapter hands the shared core the StoreKit-specific knowledge it cannot
  hold itself: `storekitPeriod` reads the billing period of a product, so a
  monthly plan reads `P1M` and a yearly one `P1Y`, and
  `storekitPurchaseParam` builds the purchase parameter. The shared core no
  longer depends on `in_app_purchase_storekit`.
- A purchase that asks to replace a subscription is refused with
  `plan_change_unsupported`. The App Store has no product-change path in
  `in_app_purchase_storekit`: buying the target plan as a second purchase
  would leave the user with both entitlements and charge them twice.
- `MacosPurchaseException` is now a `PurchaseException` — the typed failure
  the domain speaks — instead of a separate type, so a native StoreKit
  failure reaches the caller as a typed failure with its own code.

## 0.1.1

- No code change: released in lockstep with the `zuraffa_purchase` family so
  the in-family version constraints stay aligned across the five packages.

## 0.1.0

- Initial release of the macOS adapter: StoreKit, reached through
  `package:in_app_purchase` and `in_app_purchase_storekit`.
- `registerMacosPurchaseDependencies` registers the `StoreApi` on the locator;
  `registerPurchaseDependencies` then wires the purchase port, the service and
  the subscription store over it.
- `MacosPurchaseException` classifies the native failure codes and marks the
  recoverable ones.
- `in_app_purchase_storekit` is pinned to `^0.4.15`, past 0.4.13, so the app's
  macOS build carries none of the StoreKit 1 deprecation warnings.
