// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mockup_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MockupTemplate _$MockupTemplateFromJson(
  Map<String, dynamic> json,
) => MockupTemplate(
  version: (json['version'] as num).toInt(),
  minDpi: (json['min_dpi'] as num).toInt(),
  variantMapping:
      (json['variant_mapping'] as List<dynamic>)
          .map(
            (e) => TemplateVariantMapping.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  templates:
      (json['templates'] as List<dynamic>)
          .map((e) => Template.fromJson(e as Map<String, dynamic>))
          .toList(),
  conflictingPlacements:
      (json['conflicting_placements'] as List<dynamic>)
          .map(
            (e) =>
                TemplatePlacementConflict.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$MockupTemplateToJson(MockupTemplate instance) =>
    <String, dynamic>{
      'version': instance.version,
      'min_dpi': instance.minDpi,
      'variant_mapping': instance.variantMapping,
      'templates': instance.templates,
      'conflicting_placements': instance.conflictingPlacements,
    };

TemplateVariantMapping _$TemplateVariantMappingFromJson(
  Map<String, dynamic> json,
) => TemplateVariantMapping(
  variantId: (json['variant_id'] as num).toInt(),
  templates:
      (json['templates'] as List<dynamic>)
          .map(
            (e) =>
                TemplateVariantMappingItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$TemplateVariantMappingToJson(
  TemplateVariantMapping instance,
) => <String, dynamic>{
  'variant_id': instance.variantId,
  'templates': instance.templates,
};

TemplateVariantMappingItem _$TemplateVariantMappingItemFromJson(
  Map<String, dynamic> json,
) => TemplateVariantMappingItem(
  placement: json['placement'] as String,
  templateId: (json['template_id'] as num).toInt(),
);

Map<String, dynamic> _$TemplateVariantMappingItemToJson(
  TemplateVariantMappingItem instance,
) => <String, dynamic>{
  'placement': instance.placement,
  'template_id': instance.templateId,
};

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
  templateId: (json['template_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  backgroundUrl: json['background_url'] as String?,
  backgroundColor: json['background_color'] as String,
  printfileId: (json['printfile_id'] as num).toInt(),
  templateWidth: (json['template_width'] as num).toInt(),
  templateHeight: (json['template_height'] as num).toInt(),
  printAreaWidth: (json['print_area_width'] as num).toInt(),
  printAreaHeight: (json['print_area_height'] as num).toInt(),
  printAreaTop: (json['print_area_top'] as num).toInt(),
  printAreaLeft: (json['print_area_left'] as num).toInt(),
  isTemplateOnFront: json['is_template_on_front'] as bool,
  orientation: $enumDecode(_$OrientationEnumMap, json['orientation']),
);

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
  'template_id': instance.templateId,
  'image_url': instance.imageUrl,
  'background_url': instance.backgroundUrl,
  'background_color': instance.backgroundColor,
  'printfile_id': instance.printfileId,
  'template_width': instance.templateWidth,
  'template_height': instance.templateHeight,
  'print_area_width': instance.printAreaWidth,
  'print_area_height': instance.printAreaHeight,
  'print_area_top': instance.printAreaTop,
  'print_area_left': instance.printAreaLeft,
  'is_template_on_front': instance.isTemplateOnFront,
  'orientation': _$OrientationEnumMap[instance.orientation]!,
};

const _$OrientationEnumMap = {
  Orientation.horizontal: 'horizontal',
  Orientation.vertical: 'vertical',
  Orientation.any: 'any',
};

TemplatePlacementConflict _$TemplatePlacementConflictFromJson(
  Map<String, dynamic> json,
) => TemplatePlacementConflict(
  placement: json['placement'] as String,
  conflicts:
      (json['conflicts'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$TemplatePlacementConflictToJson(
  TemplatePlacementConflict instance,
) => <String, dynamic>{
  'placement': instance.placement,
  'conflicts': instance.conflicts,
};
