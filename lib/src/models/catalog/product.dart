
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final int id;
  @JsonKey(name: 'main_category_id')
  final int mainCategoryId;
  final String type;
  @JsonKey(name: 'type_name')
  final String typeName;
  final String title;
  final String? brand;
  final String model;
  final String image;
  @JsonKey(name: 'variant_count')
  final int variantCount;
  final String currency;
  @JsonKey(defaultValue: [])
  final List<FileType> files;
  @JsonKey(defaultValue: [])
  final List<OptionType> options;
  final bool? isDiscontinued;
  @JsonKey(name: 'avg_fulfillment_time')
  final num? avgFulfillmentTime;
  final String description;
  @JsonKey(defaultValue: [])
  final List<AvailableTechnique> techniques;
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  Product({
    required this.id,
    required this.title,
    required this.files,
    required this.options,
    required this.isDiscontinued,
    required this.avgFulfillmentTime,
    required this.description,
    required this.techniques,
    required this.originCountry,
    required this.type,
    required this.typeName,
    required this.brand,
    required this.model,
    required this.image,
    required this.variantCount,
    required this.currency,
    required this.mainCategoryId,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class AvailableTechnique {
  final String key;
  @JsonKey(name: 'display_name')
  final String displayName;
  @JsonKey(name: 'is_default')
  final bool isDefault;

  AvailableTechnique({
    required this.key,
    required this.displayName,
    required this.isDefault,
  });

  factory AvailableTechnique.fromJson(Map<String, dynamic> json) =>
      _$AvailableTechniqueFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableTechniqueToJson(this);
}

@JsonSerializable()
class FileType {
  final String type;
  final String title;
  @JsonKey(name: 'additional_price')
  final String? additionalPrice;
  @JsonKey(defaultValue: [])
  final List<CatalogFileOption> options;

  FileType({
    required this.type,
    required this.title,
    required this.additionalPrice,
    required this.options,
  });

  factory FileType.fromJson(Map<String, dynamic> json) =>
      _$FileTypeFromJson(json);

  Map<String, dynamic> toJson() => _$FileTypeToJson(this);
}

@JsonSerializable()
class CatalogFileOption {
  final String id;
  final String type;
  final String title;
  @JsonKey(name: 'additional_price')
  final num additionalPrice;

  CatalogFileOption({
    required this.id,
    required this.type,
    required this.title,
    required this.additionalPrice,
  });

  factory CatalogFileOption.fromJson(Map<String, dynamic> json) =>
      _$CatalogFileOptionFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogFileOptionToJson(this);
}

@JsonSerializable()
class OptionType {
  final String id;
  final String title;
  final String type;

  ///[values] may be [List<dynamic>]
  ///[values] may be [_Map<String, dynamic>]
  final dynamic values;
  @JsonKey(name: 'additional_price')
  final String? additionalPrice;

  ///[additionalPriceBreakdown] is [List<dynamic>]
  ///[additionalPriceBreakdown] is [_Map<String, dynamic>]: {flat: 0.00, 3d: 1.50, both: 1.50}
  @JsonKey(name: 'additional_price_breakdown')
  final dynamic additionalPriceBreakdown;

  OptionType({
    required this.id,
    required this.title,
    required this.type,
    required this.values,
    required this.additionalPrice,
    required this.additionalPriceBreakdown,
  });

  factory OptionType.fromJson(Map<String, dynamic> json) =>
      _$OptionTypeFromJson(json);

  Map<String, dynamic> toJson() => _$OptionTypeToJson(this);
}
