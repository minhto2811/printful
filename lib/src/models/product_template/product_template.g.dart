// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTemplate _$ProductTemplateFromJson(Map<String, dynamic> json) =>
    ProductTemplate(
      id: (json['id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      externalProductId: json['external_product_id'] as String,
      title: json['title'] as String,
      availableVariantIds:
          (json['available_variant_ids'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      optionData:
          (json['option_data'] as List<dynamic>)
              .map((e) => ItemOption.fromJson(e as Map<String, dynamic>))
              .toList(),
      colors:
          (json['colors'] as List<dynamic>)
              .map((e) => Color.fromJson(e as Map<String, dynamic>))
              .toList(),
      size: (json['size'] as List<dynamic>).map((e) => e as String).toList(),
      mockupFileUrl: json['mockup_file_url'] as String,
      placements:
          (json['placements'] as List<dynamic>)
              .map((e) => Placement.fromJson(e as Map<String, dynamic>))
              .toList(),
      createdAt: (json['created_at'] as num).toInt(),
      updatedAt: (json['updated_at'] as num).toInt(),
      placementOptionData:
          (json['placement_option_data'] as List<dynamic>)
              .map((e) => PlacementOption.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProductTemplateToJson(ProductTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'external_product_id': instance.externalProductId,
      'title': instance.title,
      'available_variant_ids': instance.availableVariantIds,
      'option_data': instance.optionData,
      'colors': instance.colors,
      'size': instance.size,
      'mockup_file_url': instance.mockupFileUrl,
      'placements': instance.placements,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'placement_option_data': instance.placementOptionData,
    };
