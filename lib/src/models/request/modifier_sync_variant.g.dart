// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_sync_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierSyncVariant _$ModifierSyncVariantFromJson(Map<String, dynamic> json) =>
    ModifierSyncVariant(
      id: (json['id'] as num).toInt(),
      externalId: json['external_id'] as String,
      variantId: (json['variant_id'] as num).toInt(),
      retailPrice: json['retail_price'] as String,
      isIgnored: json['is_ignored'] as bool,
      sku: json['sku'] as String?,
      files: SyncVariantFile.fromJson(json['files'] as Map<String, dynamic>),
      options: SyncVariantOption.fromJson(
        json['options'] as Map<String, dynamic>,
      ),
      availabilityStatus: json['availability_status'] as String,
    );

Map<String, dynamic> _$ModifierSyncVariantToJson(
  ModifierSyncVariant instance,
) => <String, dynamic>{
  'id': instance.id,
  'external_id': instance.externalId,
  'variant_id': instance.variantId,
  'retail_price': instance.retailPrice,
  'is_ignored': instance.isIgnored,
  'sku': instance.sku,
  'files': instance.files,
  'options': instance.options,
  'availability_status': instance.availabilityStatus,
};
