import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/catalog/product.dart';
import 'package:printful/src/models/catalog/variant_info.dart';

part 'product_info.g.dart';

@JsonSerializable()
class ProductInfo {
  final Product product;
  final List<Variant> variants;

  ProductInfo({required this.product, required this.variants});

  factory ProductInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductInfoToJson(this);
}
