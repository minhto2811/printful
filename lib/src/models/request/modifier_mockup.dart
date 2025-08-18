import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/order/order.dart';

part 'modifier_mockup.g.dart';

@JsonSerializable()
class ModifierMockup {
  ///List of variant ids you want to generate.
  @JsonKey(name: 'variant_ids')
  final List<int> variantIds;

  ///Enum: "jpg" "png"
  ///Generated file format. PNG will have a transparent background,
  /// JPG will have a smaller file size.
  final Format format;

  ///Width of the resulting mockup images (min 50, max 2000, default is 1000)
  final int width;

  ///Key-value list of product options (embroidery thread, stitch colors).
  ///Product options can be found in Catalog API endpoint.
  @JsonKey(name: 'product_options')
  final Map<String, String> productOptions;

  ///List of option group names you want to generate.
  ///Product's option groups can be found in printfile API request.
  @JsonKey(name: 'option_groups')
  final List<String> optionGroups;

  ///List of option names you want to generate.
  ///Product's options can be found in printfile API request.
  @JsonKey(name: 'options')
  final List<String> options;

  /// Array of objects (GenerationTaskFile)
  final GenerationTaskFile files;

  ///Product template ID. Use instead of files parameter.
  @JsonKey(name: 'product_template_id')
  final int productTemplateId;

  ModifierMockup({
    required this.variantIds,
    required this.format,
    required this.width,
    required this.productOptions,
    required this.optionGroups,
    required this.options,
    required this.files,
    required this.productTemplateId,
  });

  factory ModifierMockup.fromJson(Map<String, dynamic> json) =>
      _$ModifierMockupFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierMockupToJson(this);
}

@JsonEnum()
enum Format {
  @JsonValue('jpg')
  jpg,
  @JsonValue('png')
  png,
}

@JsonSerializable()
class GenerationTaskFile {
  ///Placement identifier (front, back, etc.).
  final String placement;

  ///Public URL where your file is stored.
  @JsonKey(name: 'image_url')
  final String imageUrl;

  ///Position.
  final GenerationTaskFilePosition position;

  ///Array of additional options for this file
  final FileOption options;

  GenerationTaskFile({
    required this.placement,
    required this.imageUrl,
    required this.position,
    required this.options,
  });

  factory GenerationTaskFile.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskFileFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationTaskFileToJson(this);
}

/// Represents the position and size of a file/image
/// within a print area for a generation task.
@JsonSerializable()
class GenerationTaskFilePosition {
  /// Positioning area width on the print area in pixels.
  /// Can be null if not specified.
  @JsonKey(name: 'area_width')
  final int? areaWidth;

  /// Positioning area height on the print area in pixels.
  /// Can be null if not specified.
  @JsonKey(name: 'area_height')
  final int? areaHeight;

  /// Width of the image in the given area in pixels.
  @JsonKey(name: 'width')
  final int width;

  /// Height of the image in the given area in pixels.
  @JsonKey(name: 'height')
  final int height;

  /// Image top offset in the given area in pixels.
  @JsonKey(name: 'top')
  final int top;

  /// Image left offset in the given area in pixels.
  @JsonKey(name: 'left')
  final int left;

  GenerationTaskFilePosition({
    this.areaWidth,
    this.areaHeight,
    required this.width,
    required this.height,
    required this.top,
    required this.left,
  });

  /// Creates an instance from a JSON map (API response).
  factory GenerationTaskFilePosition.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskFilePositionFromJson(json);

  /// Converts the instance to JSON (API request).
  Map<String, dynamic> toJson() => _$GenerationTaskFilePositionToJson(this);
}
