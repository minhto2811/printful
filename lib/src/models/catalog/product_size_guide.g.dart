// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_size_guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSizeGuide _$ProductSizeGuideFromJson(Map<String, dynamic> json) =>
    ProductSizeGuide(
      catalogProductId: (json['catalog_product_id'] as num).toInt(),
      availableSizes:
          (json['available_sizes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      sizeTables:
          (json['size_tables'] as List<dynamic>)
              .map((e) => SizeTable.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ProductSizeGuideToJson(ProductSizeGuide instance) =>
    <String, dynamic>{
      'catalog_product_id': instance.catalogProductId,
      'available_sizes': instance.availableSizes,
      'size_tables': instance.sizeTables,
    };

SizeTable _$SizeTableFromJson(Map<String, dynamic> json) => SizeTable(
  type: json['type'] as String,
  unit: json['unit'] as String,
  description: json['description'] as String,
  imageUrl: json['image_url'] as String,
  imageDescription: json['image_description'] as String,
  measurements:
      (json['measurements'] as List<dynamic>)
          .map((e) => Measurement.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SizeTableToJson(SizeTable instance) => <String, dynamic>{
  'type': instance.type,
  'unit': instance.unit,
  'description': instance.description,
  'image_url': instance.imageUrl,
  'image_description': instance.imageDescription,
  'measurements': instance.measurements,
};

Measurement _$MeasurementFromJson(Map<String, dynamic> json) => Measurement(
  typeLabel: json['type_label'] as String?,
  unit: json['unit'] as String?,
  values:
      (json['values'] as List<dynamic>)
          .map((e) => MeasurementValue.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$MeasurementToJson(Measurement instance) =>
    <String, dynamic>{
      'type_label': instance.typeLabel,
      'unit': instance.unit,
      'values': instance.values,
    };

MeasurementValue _$MeasurementValueFromJson(Map<String, dynamic> json) =>
    MeasurementValue(
      size: json['size'] as String,
      value: json['value'] as String,
      minValue: json['min_value'] as String,
      maxValue: json['max_value'] as String,
    );

Map<String, dynamic> _$MeasurementValueToJson(MeasurementValue instance) =>
    <String, dynamic>{
      'size': instance.size,
      'value': instance.value,
      'min_value': instance.minValue,
      'max_value': instance.maxValue,
    };
