import 'package:json_annotation/json_annotation.dart';

part 'printfile_info.g.dart';

@JsonSerializable()
class PrintfileInfo {
  ///Requested product id.
  @JsonKey(name: 'product_id')
  final int productId;

  ///List of available placements. Key is placement identifier,
  ///value is display name. (e.g. {embroidery_front: Front, ..}).
  @JsonKey(name: 'available_placements')
  final Map<String, String> availablePlacements;

  ///List of available printfiles.
  final List<Printfile> printfiles;

  @JsonKey(name: 'variant_printfiles')
  final List<VariantPrintfile> variantPrintfiles;

  @JsonKey(name: 'option_groups')
  final List<String> optionGroups;

  final List<String> options;

  PrintfileInfo({
    required this.productId,
    required this.availablePlacements,
    required this.printfiles,
    required this.variantPrintfiles,
    required this.optionGroups,
    required this.options,
  });

  factory PrintfileInfo.fromJson(Map<String, dynamic> json) =>
      _$PrintfileInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PrintfileInfoToJson(this);
}

@JsonSerializable()
class Printfile {
  ///Unique printfile identifier.
  @JsonKey(name: 'printfile_id')
  final int printfileId;

  ///Width in pixels.
  final int width;

  ///Height in pixels.
  final int height;

  ///Resulting DPI for given width and height.
  final int dpi;

  ///Enum: "cover" "fit"
  /// Indicates if printfile will be used in cover or fit mode.
  /// Cover mode can produce cropping if side ratio does not match printfile.
  @JsonKey(name: 'fill_mode')
  final FillMode fillMode;

  /// boolean
  /// Indicates if printfile can be rotated horizontally (e.g. for posters).
  @JsonKey(name: 'can_rotate')
  final bool canRotate;

  Printfile({
    required this.printfileId,
    required this.width,
    required this.height,
    required this.dpi,
    required this.fillMode,
    required this.canRotate,
  });

  factory Printfile.fromJson(Map<String, dynamic> json) =>
      _$PrintfileFromJson(json);

  Map<String, dynamic> toJson() => _$PrintfileToJson(this);
}

@JsonEnum()
enum FillMode {
  @JsonValue('fit')
  fit,
  @JsonValue('cover')
  cover,
}

@JsonSerializable()
class VariantPrintfile {
  @JsonKey(name: 'variant_id')
  final int variantId;

  ///A key-value object mapping placement identifiers to printfile IDs.
  final Map<String, dynamic> placements;

  VariantPrintfile({required this.variantId, required this.placements});

  factory VariantPrintfile.fromJson(Map<String, dynamic> json) =>
      _$VariantPrintfileFromJson(json);

  Map<String, dynamic> toJson() => _$VariantPrintfileToJson(this);
}
