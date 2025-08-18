// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_mockup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierMockup _$ModifierMockupFromJson(
  Map<String, dynamic> json,
) => ModifierMockup(
  variantIds:
      (json['variant_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  format: $enumDecode(_$FormatEnumMap, json['format']),
  width: (json['width'] as num).toInt(),
  productOptions: Map<String, String>.from(json['product_options'] as Map),
  optionGroups:
      (json['option_groups'] as List<dynamic>).map((e) => e as String).toList(),
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  files: GenerationTaskFile.fromJson(json['files'] as Map<String, dynamic>),
  productTemplateId: (json['product_template_id'] as num).toInt(),
);

Map<String, dynamic> _$ModifierMockupToJson(ModifierMockup instance) =>
    <String, dynamic>{
      'variant_ids': instance.variantIds,
      'format': _$FormatEnumMap[instance.format]!,
      'width': instance.width,
      'product_options': instance.productOptions,
      'option_groups': instance.optionGroups,
      'options': instance.options,
      'files': instance.files,
      'product_template_id': instance.productTemplateId,
    };

const _$FormatEnumMap = {Format.jpg: 'jpg', Format.png: 'png'};

GenerationTaskFile _$GenerationTaskFileFromJson(Map<String, dynamic> json) =>
    GenerationTaskFile(
      placement: json['placement'] as String,
      imageUrl: json['image_url'] as String,
      position: GenerationTaskFilePosition.fromJson(
        json['position'] as Map<String, dynamic>,
      ),
      options: FileOption.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationTaskFileToJson(GenerationTaskFile instance) =>
    <String, dynamic>{
      'placement': instance.placement,
      'image_url': instance.imageUrl,
      'position': instance.position,
      'options': instance.options,
    };

GenerationTaskFilePosition _$GenerationTaskFilePositionFromJson(
  Map<String, dynamic> json,
) => GenerationTaskFilePosition(
  areaWidth: (json['area_width'] as num?)?.toInt(),
  areaHeight: (json['area_height'] as num?)?.toInt(),
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  top: (json['top'] as num).toInt(),
  left: (json['left'] as num).toInt(),
);

Map<String, dynamic> _$GenerationTaskFilePositionToJson(
  GenerationTaskFilePosition instance,
) => <String, dynamic>{
  'area_width': instance.areaWidth,
  'area_height': instance.areaHeight,
  'width': instance.width,
  'height': instance.height,
  'top': instance.top,
  'left': instance.left,
};
