import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/sync_product/sync_product.dart';
import 'package:printful/src/models/sync_product/sync_variant.dart';

part 'modifier_sync_product.g.dart';

@JsonSerializable()
class ModifierSyncProduct {
  @JsonKey(name: 'sync_product')
  final SyncProduct syncProduct;
  @JsonKey(name: 'sync_variants')
  final List<SyncVariant> syncVariants;

  ModifierSyncProduct({required this.syncProduct, required this.syncVariants});

  factory ModifierSyncProduct.fromJson(Map<String, dynamic> json) =>
      _$ModifierSyncProductFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierSyncProductToJson(this);
}
