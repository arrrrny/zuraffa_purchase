// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entitlement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entitlement _$EntitlementFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Entitlement', json, ($checkedConvert) {
      final val = Entitlement(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$EntitlementStateEnumMap, v),
        ),
        grantedAt: $checkedConvert('grantedAt', (v) => (v as num).toInt()),
        expiresAt: $checkedConvert('expiresAt', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$EntitlementToJson(Entitlement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'productId': instance.productId,
      'state': _$EntitlementStateEnumMap[instance.state]!,
      'grantedAt': instance.grantedAt,
      'expiresAt': ?instance.expiresAt,
    };

const _$EntitlementStateEnumMap = {
  EntitlementState.active: 'active',
  EntitlementState.expired: 'expired',
  EntitlementState.revoked: 'revoked',
  EntitlementState.gracePeriod: 'gracePeriod',
  EntitlementState.pending: 'pending',
  EntitlementState.billingRetry: 'billingRetry',
};
