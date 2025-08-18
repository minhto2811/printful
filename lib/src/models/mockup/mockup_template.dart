import 'package:json_annotation/json_annotation.dart';
part 'mockup_template.g.dart';
///[Product Template]
///Because there was an object of the same name in the Product Template API,
///I changed my name to Mockup Template to avoid confusion
@JsonSerializable()
class MockupTemplate {
  ///Resource version. If this changes,
  /// resources (positions, images, etc.) should be re-cached.
  final int version;

  ///Recommended minimum DPI for given product.
  @JsonKey(name: 'min_dpi')
  final int minDpi;

  ///List of product variants mapped to templates. From this information you
  ///can determine which template should be used for a variant.
  @JsonKey(name: 'variant_mapping')
  final List<TemplateVariantMapping> variantMapping;

  ///List of templates. Use variant_mapping to determine which
  /// template corresponds to which product variant.
  final List<Template> templates;

  ///List of conflicting placements.
  ///Used to determine which placements can be used together.
  @JsonKey(name: 'conflicting_placements')
  final List<TemplatePlacementConflict> conflictingPlacements;

  MockupTemplate({
    required this.version,
    required this.minDpi,
    required this.variantMapping,
    required this.templates,
    required this.conflictingPlacements,
  });

  factory MockupTemplate.fromJson(Map<String, dynamic> json) =>
      _$MockupTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$MockupTemplateToJson(this);
}

///Product variants mapped to templates.
///From this information you can determine which template
/// should be used for a variant.
@JsonSerializable()
class TemplateVariantMapping {
  ///Product variant ID.
  @JsonKey(name: 'variant_id')
  final int variantId;

  ///Array of Template Variant Mapping items
  final List<TemplateVariantMappingItem> templates;

  TemplateVariantMapping({required this.variantId, required this.templates});

  factory TemplateVariantMapping.fromJson(Map<String, dynamic> json) =>
      _$TemplateVariantMappingFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateVariantMappingToJson(this);
}

///Template Variant Mapping items
@JsonSerializable()
class TemplateVariantMappingItem {
  ///Placement ID.
  final String placement;

  ///Corresponding template id which should be used for
  ///this variant and placement combination.
  @JsonKey(name: 'template_id')
  final int templateId;

  const TemplateVariantMappingItem({
    required this.placement,
    required this.templateId,
  });

  factory TemplateVariantMappingItem.fromJson(Map<String, dynamic> json) =>
      _$TemplateVariantMappingItemFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateVariantMappingItemToJson(this);
}

/// Wall-art / print template metadata returned by the API.
@JsonSerializable()
class Template {
  /// Template ID.
  @JsonKey(name: 'template_id')
  final int templateId;

  /// Main template image URL.
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Background image URL (optional).
  @JsonKey(name: 'background_url')
  final String? backgroundUrl;

  /// HEX background color as integer (e.g., 0xFFFFFF), or null.
  /// What the Fuck. It's a string.
  @JsonKey(name: 'background_color')
  final String backgroundColor;

  /// Printfile ID that should be generated for this template.
  @JsonKey(name: 'printfile_id')
  final int printfileId;

  /// Width of the whole template in pixels.
  @JsonKey(name: 'template_width')
  final int templateWidth;

  /// Height of the whole template in pixels.
  @JsonKey(name: 'template_height')
  final int templateHeight;

  /// Print area width (image is positioned in this area), in pixels.
  @JsonKey(name: 'print_area_width')
  final int printAreaWidth;

  /// Print area height (image is positioned in this area), in pixels.
  @JsonKey(name: 'print_area_height')
  final int printAreaHeight;

  /// Print area top offset within the template, in pixels.
  @JsonKey(name: 'print_area_top')
  final int printAreaTop;

  /// Print area left offset within the template, in pixels.
  @JsonKey(name: 'print_area_left')
  final int printAreaLeft;

  /// If true, the main template image (image_url) is used as an overlay on front;
  /// otherwise treated as a background.
  @JsonKey(name: 'is_template_on_front')
  final bool isTemplateOnFront;

  /// Wall art product orientation: horizontal, vertical, or any.
  @JsonKey(name: 'orientation')
  final Orientation orientation;

  const Template({
    required this.templateId,
    required this.imageUrl,
    this.backgroundUrl,
    required this.backgroundColor,
    required this.printfileId,
    required this.templateWidth,
    required this.templateHeight,
    required this.printAreaWidth,
    required this.printAreaHeight,
    required this.printAreaTop,
    required this.printAreaLeft,
    required this.isTemplateOnFront,
    required this.orientation,
  });

  /// Creates an instance from JSON (used by Retrofit/json_serializable).
  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);

  /// Converts the instance to JSON.
  Map<String, dynamic> toJson() => _$TemplateToJson(this);
}

/// Orientation enum for template products.
///
/// Note: Named `TemplateOrientation` to avoid clashing with Flutter's `Orientation`.
@JsonEnum(alwaysCreate: true)
enum Orientation {
  @JsonValue('horizontal')
  horizontal,
  @JsonValue('vertical')
  vertical,
  @JsonValue('any')
  any,
}

/// Model representing placement conflict information.
/// Used in the API when a placement may conflict with other placements.
@JsonSerializable()
class TemplatePlacementConflict {
  /// The ID of the current placement.
  /// Example: "chest_left", "front", "back".
  final String placement;

  /// A list of placement IDs that conflict with this placement.
  /// Example: ["chest_right", "pocket"].
  final List<String> conflicts;

  TemplatePlacementConflict({required this.placement, required this.conflicts});

  factory TemplatePlacementConflict.fromJson(Map<String, dynamic> json) =>
      _$TemplatePlacementConflictFromJson(json);

  Map<String, dynamic> toJson() => _$TemplatePlacementConflictToJson(this);
}
