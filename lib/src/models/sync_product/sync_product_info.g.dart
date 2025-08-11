// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_product_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncProductInfo _$SyncProductInfoFromJson(Map<String, dynamic> json) =>
    SyncProductInfo(
      syncProduct: SyncProduct.fromJson(
        json['sync_product'] as Map<String, dynamic>,
      ),
      syncVariants:
          (json['sync_variants'] as List<dynamic>)
              .map((e) => SyncVariant.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$SyncProductInfoToJson(SyncProductInfo instance) =>
    <String, dynamic>{
      'sync_product': instance.syncProduct,
      'sync_variants': instance.syncVariants,
    };
