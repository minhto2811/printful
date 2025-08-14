import 'package:json_annotation/json_annotation.dart';
import 'package:printful/printful.dart';

part 'sync_variant.g.dart';

@JsonSerializable()
class SyncVariant {
  final int? id;
  @JsonKey(name: 'external_id')
  final String externalId;
  @JsonKey(name: 'sync_product_id')
  final int syncProductId;
  final String name;
  final bool synced;
  @JsonKey(name: 'variant_id')
  final int variantId;
  @JsonKey(name: 'retail_price')
  final String retailPrice;
  final String currency;
  @JsonKey(name: 'is_ignored')
  final bool isIgnored;
  final String? sku;
  final ProductVariant product;
  final List<SyncVariantFile> files;
  final List<SyncVariantOption> options;
  @JsonKey(name: 'main_category_id')
  final int? mainCategoryId;
  @JsonKey(name: 'warehouse_product_variant_id')
  final int? warehouseProductVariantId;
  final String? size;
  final String? color;

  ///Enum: "active" "discontinued" "out_of_stock" "temporary_out_of_stock"
  /// Indicates the status of the Sync Variant.
  @JsonKey(name: 'availability_status')
  final String availabilityStatus;

  SyncVariant({
    this.id,
    required this.externalId,
    required this.syncProductId,
    required this.name,
    required this.synced,
    required this.variantId,
    required this.retailPrice,
    required this.currency,
    required this.isIgnored,
    this.sku,
    required this.product,
    required this.files,
    required this.options,
    this.mainCategoryId,
    this.warehouseProductVariantId,
    this.size,
    this.color,
    required this.availabilityStatus,
  });

  factory SyncVariant.fromJson(Map<String, dynamic> json) =>
      _$SyncVariantFromJson(json);

  Map<String, dynamic> toJson() => _$SyncVariantToJson(this);
}

@JsonSerializable()
class ProductVariant {
  @JsonKey(name: 'variant_id')
  final int variantId;
  @JsonKey(name: 'product_id')
  final int productId;
  final String name;
  final String image;

  ProductVariant({
    required this.variantId,
    required this.productId,
    required this.name,
    required this.image,
  });

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantToJson(this);
}

@JsonSerializable()
class SyncVariantFile {
  final String type;
  final int id;

  ///Source URL where the file is downloaded from.
  ///The use of .ai .psd and .tiff files have been
  ///depreciated, if your application uses these file
  /// types or accepts these types from users you will
  /// need to add validation.
  final String? url;
  final FileOption? options;

  ///MD5 checksum of the file
  final String hash;
  final String filename;
  @JsonKey(name: 'mime_type')
  final String mimeType;

  ///Size in bytes
  final int size;

  ///Width in pixels
  final int width;

  ///Height in pixels
  final int height;

  ///Resolution DPI.
  // Note: for vector files this may be indicated as only 72dpi,
  // but it doesn't affect print quality since the vector files
  // are resolution independent.
  final int? dpi;

  ///File processing status:
  /// ok - file was processed successfuly
  /// waiting - file is being processed
  /// failed - file failed to be processed
  final String status;

  ///File creation timestamp
  final int created;
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @JsonKey(name: 'preview_url')
  final String previewUrl;

  ///Show file in the Printfile Library (default true)
  final bool visible;
  @JsonKey(name: 'is_temporary')
  final bool isTemporary;
  @JsonKey(name: 'stitch_count_tier')
  final String? stitchCountTier;

  SyncVariantFile({
    required this.type,
    required this.id,
    required this.url,
    required this.options,
    required this.hash,
    required this.filename,
    required this.mimeType,
    required this.size,
    required this.width,
    required this.height,
    required this.dpi,
    required this.status,
    required this.created,
    required this.thumbnailUrl,
    required this.previewUrl,
    required this.visible,
    required this.isTemporary,
    this.stitchCountTier,
  });

  factory SyncVariantFile.fromJson(Map<String, dynamic> json) =>
      _$SyncVariantFileFromJson(json);

  Map<String, dynamic> toJson() => _$SyncVariantFileToJson(this);
}

@JsonSerializable()
class SyncVariantOption {
  final String id;
  final dynamic value;

  SyncVariantOption({required this.id, required this.value});

  factory SyncVariantOption.fromJson(Map<String, dynamic> json) =>
      _$SyncVariantOptionFromJson(json);

  Map<String, dynamic> toJson() => _$SyncVariantOptionToJson(this);
}
