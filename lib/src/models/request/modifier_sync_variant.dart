import 'package:json_annotation/json_annotation.dart';
import 'package:printful/src/models/sync_product/sync_variant.dart';

part 'modifier_sync_variant.g.dart';

@JsonSerializable()
class ModifierSyncVariant {
  ///Sync Variant ID. Please specify the IDs of
  ///all Sync Variants you wish to keep.
  final int id;

  ///Variant ID from the Ecommerce platform
  @JsonKey(name: 'external_id')
  final String externalId;

  ///Printful Variant ID that this Sync Variant is synced to
  @JsonKey(name: 'variant_id')
  final int variantId;

  ///Retail price that this item is sold for
  @JsonKey(name: 'retail_price')
  final String retailPrice;

  ///Indicates if this Sync Variant is ignored
  @JsonKey(name: 'is_ignored')
  final bool isIgnored;

  ///SKU of this Sync Variant
  final String? sku;

  ///Array of attached printfiles / preview images
  final SyncVariantFile files;

  /// Array of objects (SyncVariantOption)
  /// Array of additional options for the configured product/variant
  final SyncVariantOption options;

  ///Enum: "active" "discontinued" "out_of_stock" "temporary_out_of_stock"
  @JsonKey(name: 'availability_status')
  final String availabilityStatus;

  ModifierSyncVariant({
    required this.id,
    required this.externalId,
    required this.variantId,
    required this.retailPrice,
    required this.isIgnored,
    required this.sku,
    required this.files,
    required this.options,
    required this.availabilityStatus,
  });

  factory ModifierSyncVariant.fromJson(Map<String, dynamic> json) =>
      _$ModifierSyncVariantFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierSyncVariantToJson(this);
}
