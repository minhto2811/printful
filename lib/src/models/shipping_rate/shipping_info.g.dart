// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingInfo _$ShippingInfoFromJson(Map<String, dynamic> json) => ShippingInfo(
  id: json['id'] as String,
  name: json['name'] as String,
  rate: json['rate'] as String,
  currency: json['currency'] as String,
  minDeliveryDays: (json['minDeliveryDays'] as num?)?.toInt(),
  maxDeliveryDays: (json['maxDeliveryDays'] as num?)?.toInt(),
  minDeliveryDate: json['minDeliveryDate'] as String?,
  maxDeliveryDate: json['maxDeliveryDate'] as String?,
);

Map<String, dynamic> _$ShippingInfoToJson(ShippingInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'currency': instance.currency,
      'minDeliveryDays': instance.minDeliveryDays,
      'maxDeliveryDays': instance.maxDeliveryDays,
      'minDeliveryDate': instance.minDeliveryDate,
      'maxDeliveryDate': instance.maxDeliveryDate,
    };
