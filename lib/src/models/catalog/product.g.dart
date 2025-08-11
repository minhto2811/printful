// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  files:
      (json['files'] as List<dynamic>?)
          ?.map((e) => FileType.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => OptionType.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  isDiscontinued: json['isDiscontinued'] as bool?,
  avgFulfillmentTime: json['avg_fulfillment_time'] as num?,
  description: json['description'] as String,
  techniques:
      (json['techniques'] as List<dynamic>?)
          ?.map((e) => AvailableTechnique.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  originCountry: json['origin_country'] as String?,
  type: json['type'] as String,
  typeName: json['type_name'] as String,
  brand: json['brand'] as String?,
  model: json['model'] as String,
  image: json['image'] as String,
  variantCount: (json['variant_count'] as num).toInt(),
  currency: json['currency'] as String,
  mainCategoryId: (json['main_category_id'] as num).toInt(),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'main_category_id': instance.mainCategoryId,
  'type': instance.type,
  'type_name': instance.typeName,
  'title': instance.title,
  'brand': instance.brand,
  'model': instance.model,
  'image': instance.image,
  'variant_count': instance.variantCount,
  'currency': instance.currency,
  'files': instance.files,
  'options': instance.options,
  'isDiscontinued': instance.isDiscontinued,
  'avg_fulfillment_time': instance.avgFulfillmentTime,
  'description': instance.description,
  'techniques': instance.techniques,
  'origin_country': instance.originCountry,
};

AvailableTechnique _$AvailableTechniqueFromJson(Map<String, dynamic> json) =>
    AvailableTechnique(
      key: json['key'] as String,
      displayName: json['display_name'] as String,
      isDefault: json['is_default'] as bool,
    );

Map<String, dynamic> _$AvailableTechniqueToJson(AvailableTechnique instance) =>
    <String, dynamic>{
      'key': instance.key,
      'display_name': instance.displayName,
      'is_default': instance.isDefault,
    };

FileType _$FileTypeFromJson(Map<String, dynamic> json) => FileType(
  type: json['type'] as String,
  title: json['title'] as String,
  additionalPrice: json['additional_price'] as String?,
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => CatalogFileOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$FileTypeToJson(FileType instance) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'additional_price': instance.additionalPrice,
  'options': instance.options,
};

CatalogFileOption _$CatalogFileOptionFromJson(Map<String, dynamic> json) =>
    CatalogFileOption(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      additionalPrice: json['additional_price'] as num,
    );

Map<String, dynamic> _$CatalogFileOptionToJson(CatalogFileOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'additional_price': instance.additionalPrice,
    };

OptionType _$OptionTypeFromJson(Map<String, dynamic> json) => OptionType(
  id: json['id'] as String,
  title: json['title'] as String,
  type: json['type'] as String,
  values: json['values'],
  additionalPrice: json['additional_price'] as String?,
  additionalPriceBreakdown: json['additional_price_breakdown'],
);

Map<String, dynamic> _$OptionTypeToJson(OptionType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'values': instance.values,
      'additional_price': instance.additionalPrice,
      'additional_price_breakdown': instance.additionalPriceBreakdown,
    };
