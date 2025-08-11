// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_sync_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierSyncProduct _$ModifierSyncProductFromJson(Map<String, dynamic> json) =>
    ModifierSyncProduct(
      syncProduct: SyncProduct.fromJson(
        json['sync_product'] as Map<String, dynamic>,
      ),
      syncVariants:
          (json['sync_variants'] as List<dynamic>)
              .map((e) => SyncVariant.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ModifierSyncProductToJson(
  ModifierSyncProduct instance,
) => <String, dynamic>{
  'sync_product': instance.syncProduct,
  'sync_variants': instance.syncVariants,
};
