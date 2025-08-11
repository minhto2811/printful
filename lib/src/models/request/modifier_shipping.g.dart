// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierShipping _$ModifierShippingFromJson(Map<String, dynamic> json) =>
    ModifierShipping(
      recipient: AddressInfo.fromJson(
        json['recipient'] as Map<String, dynamic>,
      ),
      items:
          (json['items'] as List<dynamic>)
              .map((e) => ItemInfo.fromJson(e as Map<String, dynamic>))
              .toList(),
      currency: json['currency'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$ModifierShippingToJson(ModifierShipping instance) =>
    <String, dynamic>{
      'recipient': instance.recipient,
      'items': instance.items,
      'currency': instance.currency,
      'locale': instance.locale,
    };

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) => AddressInfo(
  address1: json['address1'] as String,
  city: json['city'] as String,
  countryCode: json['country_code'] as String,
  stateCode: json['state_code'] as String?,
  zip: json['zip'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$AddressInfoToJson(AddressInfo instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'city': instance.city,
      'country_code': instance.countryCode,
      'state_code': instance.stateCode,
      'zip': instance.zip,
      'phone': instance.phone,
    };

ItemInfo _$ItemInfoFromJson(Map<String, dynamic> json) => ItemInfo(
  variantId: (json['variant_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  name: json['name'] as String?,
  retailPrice: json['retail_price'] as String?,
  externalId: json['external_id'] as String?,
);

Map<String, dynamic> _$ItemInfoToJson(ItemInfo instance) => <String, dynamic>{
  'variant_id': instance.variantId,
  'quantity': instance.quantity,
  'name': instance.name,
  'retail_price': instance.retailPrice,
  'external_id': instance.externalId,
};
