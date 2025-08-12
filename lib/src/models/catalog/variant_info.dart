import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/catalog/product.dart';
part 'variant_info.g.dart';

@JsonSerializable()
class VariantInfo {
  final Variant variant;
  final Product product;

  VariantInfo({required this.variant, required this.product});

  factory VariantInfo.fromJson(Map<String, dynamic> json) =>
      _$VariantInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VariantInfoToJson(this);
}

@JsonSerializable()
class Variant {
  final int id;
  @JsonKey(name: 'product_id')
  final int productId;
  final String name;
  final String size;
  final String? color;
  @JsonKey(name: 'color_code')
  final String? colorCode;
  @JsonKey(name: 'color_code2')
  final String? colorCode2;
  final String image;
  final String price;
  @JsonKey(name: 'in_stock')
  final bool inStock;
  @JsonKey(name: 'availability_regions')
  final Map<String, dynamic>? availabilityRegions;
  @JsonKey(name: 'availability_status')
  final List<AvailabilityStatus> availabilityStatus;
  final List<Material> material;

  Variant({
    required this.id,
    required this.productId,
    required this.name,
    required this.size,
    required this.color,
    required this.colorCode,
    required this.colorCode2,
    required this.image,
    required this.price,
    required this.inStock,
    required this.availabilityRegions,
    required this.availabilityStatus,
    required this.material,
  });

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  Map<String, dynamic> toJson() => _$VariantToJson(this);
}

@JsonSerializable()
class AvailabilityStatus {
  final String region;
  final String status;

  AvailabilityStatus({required this.region, required this.status});

  factory AvailabilityStatus.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityStatusFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityStatusToJson(this);
}

@JsonSerializable()
class Material {
  final String name;
  final num percentage;

  Material({required this.name, required this.percentage});

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialToJson(this);
}
