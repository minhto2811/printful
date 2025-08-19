import 'package:json_annotation/json_annotation.dart';

part 'product_size_guide.g.dart';

@JsonSerializable()
class ProductSizeGuide {
  @JsonKey(name: 'catalog_product_id')
  final int catalogProductId;
  @JsonKey(name: 'available_sizes')
  final List<String> availableSizes;
  @JsonKey(name: 'size_tables')
  final List<SizeTable> sizeTables;

  ProductSizeGuide({
    required this.catalogProductId,
    required this.availableSizes,
    required this.sizeTables,
  });

  factory ProductSizeGuide.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeGuideFromJson(json);

  Map<String, dynamic> toJson() => _$ProductSizeGuideToJson(this);
}

@JsonSerializable()
class SizeTable {
  final String type;
  final String unit;
  final String? description;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'image_description')
  final String? imageDescription;
  final List<Measurement> measurements;

  SizeTable({
    required this.type,
    required this.unit,
    required this.description,
    required this.imageUrl,
    required this.imageDescription,
    required this.measurements,
  });

  factory SizeTable.fromJson(Map<String, dynamic> json) =>
      _$SizeTableFromJson(json);

  Map<String, dynamic> toJson() => _$SizeTableToJson(this);
}

@JsonSerializable()
class Measurement {
  @JsonKey(name: 'type_label')
  final String typeLabel;
  final List<MeasurementValue> values;

  Measurement({required this.typeLabel, required this.values});

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);

  Map<String, dynamic> toJson() => _$MeasurementToJson(this);
}

@JsonSerializable()
class MeasurementValue {
  final String size;
  final String? value;

  MeasurementValue({required this.size, required this.value});

  factory MeasurementValue.fromJson(Map<String, dynamic> json) =>
      _$MeasurementValueFromJson(json);

  Map<String, dynamic> toJson() => _$MeasurementValueToJson(this);
}
