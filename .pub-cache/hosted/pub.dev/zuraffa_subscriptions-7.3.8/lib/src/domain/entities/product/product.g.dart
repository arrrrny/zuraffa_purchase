// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Product', json, ($checkedConvert) {
      final val = Product(
        id: $checkedConvert('id', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        priceMicros: $checkedConvert('priceMicros', (v) => (v as num).toInt()),
        currency: $checkedConvert('currency', (v) => v as String),
        period: $checkedConvert('period', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'storeId': instance.storeId,
  'title': instance.title,
  'description': instance.description,
  'priceMicros': instance.priceMicros,
  'currency': instance.currency,
  'period': instance.period,
};
