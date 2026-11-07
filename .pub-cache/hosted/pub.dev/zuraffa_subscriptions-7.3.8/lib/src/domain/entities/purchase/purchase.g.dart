// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Purchase _$PurchaseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Purchase', json, ($checkedConvert) {
      final val = Purchase(
        id: $checkedConvert('id', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$PurchaseStateEnumMap, v),
        ),
        purchasedAt: $checkedConvert('purchasedAt', (v) => (v as num).toInt()),
        expiresAt: $checkedConvert('expiresAt', (v) => (v as num?)?.toInt()),
        userId: $checkedConvert('userId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PurchaseToJson(Purchase instance) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'state': _$PurchaseStateEnumMap[instance.state]!,
  'purchasedAt': instance.purchasedAt,
  'expiresAt': ?instance.expiresAt,
  'userId': instance.userId,
};

const _$PurchaseStateEnumMap = {
  PurchaseState.purchased: 'purchased',
  PurchaseState.restored: 'restored',
  PurchaseState.cancelled: 'cancelled',
  PurchaseState.expired: 'expired',
  PurchaseState.pending: 'pending',
  PurchaseState.failed: 'failed',
  PurchaseState.revoked: 'revoked',
};
