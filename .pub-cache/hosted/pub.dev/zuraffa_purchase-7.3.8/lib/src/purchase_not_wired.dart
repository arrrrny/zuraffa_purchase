/// The typed failure raised while no platform adapter is registered.
///
/// It lives in its own library so the port can raise it without importing
/// the composition root — the composition root re-exports it, so the public
/// API of the package is unchanged.
class PurchaseNotWired implements Exception {
  const PurchaseNotWired();

  @override
  String toString() =>
      'PurchaseNotWired: no store was registered — call the platform '
      "adapter's register*PurchaseDependencies before using the port.";
}
