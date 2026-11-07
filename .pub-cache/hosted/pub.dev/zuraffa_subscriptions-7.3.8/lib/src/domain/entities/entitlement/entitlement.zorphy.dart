// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'entitlement.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Entitlement {
  Entitlement({
    required String this.id,
    required String this.userId,
    required String this.productId,
    required EntitlementState this.state,
    required int this.grantedAt,
    int? this.expiresAt,
  });

  factory Entitlement.fromJson(Map<String, dynamic> json) =>
      _$EntitlementFromJson(json);

  final String id;

  final String userId;

  final String productId;

  final EntitlementState state;

  final int grantedAt;

  final int? expiresAt;

  Entitlement copyWith({
    String? id,
    String? userId,
    String? productId,
    EntitlementState? state,
    int? grantedAt,
    int? expiresAt,
  }) {
    return Entitlement(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      state: state ?? this.state,
      grantedAt: grantedAt ?? this.grantedAt,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Entitlement copyWithField<T>(Field<Entitlement, T> field, T value) {
    switch (field.name) {
      case 'id':
        return copyWith(id: value as String);
      case 'userId':
        return copyWith(userId: value as String);
      case 'productId':
        return copyWith(productId: value as String);
      case 'state':
        return copyWith(state: value as EntitlementState);
      case 'grantedAt':
        return copyWith(grantedAt: value as int);
      case 'expiresAt':
        return copyWith(expiresAt: value as int?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Entitlement has no settable field with this name',
        );
    }
  }

  Entitlement copyWithEntitlement({
    String? id,
    String? userId,
    String? productId,
    EntitlementState? state,
    int? grantedAt,
    int? expiresAt,
  }) {
    return copyWith(
      id: id,
      userId: userId,
      productId: productId,
      state: state,
      grantedAt: grantedAt,
      expiresAt: expiresAt,
    );
  }

  Entitlement patchWithEntitlement([EntitlementPatch? patchInput]) {
    final _patcher = patchInput ?? EntitlementPatch();
    final _patchMap = _patcher.patchMap;
    return Entitlement(
      id: _patchMap.containsKey(Entitlement$.id)
          ? ((_patchMap[Entitlement$.id] is Function)
                    ? _patchMap[Entitlement$.id](this.id)
                    : (_patchMap[Entitlement$.id] is Patch)
                    ? _patchMap[Entitlement$.id].applyTo(this.id)
                    : _patchMap[Entitlement$.id])
                as String
          : this.id,
      userId: _patchMap.containsKey(Entitlement$.userId)
          ? ((_patchMap[Entitlement$.userId] is Function)
                    ? _patchMap[Entitlement$.userId](this.userId)
                    : (_patchMap[Entitlement$.userId] is Patch)
                    ? _patchMap[Entitlement$.userId].applyTo(this.userId)
                    : _patchMap[Entitlement$.userId])
                as String
          : this.userId,
      productId: _patchMap.containsKey(Entitlement$.productId)
          ? ((_patchMap[Entitlement$.productId] is Function)
                    ? _patchMap[Entitlement$.productId](this.productId)
                    : (_patchMap[Entitlement$.productId] is Patch)
                    ? _patchMap[Entitlement$.productId].applyTo(this.productId)
                    : _patchMap[Entitlement$.productId])
                as String
          : this.productId,
      state: _patchMap.containsKey(Entitlement$.state)
          ? ((_patchMap[Entitlement$.state] is Function)
                    ? _patchMap[Entitlement$.state](this.state)
                    : (_patchMap[Entitlement$.state] is Patch)
                    ? _patchMap[Entitlement$.state].applyTo(this.state)
                    : _patchMap[Entitlement$.state])
                as EntitlementState
          : this.state,
      grantedAt: _patchMap.containsKey(Entitlement$.grantedAt)
          ? ((_patchMap[Entitlement$.grantedAt] is Function)
                    ? _patchMap[Entitlement$.grantedAt](this.grantedAt)
                    : (_patchMap[Entitlement$.grantedAt] is Patch)
                    ? _patchMap[Entitlement$.grantedAt].applyTo(this.grantedAt)
                    : _patchMap[Entitlement$.grantedAt])
                as int
          : this.grantedAt,
      expiresAt: _patchMap.containsKey(Entitlement$.expiresAt)
          ? ((_patchMap[Entitlement$.expiresAt] is Function)
                    ? _patchMap[Entitlement$.expiresAt](this.expiresAt)
                    : (_patchMap[Entitlement$.expiresAt] is Patch)
                    ? _patchMap[Entitlement$.expiresAt].applyTo(this.expiresAt)
                    : _patchMap[Entitlement$.expiresAt])
                as int?
          : this.expiresAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Entitlement &&
        id == other.id &&
        userId == other.userId &&
        productId == other.productId &&
        state == other.state &&
        grantedAt == other.grantedAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.id,
      this.userId,
      this.productId,
      this.state,
      this.grantedAt,
      this.expiresAt,
    );
  }

  @override
  String toString() {
    return 'Entitlement(' +
        'id: ${id}' +
        ', ' +
        'userId: ${userId}' +
        ', ' +
        'productId: ${productId}' +
        ', ' +
        'state: ${state}' +
        ', ' +
        'grantedAt: ${grantedAt}' +
        ', ' +
        'expiresAt: ${expiresAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$EntitlementToJson(this);
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

extension EntitlementPropertyHelpers on Entitlement {
  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasUserId {
    return this.userId.isNotEmpty;
  }

  bool get noUserId {
    return this.userId.isEmpty;
  }

  bool get hasProductId {
    return this.productId.isNotEmpty;
  }

  bool get noProductId {
    return this.productId.isEmpty;
  }

  bool get isStateActive {
    return this.state == EntitlementState.active;
  }

  bool get isStateExpired {
    return this.state == EntitlementState.expired;
  }

  bool get isStateRevoked {
    return this.state == EntitlementState.revoked;
  }

  bool get isStateGracePeriod {
    return this.state == EntitlementState.gracePeriod;
  }

  bool get isStatePending {
    return this.state == EntitlementState.pending;
  }

  bool get isStateBillingRetry {
    return this.state == EntitlementState.billingRetry;
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
}

extension EntitlementSerialization on Entitlement {
  Map<String, dynamic> toJson() {
    return _$EntitlementToJson(this);
  }
}

enum Entitlement$ { id, userId, productId, state, grantedAt, expiresAt }

class EntitlementPatch extends PatchBase<Entitlement, Entitlement$> {
  Entitlement applyTo(Entitlement entity) {
    return entity.patchWithEntitlement(this);
  }

  EntitlementPatch withId(String? value) {
    patchMap[Entitlement$.id] = value;
    return this;
  }

  EntitlementPatch withUserId(String? value) {
    patchMap[Entitlement$.userId] = value;
    return this;
  }

  EntitlementPatch withProductId(String? value) {
    patchMap[Entitlement$.productId] = value;
    return this;
  }

  EntitlementPatch withState(EntitlementState? value) {
    patchMap[Entitlement$.state] = value;
    return this;
  }

  EntitlementPatch withGrantedAt(int? value) {
    patchMap[Entitlement$.grantedAt] = value;
    return this;
  }

  EntitlementPatch withExpiresAt(int? value) {
    patchMap[Entitlement$.expiresAt] = value;
    return this;
  }
}

/// Field descriptors for [Entitlement] query construction
abstract final class EntitlementFields {
  static const id = Field<Entitlement, String>('id', _$id);

  static const userId = Field<Entitlement, String>('userId', _$userId);

  static const productId = Field<Entitlement, String>('productId', _$productId);

  static const state = Field<Entitlement, EntitlementState>('state', _$state);

  static const grantedAt = Field<Entitlement, int>('grantedAt', _$grantedAt);

  static const expiresAt = Field<Entitlement, int?>('expiresAt', _$expiresAt);

  static String _$id(Entitlement e) {
    return e.id;
  }

  static String _$userId(Entitlement e) {
    return e.userId;
  }

  static String _$productId(Entitlement e) {
    return e.productId;
  }

  static EntitlementState _$state(Entitlement e) {
    return e.state;
  }

  static int _$grantedAt(Entitlement e) {
    return e.grantedAt;
  }

  static int? _$expiresAt(Entitlement e) {
    return e.expiresAt;
  }
}

extension EntitlementCompareE on Entitlement {
  Map<String, dynamic> compareToEntitlement(Entitlement other) {
    final Map<String, dynamic> diff = {};

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (userId != other.userId) {
      diff['userId'] = () => other.userId;
    }

    if (productId != other.productId) {
      diff['productId'] = () => other.productId;
    }

    if (state != other.state) {
      diff['state'] = () => other.state;
    }

    if (grantedAt != other.grantedAt) {
      diff['grantedAt'] = () => other.grantedAt;
    }

    if (expiresAt != other.expiresAt) {
      diff['expiresAt'] = () => other.expiresAt;
    }
    return diff;
  }
}
