// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Product {
  Product({
    required String this.id,
    required String this.storeId,
    required String this.title,
    required String this.description,
    required int this.priceMicros,
    required String this.currency,
    required String this.period,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  final String id;

  final String storeId;

  final String title;

  final String description;

  final int priceMicros;

  final String currency;

  final String period;

  Product copyWith({
    String? id,
    String? storeId,
    String? title,
    String? description,
    int? priceMicros,
    String? currency,
    String? period,
  }) {
    return Product(
      id: id ?? this.id,
      storeId: storeId ?? this.storeId,
      title: title ?? this.title,
      description: description ?? this.description,
      priceMicros: priceMicros ?? this.priceMicros,
      currency: currency ?? this.currency,
      period: period ?? this.period,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Product copyWithField<T>(Field<Product, T> field, T value) {
    switch (field.name) {
      case 'id':
        return copyWith(id: value as String);
      case 'storeId':
        return copyWith(storeId: value as String);
      case 'title':
        return copyWith(title: value as String);
      case 'description':
        return copyWith(description: value as String);
      case 'priceMicros':
        return copyWith(priceMicros: value as int);
      case 'currency':
        return copyWith(currency: value as String);
      case 'period':
        return copyWith(period: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Product has no settable field with this name',
        );
    }
  }

  Product copyWithProduct({
    String? id,
    String? storeId,
    String? title,
    String? description,
    int? priceMicros,
    String? currency,
    String? period,
  }) {
    return copyWith(
      id: id,
      storeId: storeId,
      title: title,
      description: description,
      priceMicros: priceMicros,
      currency: currency,
      period: period,
    );
  }

  Product patchWithProduct([ProductPatch? patchInput]) {
    final _patcher = patchInput ?? ProductPatch();
    final _patchMap = _patcher.patchMap;
    return Product(
      id: _patchMap.containsKey(Product$.id)
          ? ((_patchMap[Product$.id] is Function)
                    ? _patchMap[Product$.id](this.id)
                    : (_patchMap[Product$.id] is Patch)
                    ? _patchMap[Product$.id].applyTo(this.id)
                    : _patchMap[Product$.id])
                as String
          : this.id,
      storeId: _patchMap.containsKey(Product$.storeId)
          ? ((_patchMap[Product$.storeId] is Function)
                    ? _patchMap[Product$.storeId](this.storeId)
                    : (_patchMap[Product$.storeId] is Patch)
                    ? _patchMap[Product$.storeId].applyTo(this.storeId)
                    : _patchMap[Product$.storeId])
                as String
          : this.storeId,
      title: _patchMap.containsKey(Product$.title)
          ? ((_patchMap[Product$.title] is Function)
                    ? _patchMap[Product$.title](this.title)
                    : (_patchMap[Product$.title] is Patch)
                    ? _patchMap[Product$.title].applyTo(this.title)
                    : _patchMap[Product$.title])
                as String
          : this.title,
      description: _patchMap.containsKey(Product$.description)
          ? ((_patchMap[Product$.description] is Function)
                    ? _patchMap[Product$.description](this.description)
                    : (_patchMap[Product$.description] is Patch)
                    ? _patchMap[Product$.description].applyTo(this.description)
                    : _patchMap[Product$.description])
                as String
          : this.description,
      priceMicros: _patchMap.containsKey(Product$.priceMicros)
          ? ((_patchMap[Product$.priceMicros] is Function)
                    ? _patchMap[Product$.priceMicros](this.priceMicros)
                    : (_patchMap[Product$.priceMicros] is Patch)
                    ? _patchMap[Product$.priceMicros].applyTo(this.priceMicros)
                    : _patchMap[Product$.priceMicros])
                as int
          : this.priceMicros,
      currency: _patchMap.containsKey(Product$.currency)
          ? ((_patchMap[Product$.currency] is Function)
                    ? _patchMap[Product$.currency](this.currency)
                    : (_patchMap[Product$.currency] is Patch)
                    ? _patchMap[Product$.currency].applyTo(this.currency)
                    : _patchMap[Product$.currency])
                as String
          : this.currency,
      period: _patchMap.containsKey(Product$.period)
          ? ((_patchMap[Product$.period] is Function)
                    ? _patchMap[Product$.period](this.period)
                    : (_patchMap[Product$.period] is Patch)
                    ? _patchMap[Product$.period].applyTo(this.period)
                    : _patchMap[Product$.period])
                as String
          : this.period,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product &&
        id == other.id &&
        storeId == other.storeId &&
        title == other.title &&
        description == other.description &&
        priceMicros == other.priceMicros &&
        currency == other.currency &&
        period == other.period;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.id,
      this.storeId,
      this.title,
      this.description,
      this.priceMicros,
      this.currency,
      this.period,
    );
  }

  @override
  String toString() {
    return 'Product(' +
        'id: ${id}' +
        ', ' +
        'storeId: ${storeId}' +
        ', ' +
        'title: ${title}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'priceMicros: ${priceMicros}' +
        ', ' +
        'currency: ${currency}' +
        ', ' +
        'period: ${period})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductToJson(this);
    _sanitizeJson(data);
    return data;
  }

  dynamic _sanitizeJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      json.remove('__typename');
      return json..forEach((key, value) {
        json[key] = _sanitizeJson(value);
      });
    } else if (json is List) {
      return json.map((e) => _sanitizeJson(e)).toList();
    }
    return json;
  }
}

extension ProductPropertyHelpers on Product {
  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasStoreId {
    return this.storeId.isNotEmpty;
  }

  bool get noStoreId {
    return this.storeId.isEmpty;
  }

  bool get hasTitle {
    return this.title.isNotEmpty;
  }

  bool get noTitle {
    return this.title.isEmpty;
  }

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get hasCurrency {
    return this.currency.isNotEmpty;
  }

  bool get noCurrency {
    return this.currency.isEmpty;
  }

  bool get hasPeriod {
    return this.period.isNotEmpty;
  }

  bool get noPeriod {
    return this.period.isEmpty;
  }
}

extension ProductSerialization on Product {
  Map<String, dynamic> toJson() {
    return _$ProductToJson(this);
  }
}

enum Product$ { id, storeId, title, description, priceMicros, currency, period }

class ProductPatch extends PatchBase<Product, Product$> {
  Product applyTo(Product entity) {
    return entity.patchWithProduct(this);
  }

  ProductPatch withId(String? value) {
    patchMap[Product$.id] = value;
    return this;
  }

  ProductPatch withStoreId(String? value) {
    patchMap[Product$.storeId] = value;
    return this;
  }

  ProductPatch withTitle(String? value) {
    patchMap[Product$.title] = value;
    return this;
  }

  ProductPatch withDescription(String? value) {
    patchMap[Product$.description] = value;
    return this;
  }

  ProductPatch withPriceMicros(int? value) {
    patchMap[Product$.priceMicros] = value;
    return this;
  }

  ProductPatch withCurrency(String? value) {
    patchMap[Product$.currency] = value;
    return this;
  }

  ProductPatch withPeriod(String? value) {
    patchMap[Product$.period] = value;
    return this;
  }
}

/// Field descriptors for [Product] query construction
abstract final class ProductFields {
  static const id = Field<Product, String>('id', _$id);

  static const storeId = Field<Product, String>('storeId', _$storeId);

  static const title = Field<Product, String>('title', _$title);

  static const description = Field<Product, String>(
    'description',
    _$description,
  );

  static const priceMicros = Field<Product, int>('priceMicros', _$priceMicros);

  static const currency = Field<Product, String>('currency', _$currency);

  static const period = Field<Product, String>('period', _$period);

  static String _$id(Product e) {
    return e.id;
  }

  static String _$storeId(Product e) {
    return e.storeId;
  }

  static String _$title(Product e) {
    return e.title;
  }

  static String _$description(Product e) {
    return e.description;
  }

  static int _$priceMicros(Product e) {
    return e.priceMicros;
  }

  static String _$currency(Product e) {
    return e.currency;
  }

  static String _$period(Product e) {
    return e.period;
  }
}

extension ProductCompareE on Product {
  Map<String, dynamic> compareToProduct(Product other) {
    final Map<String, dynamic> diff = {};

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (storeId != other.storeId) {
      diff['storeId'] = () => other.storeId;
    }

    if (title != other.title) {
      diff['title'] = () => other.title;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (priceMicros != other.priceMicros) {
      diff['priceMicros'] = () => other.priceMicros;
    }

    if (currency != other.currency) {
      diff['currency'] = () => other.currency;
    }

    if (period != other.period) {
      diff['period'] = () => other.period;
    }
    return diff;
  }
}
