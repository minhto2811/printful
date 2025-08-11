import 'package:json_annotation/json_annotation.dart';

part 'sync_product.g.dart';

@JsonSerializable()
class SyncProduct {
  final int? id;
  @JsonKey(name: 'external_id')
  final String externalId;
  final String name;
  final int variants;
  final int synced;
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  @JsonKey(name: 'is_ignored')
  final bool isIgnored;

  SyncProduct({
    this.id,
    required this.externalId,
    required this.name,
    required  this.variants,
    required this.synced,
    required this.thumbnailUrl,
    required this.isIgnored,
  });

  factory SyncProduct.fromJson(Map<String, dynamic> json) =>
      _$SyncProductFromJson(json);

  Map<String, dynamic> toJson() => _$SyncProductToJson(this);
}
