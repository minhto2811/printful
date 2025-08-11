import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/order/order.dart';
import 'package:printful/src/models/product_template/color.dart';
import 'package:printful/src/models/product_template/placement.dart';
import 'package:printful/src/models/product_template/placement_option.dart';

part 'product_template.g.dart';

@JsonSerializable()
class ProductTemplate {
  final int id;
  @JsonKey(name: 'product_id')
  final int productId;
  @JsonKey(name: 'external_product_id')
  final String externalProductId;
  final String title;
  @JsonKey(name: 'available_variant_ids')
  final List<int> availableVariantIds;
  @JsonKey(name: 'option_data')
  final List<ItemOption> optionData;
  final List<Color> colors;
  final List<String> size;
  @JsonKey(name: 'mockup_file_url')
  final String mockupFileUrl;
  final List<Placement> placements;
  @JsonKey(name: 'created_at')
  final int createdAt;
  @JsonKey(name: 'updated_at')
  final int updatedAt;
  @JsonKey(name: 'placement_option_data')
  final List<PlacementOption> placementOptionData;

  ProductTemplate({
    required this.id,
    required this.productId,
    required this.externalProductId,
    required this.title,
    required this.availableVariantIds,
    required this.optionData,
    required this.colors,
    required this.size,
    required this.mockupFileUrl,
    required this.placements,
    required this.createdAt,
    required this.updatedAt,
    required this.placementOptionData,
  });

  factory ProductTemplate.fromJson(Map<String, dynamic> json) =>
      _$ProductTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTemplateToJson(this);
}
