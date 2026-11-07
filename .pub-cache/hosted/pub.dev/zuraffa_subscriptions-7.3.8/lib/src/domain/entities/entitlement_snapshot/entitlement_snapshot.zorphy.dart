// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'entitlement_snapshot.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class EntitlementSnapshot {
  EntitlementSnapshot({
    required String this.id,
    required String this.userId,
    required List<Entitlement> this.entitlements,
    required int this.generatedAt,
  });

  factory EntitlementSnapshot.fromJson(Map<String, dynamic> json) =>
      _$EntitlementSnapshotFromJson(json);

  final String id;

  final String userId;

  final List<Entitlement> entitlements;

  final int generatedAt;

  EntitlementSnapshot copyWith({
    String? id,
    String? userId,
    List<Entitlement>? entitlements,
    int? generatedAt,
  }) {
    return EntitlementSnapshot(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      entitlements: entitlements ?? this.entitlements,
      generatedAt: generatedAt ?? this.generatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  EntitlementSnapshot copyWithField<T>(
    Field<EntitlementSnapshot, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'id':
        return copyWith(id: value as String);
      case 'userId':
        return copyWith(userId: value as String);
      case 'entitlements':
        return copyWith(entitlements: value as List<Entitlement>);
      case 'generatedAt':
        return copyWith(generatedAt: value as int);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'EntitlementSnapshot has no settable field with this name',
        );
    }
  }

  EntitlementSnapshot copyWithEntitlementSnapshot({
    String? id,
    String? userId,
    List<Entitlement>? entitlements,
    int? generatedAt,
  }) {
    return copyWith(
      id: id,
      userId: userId,
      entitlements: entitlements,
      generatedAt: generatedAt,
    );
  }

  EntitlementSnapshot patchWithEntitlementSnapshot([
    EntitlementSnapshotPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? EntitlementSnapshotPatch();
    final _patchMap = _patcher.patchMap;
    return EntitlementSnapshot(
      id: _patchMap.containsKey(EntitlementSnapshot$.id)
          ? ((_patchMap[EntitlementSnapshot$.id] is Function)
                    ? _patchMap[EntitlementSnapshot$.id](this.id)
                    : (_patchMap[EntitlementSnapshot$.id] is Patch)
                    ? _patchMap[EntitlementSnapshot$.id].applyTo(this.id)
                    : _patchMap[EntitlementSnapshot$.id])
                as String
          : this.id,
      userId: _patchMap.containsKey(EntitlementSnapshot$.userId)
          ? ((_patchMap[EntitlementSnapshot$.userId] is Function)
                    ? _patchMap[EntitlementSnapshot$.userId](this.userId)
                    : (_patchMap[EntitlementSnapshot$.userId] is Patch)
                    ? _patchMap[EntitlementSnapshot$.userId].applyTo(
                        this.userId,
                      )
                    : _patchMap[EntitlementSnapshot$.userId])
                as String
          : this.userId,
      entitlements: _patchMap.containsKey(EntitlementSnapshot$.entitlements)
          ? ((_patchMap[EntitlementSnapshot$.entitlements] is Function)
                    ? _patchMap[EntitlementSnapshot$.entitlements](
                        this.entitlements,
                      )
                    : (_patchMap[EntitlementSnapshot$.entitlements] is Patch)
                    ? _patchMap[EntitlementSnapshot$.entitlements].applyTo(
                        this.entitlements,
                      )
                    : _patchMap[EntitlementSnapshot$.entitlements])
                as List<Entitlement>
          : this.entitlements,
      generatedAt: _patchMap.containsKey(EntitlementSnapshot$.generatedAt)
          ? ((_patchMap[EntitlementSnapshot$.generatedAt] is Function)
                    ? _patchMap[EntitlementSnapshot$.generatedAt](
                        this.generatedAt,
                      )
                    : (_patchMap[EntitlementSnapshot$.generatedAt] is Patch)
                    ? _patchMap[EntitlementSnapshot$.generatedAt].applyTo(
                        this.generatedAt,
                      )
                    : _patchMap[EntitlementSnapshot$.generatedAt])
                as int
          : this.generatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EntitlementSnapshot &&
        id == other.id &&
        userId == other.userId &&
        entitlements == other.entitlements &&
        generatedAt == other.generatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.id,
      this.userId,
      this.entitlements,
      this.generatedAt,
    );
  }

  @override
  String toString() {
    return 'EntitlementSnapshot(' +
        'id: ${id}' +
        ', ' +
        'userId: ${userId}' +
        ', ' +
        'entitlements: ${entitlements}' +
        ', ' +
        'generatedAt: ${generatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$EntitlementSnapshotToJson(this);
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

extension EntitlementSnapshotPropertyHelpers on EntitlementSnapshot {
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

  bool get hasEntitlements {
    return this.entitlements.isNotEmpty;
  }

  bool get noEntitlements {
    return this.entitlements.isEmpty;
  }
}

extension EntitlementSnapshotSerialization on EntitlementSnapshot {
  Map<String, dynamic> toJson() {
    return _$EntitlementSnapshotToJson(this);
  }
}

enum EntitlementSnapshot$ { id, userId, entitlements, generatedAt }

class EntitlementSnapshotPatch
    extends PatchBase<EntitlementSnapshot, EntitlementSnapshot$> {
  EntitlementSnapshot applyTo(EntitlementSnapshot entity) {
    return entity.patchWithEntitlementSnapshot(this);
  }

  EntitlementSnapshotPatch withId(String? value) {
    patchMap[EntitlementSnapshot$.id] = value;
    return this;
  }

  EntitlementSnapshotPatch withUserId(String? value) {
    patchMap[EntitlementSnapshot$.userId] = value;
    return this;
  }

  EntitlementSnapshotPatch withEntitlements(List<Entitlement>? value) {
    patchMap[EntitlementSnapshot$.entitlements] = value;
    return this;
  }

  EntitlementSnapshotPatch updateEntitlementsAt(
    int index,
    EntitlementPatch Function(EntitlementPatch) patch,
  ) {
    patchMap[EntitlementSnapshot$.entitlements] = (List<dynamic> list) {
      var updatedList = List<Entitlement>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(
          EntitlementPatch(),
        ).applyTo(updatedList[index] as Entitlement);
      }
      return updatedList;
    };
    return this;
  }

  EntitlementSnapshotPatch withGeneratedAt(int? value) {
    patchMap[EntitlementSnapshot$.generatedAt] = value;
    return this;
  }
}

/// Field descriptors for [EntitlementSnapshot] query construction
abstract final class EntitlementSnapshotFields {
  static const id = Field<EntitlementSnapshot, String>('id', _$id);

  static const userId = Field<EntitlementSnapshot, String>('userId', _$userId);

  static const entitlements = Field<EntitlementSnapshot, List<Entitlement>>(
    'entitlements',
    _$entitlements,
  );

  static const generatedAt = Field<EntitlementSnapshot, int>(
    'generatedAt',
    _$generatedAt,
  );

  static String _$id(EntitlementSnapshot e) {
    return e.id;
  }

  static String _$userId(EntitlementSnapshot e) {
    return e.userId;
  }

  static List<Entitlement> _$entitlements(EntitlementSnapshot e) {
    return e.entitlements;
  }

  static int _$generatedAt(EntitlementSnapshot e) {
    return e.generatedAt;
  }
}

extension EntitlementSnapshotCompareE on EntitlementSnapshot {
  Map<String, dynamic> compareToEntitlementSnapshot(EntitlementSnapshot other) {
    final Map<String, dynamic> diff = {};

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (userId != other.userId) {
      diff['userId'] = () => other.userId;
    }

    if (entitlements != other.entitlements) {
      diff['entitlements'] = () => other.entitlements;
    }

    if (generatedAt != other.generatedAt) {
      diff['generatedAt'] = () => other.generatedAt;
    }
    return diff;
  }
}
