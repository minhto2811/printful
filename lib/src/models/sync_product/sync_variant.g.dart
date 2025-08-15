// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncVariant _$SyncVariantFromJson(Map<String, dynamic> json) => SyncVariant(
  id: (json['id'] as num?)?.toInt(),
  externalId: json['external_id'] as String,
  syncProductId: (json['sync_product_id'] as num).toInt(),
  name: json['name'] as String,
  synced: json['synced'] as bool,
  variantId: (json['variant_id'] as num).toInt(),
  retailPrice: json['retail_price'] as String,
  currency: json['currency'] as String,
  isIgnored: json['is_ignored'] as bool,
  sku: json['sku'] as String?,
  product: ProductVariant.fromJson(json['product'] as Map<String, dynamic>),
  files:
      (json['files'] as List<dynamic>)
          .map((e) => SyncVariantFile.fromJson(e as Map<String, dynamic>))
          .toList(),
  options:
      (json['options'] as List<dynamic>)
          .map((e) => SyncVariantOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  mainCategoryId: (json['main_category_id'] as num?)?.toInt(),
  warehouseProductVariantId:
      (json['warehouse_product_variant_id'] as num?)?.toInt(),
  size: json['size'] as String?,
  color: json['color'] as String?,
  availabilityStatus: json['availability_status'] as String,
);

Map<String, dynamic> _$SyncVariantToJson(SyncVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'external_id': instance.externalId,
      'sync_product_id': instance.syncProductId,
      'name': instance.name,
      'synced': instance.synced,
      'variant_id': instance.variantId,
      'retail_price': instance.retailPrice,
      'currency': instance.currency,
      'is_ignored': instance.isIgnored,
      'sku': instance.sku,
      'product': instance.product,
      'files': instance.files,
      'options': instance.options,
      'main_category_id': instance.mainCategoryId,
      'warehouse_product_variant_id': instance.warehouseProductVariantId,
      'size': instance.size,
      'color': instance.color,
      'availability_status': instance.availabilityStatus,
    };

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) =>
    ProductVariant(
      variantId: (json['variant_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ProductVariantToJson(ProductVariant instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'product_id': instance.productId,
      'name': instance.name,
      'image': instance.image,
    };

SyncVariantFile _$SyncVariantFileFromJson(Map<String, dynamic> json) =>
    SyncVariantFile(
      type: json['type'] as String,
      id: (json['id'] as num).toInt(),
      url: json['url'] as String?,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => FileOption.fromJson(e as Map<String, dynamic>))
              .toList(),
      hash: json['hash'] as String?,
      filename: json['filename'] as String,
      mimeType: json['mime_type'] as String,
      size: (json['size'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      dpi: (json['dpi'] as num?)?.toInt(),
      status: json['status'] as String,
      created: (json['created'] as num).toInt(),
      thumbnailUrl: json['thumbnail_url'] as String,
      previewUrl: json['preview_url'] as String,
      visible: json['visible'] as bool,
      isTemporary: json['is_temporary'] as bool,
      stitchCountTier: json['stitch_count_tier'] as String?,
    );

Map<String, dynamic> _$SyncVariantFileToJson(SyncVariantFile instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'url': instance.url,
      'options': instance.options,
      'hash': instance.hash,
      'filename': instance.filename,
      'mime_type': instance.mimeType,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
      'dpi': instance.dpi,
      'status': instance.status,
      'created': instance.created,
      'thumbnail_url': instance.thumbnailUrl,
      'preview_url': instance.previewUrl,
      'visible': instance.visible,
      'is_temporary': instance.isTemporary,
      'stitch_count_tier': instance.stitchCountTier,
    };

SyncVariantOption _$SyncVariantOptionFromJson(Map<String, dynamic> json) =>
    SyncVariantOption(id: json['id'] as String, value: json['value']);

Map<String, dynamic> _$SyncVariantOptionToJson(SyncVariantOption instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};
