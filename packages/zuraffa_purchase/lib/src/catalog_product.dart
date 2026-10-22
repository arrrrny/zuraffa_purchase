/// A product the store offers.
///
/// This is the purchase package's own catalog type. It is deliberately *not*
/// named `Product`: `zuraffa_subscriptions` exports a `Product` entity of its
/// own, and both packages land in the same import graph in a consuming app.
class CatalogProduct {
  /// The store's product id — the identifier the store is queried and
  /// purchased with.
  final String id;

  /// The store's display title.
  final String title;

  /// The store's display description.
  final String description;

  /// The price in micro-units of [currency] — `9.99` USD is `9900000`.
  ///
  /// The store's own price string is locale-formatted, so it is normalized to
  /// an integer at the adapter boundary; a price the store reports in an
  /// unparsable form normalizes to `0` rather than failing the catalog.
  final int priceMicros;

  /// The ISO currency code, e.g. `USD`.
  final String currency;

  /// The billing period label for a subscription, e.g. `P1M`. Null for
  /// one-off products.
  final String? period;

  const CatalogProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.priceMicros,
    required this.currency,
    this.period,
  });

  @override
  bool operator ==(Object other) =>
      other is CatalogProduct &&
          other.id == id &&
          other.title == title &&
          other.description == description &&
          other.priceMicros == priceMicros &&
          other.currency == currency &&
          other.period == period;

  @override
  int get hashCode =>
      Object.hash(id, title, description, priceMicros, currency, period);

  @override
  String toString() => 'CatalogProduct($id, $priceMicros $currency)';
}
