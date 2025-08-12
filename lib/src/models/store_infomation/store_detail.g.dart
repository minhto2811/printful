// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreDetail _$StoreDetailFromJson(Map<String, dynamic> json) => StoreDetail(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  name: json['name'] as String,
  address: json['address'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$StoreDetailToJson(StoreDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'description': instance.description,
    };
