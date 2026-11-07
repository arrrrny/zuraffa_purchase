// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'purchase.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Purchase {
  Purchase({
    required String this.id,
    required String this.productId,
    required PurchaseState this.state,
    required int this.purchasedAt,
    int? this.expiresAt,
    required String this.userId,
  });

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);

  final String id;

  final String productId;

  final PurchaseState state;

  final int purchasedAt;

  final int? expiresAt;

  final String userId;

  Purchase copyWith({
    String? id,
    String? productId,
    PurchaseState? state,
    int? purchasedAt,
    int? expiresAt,
    String? userId,
  }) {
    return Purchase(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      state: state ?? this.state,
      purchasedAt: purchasedAt ?? this.purchasedAt,
      expiresAt: expiresAt ?? this.expiresAt,
      userId: userId ?? this.userId,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Purchase copyWithField<T>(Field<Purchase, T> field, T value) {
    switch (field.name) {
      case 'id':
        return copyWith(id: value as String);
      case 'productId':
        return copyWith(productId: value as String);
      case 'state':
        return copyWith(state: value as PurchaseState);
      case 'purchasedAt':
        return copyWith(purchasedAt: value as int);
      case 'expiresAt':
        return copyWith(expiresAt: value as int?);
      case 'userId':
        return copyWith(userId: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Purchase has no settable field with this name',
        );
    }
  }

  Purchase copyWithPurchase({
    String? id,
    String? productId,
    PurchaseState? state,
    int? purchasedAt,
    int? expiresAt,
    String? userId,
  }) {
    return copyWith(
      id: id,
      productId: productId,
      state: state,
      purchasedAt: purchasedAt,
      expiresAt: expiresAt,
      userId: userId,
    );
  }

  Purchase patchWithPurchase([PurchasePatch? patchInput]) {
    final _patcher = patchInput ?? PurchasePatch();
    final _patchMap = _patcher.patchMap;
    return Purchase(
      id: _patchMap.containsKey(Purchase$.id)
          ? ((_patchMap[Purchase$.id] is Function)
                    ? _patchMap[Purchase$.id](this.id)
                    : (_patchMap[Purchase$.id] is Patch)
                    ? _patchMap[Purchase$.id].applyTo(this.id)
                    : _patchMap[Purchase$.id])
                as String
          : this.id,
      productId: _patchMap.containsKey(Purchase$.productId)
          ? ((_patchMap[Purchase$.productId] is Function)
                    ? _patchMap[Purchase$.productId](this.productId)
                    : (_patchMap[Purchase$.productId] is Patch)
                    ? _patchMap[Purchase$.productId].applyTo(this.productId)
                    : _patchMap[Purchase$.productId])
                as String
          : this.productId,
      state: _patchMap.containsKey(Purchase$.state)
          ? ((_patchMap[Purchase$.state] is Function)
                    ? _patchMap[Purchase$.state](this.state)
                    : (_patchMap[Purchase$.state] is Patch)
                    ? _patchMap[Purchase$.state].applyTo(this.state)
                    : _patchMap[Purchase$.state])
                as PurchaseState
          : this.state,
      purchasedAt: _patchMap.containsKey(Purchase$.purchasedAt)
          ? ((_patchMap[Purchase$.purchasedAt] is Function)
                    ? _patchMap[Purchase$.purchasedAt](this.purchasedAt)
                    : (_patchMap[Purchase$.purchasedAt] is Patch)
                    ? _patchMap[Purchase$.purchasedAt].applyTo(this.purchasedAt)
                    : _patchMap[Purchase$.purchasedAt])
                as int
          : this.purchasedAt,
      expiresAt: _patchMap.containsKey(Purchase$.expiresAt)
          ? ((_patchMap[Purchase$.expiresAt] is Function)
                    ? _patchMap[Purchase$.expiresAt](this.expiresAt)
                    : (_patchMap[Purchase$.expiresAt] is Patch)
                    ? _patchMap[Purchase$.expiresAt].applyTo(this.expiresAt)
                    : _patchMap[Purchase$.expiresAt])
                as int?
          : this.expiresAt,
      userId: _patchMap.containsKey(Purchase$.userId)
          ? ((_patchMap[Purchase$.userId] is Function)
                    ? _patchMap[Purchase$.userId](this.userId)
                    : (_patchMap[Purchase$.userId] is Patch)
                    ? _patchMap[Purchase$.userId].applyTo(this.userId)
                    : _patchMap[Purchase$.userId])
                as String
          : this.userId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Purchase &&
        id == other.id &&
        productId == other.productId &&
        state == other.state &&
        purchasedAt == other.purchasedAt &&
        expiresAt == other.expiresAt &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.id,
      this.productId,
      this.state,
      this.purchasedAt,
      this.expiresAt,
      this.userId,
    );
  }

  @override
  String toString() {
    return 'Purchase(' +
        'id: ${id}' +
        ', ' +
        'productId: ${productId}' +
        ', ' +
        'state: ${state}' +
        ', ' +
        'purchasedAt: ${purchasedAt}' +
        ', ' +
        'expiresAt: ${expiresAt}' +
        ', ' +
        'userId: ${userId})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$PurchaseToJson(this);
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

extension PurchasePropertyHelpers on Purchase {
  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasProductId {
    return this.productId.isNotEmpty;
  }

  bool get noProductId {
    return this.productId.isEmpty;
  }

  bool get isStatePurchased {
    return this.state == PurchaseState.purchased;
  }

  bool get isStateRestored {
    return this.state == PurchaseState.restored;
  }

  bool get isStateCancelled {
    return this.state == PurchaseState.cancelled;
  }

  bool get isStateExpired {
    return this.state == PurchaseState.expired;
  }

  bool get isStatePending {
    return this.state == PurchaseState.pending;
  }

  bool get isStateFailed {
    return this.state == PurchaseState.failed;
  }

  bool get isStateRevoked {
    return this.state == PurchaseState.revoked;
  }

  bool get hasExpiresAt {
    return this.expiresAt != null;
  }

  bool get noExpiresAt {
    return this.expiresAt == null;
  }

  int get expiresAtRequired {
    return this.expiresAt ??
        (throw StateError('expiresAt is required but was null'));
  }

  bool get hasUserId {
    return this.userId.isNotEmpty;
  }

  bool get noUserId {
    return this.userId.isEmpty;
  }
}

extension PurchaseSerialization on Purchase {
  Map<String, dynamic> toJson() {
    return _$PurchaseToJson(this);
  }
}

enum Purchase$ { id, productId, state, purchasedAt, expiresAt, userId }

class PurchasePatch extends PatchBase<Purchase, Purchase$> {
  Purchase applyTo(Purchase entity) {
    return entity.patchWithPurchase(this);
  }

  PurchasePatch withId(String? value) {
    patchMap[Purchase$.id] = value;
    return this;
  }

  PurchasePatch withProductId(String? value) {
    patchMap[Purchase$.productId] = value;
    return this;
  }

  PurchasePatch withState(PurchaseState? value) {
    patchMap[Purchase$.state] = value;
    return this;
  }

  PurchasePatch withPurchasedAt(int? value) {
    patchMap[Purchase$.purchasedAt] = value;
    return this;
  }

  PurchasePatch withExpiresAt(int? value) {
    patchMap[Purchase$.expiresAt] = value;
    return this;
  }

  PurchasePatch withUserId(String? value) {
    patchMap[Purchase$.userId] = value;
    return this;
  }
}

/// Field descriptors for [Purchase] query construction
abstract final class PurchaseFields {
  static const id = Field<Purchase, String>('id', _$id);

  static const productId = Field<Purchase, String>('productId', _$productId);

  static const state = Field<Purchase, PurchaseState>('state', _$state);

  static const purchasedAt = Field<Purchase, int>('purchasedAt', _$purchasedAt);

  static const expiresAt = Field<Purchase, int?>('expiresAt', _$expiresAt);

  static const userId = Field<Purchase, String>('userId', _$userId);

  static String _$id(Purchase e) {
    return e.id;
  }

  static String _$productId(Purchase e) {
    return e.productId;
  }

  static PurchaseState _$state(Purchase e) {
    return e.state;
  }

  static int _$purchasedAt(Purchase e) {
    return e.purchasedAt;
  }

  static int? _$expiresAt(Purchase e) {
    return e.expiresAt;
  }

  static String _$userId(Purchase e) {
    return e.userId;
  }
}

extension PurchaseCompareE on Purchase {
  Map<String, dynamic> compareToPurchase(Purchase other) {
    final Map<String, dynamic> diff = {};

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (productId != other.productId) {
      diff['productId'] = () => other.productId;
    }

    if (state != other.state) {
      diff['state'] = () => other.state;
    }

    if (purchasedAt != other.purchasedAt) {
      diff['purchasedAt'] = () => other.purchasedAt;
    }

    if (expiresAt != other.expiresAt) {
      diff['expiresAt'] = () => other.expiresAt;
    }

    if (userId != other.userId) {
      diff['userId'] = () => other.userId;
    }
    return diff;
  }
}
