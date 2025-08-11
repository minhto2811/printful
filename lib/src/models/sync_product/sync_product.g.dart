// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncProduct _$SyncProductFromJson(Map<String, dynamic> json) => SyncProduct(
  id: (json['id'] as num?)?.toInt(),
  externalId: json['external_id'] as String,
  name: json['name'] as String,
  variants: (json['variants'] as num).toInt(),
  synced: (json['synced'] as num).toInt(),
  thumbnailUrl: json['thumbnail_url'] as String,
  isIgnored: json['is_ignored'] as bool,
);

Map<String, dynamic> _$SyncProductToJson(SyncProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'external_id': instance.externalId,
      'name': instance.name,
      'variants': instance.variants,
      'synced': instance.synced,
      'thumbnail_url': instance.thumbnailUrl,
      'is_ignored': instance.isIgnored,
    };
