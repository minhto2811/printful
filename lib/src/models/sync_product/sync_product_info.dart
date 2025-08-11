import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/sync_product/sync_product.dart';
import 'package:printful/src/models/sync_product/sync_variant.dart';
part 'sync_product_info.g.dart';

@JsonSerializable()
class SyncProductInfo {
  @JsonKey(name: 'sync_product')
  final SyncProduct syncProduct;
  @JsonKey(name: 'sync_variants')
  final List<SyncVariant> syncVariants;

  SyncProductInfo({required this.syncProduct, required this.syncVariants});

  factory SyncProductInfo.fromJson(Map<String, dynamic> json) =>
      _$SyncProductInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SyncProductInfoToJson(this);
}
