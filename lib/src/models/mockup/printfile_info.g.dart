// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printfile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrintfileInfo _$PrintfileInfoFromJson(
  Map<String, dynamic> json,
) => PrintfileInfo(
  productId: (json['product_id'] as num).toInt(),
  availablePlacements: Map<String, String>.from(
    json['available_placements'] as Map,
  ),
  printfiles:
      (json['printfiles'] as List<dynamic>)
          .map((e) => Printfile.fromJson(e as Map<String, dynamic>))
          .toList(),
  variantPrintfiles:
      (json['variant_printfiles'] as List<dynamic>)
          .map((e) => VariantPrintfile.fromJson(e as Map<String, dynamic>))
          .toList(),
  optionGroups:
      (json['option_groups'] as List<dynamic>).map((e) => e as String).toList(),
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$PrintfileInfoToJson(PrintfileInfo instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'available_placements': instance.availablePlacements,
      'printfiles': instance.printfiles,
      'variant_printfiles': instance.variantPrintfiles,
      'option_groups': instance.optionGroups,
      'options': instance.options,
    };

Printfile _$PrintfileFromJson(Map<String, dynamic> json) => Printfile(
  printfileId: (json['printfile_id'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  dpi: (json['dpi'] as num).toInt(),
  fillMode: $enumDecode(_$FillModeEnumMap, json['fill_mode']),
  canRotate: json['can_rotate'] as bool,
);

Map<String, dynamic> _$PrintfileToJson(Printfile instance) => <String, dynamic>{
  'printfile_id': instance.printfileId,
  'width': instance.width,
  'height': instance.height,
  'dpi': instance.dpi,
  'fill_mode': _$FillModeEnumMap[instance.fillMode]!,
  'can_rotate': instance.canRotate,
};

const _$FillModeEnumMap = {FillMode.fit: 'fit', FillMode.cover: 'cover'};

VariantPrintfile _$VariantPrintfileFromJson(Map<String, dynamic> json) =>
    VariantPrintfile(
      variantId: (json['variant_id'] as num).toInt(),
      placements: json['placements'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$VariantPrintfileToJson(VariantPrintfile instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'placements': instance.placements,
    };
