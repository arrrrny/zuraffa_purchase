// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlement_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntitlementSnapshot _$EntitlementSnapshotFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EntitlementSnapshot', json, ($checkedConvert) {
      final val = EntitlementSnapshot(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        entitlements: $checkedConvert(
          'entitlements',
          (v) => (v as List<dynamic>)
              .map((e) => Entitlement.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        generatedAt: $checkedConvert('generatedAt', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$EntitlementSnapshotToJson(
  EntitlementSnapshot instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'entitlements': instance.entitlements.map((e) => e.toJson()).toList(),
  'generatedAt': instance.generatedAt,
};
