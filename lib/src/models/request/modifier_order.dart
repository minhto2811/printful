import 'package:json_annotation/json_annotation.dart';
import 'package:printful/printful.dart';

part 'modifier_order.g.dart';

@JsonSerializable()
class ModifierOrder {
  ///Order ID from the external system
  @JsonKey(name: 'external_id')
  final String? externalId;

  ///Shipping method. Defaults to 'STANDARD'
  final String shipping;

  ///[recipient] Information about the address.
  final Address recipient;

  ///[items] Array of items in the order.
  final List<OrderItem> items;

  @JsonKey(name: 'retail_costs')
  final OrderRetailCosts retailCosts;

  ///Optional gift message for the packing slip
  final OrderGift gift;

  ///Custom packing slip for this order. Example of a packing slip
  ///with explained fields can be found
  @JsonKey(name: 'packing_slip')
  final PackingSlip? packingSlip;

  ModifierOrder({
    this.externalId,
    required this.shipping,
    required this.recipient,
    required this.items,
    required this.retailCosts,
    required this.gift,
    this.packingSlip,
  });

  factory ModifierOrder.fromJson(Map<String, dynamic> json) =>
      _$ModifierOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierOrderToJson(this);
}

@JsonSerializable()
class OrderItem {
  final int? id;
  @JsonKey(name: 'external_id')
  final String? externalId;
  @JsonKey(name: 'variant_id')
  final int? variantId;
  @JsonKey(name: 'sync_variant_id')
  final int? syncVariantId;
  @JsonKey(name: 'external_variant_id')
  final String? externalVariantId;
  @JsonKey(name: 'warehouse_product_variant_id')
  final int? warehouseProductVariantId;
  @JsonKey(name: 'product_template_id')
  final int? productTemplateId;
  @JsonKey(name: 'external_product_id')
  final String? externalProductId;
  final int quantity;
  final String? price;
  @JsonKey(name: 'retail_price')
  final String? retailPrice;
  final String? name;
  final ProductVariant? product;
  final List<FileAttachment>? files;
  final List<ItemOption>? options;
  final String? sku;
  final bool? discontinued;
  @JsonKey(name: 'out_of_stock')
  final bool? outOfStock;

  OrderItem({
    this.id,
    this.externalId,
    this.variantId,
    this.syncVariantId,
    this.externalVariantId,
    this.warehouseProductVariantId,
    this.productTemplateId,
    this.externalProductId,
    required this.quantity,
    this.price,
    this.retailPrice,
    this.name,
    this.product,
    this.files,
    this.options,
    this.sku,
    this.discontinued,
    this.outOfStock,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}

@JsonSerializable()
class FileAttachment {
  final String? type;
  final String? url;
  final String? filename;
  final bool? visible;
  final List<FileOption>? options;
  final FilePosition? position;

  FileAttachment({
    this.type,
    this.url,
    this.filename,
    this.visible,
    this.options,
    this.position,
  });

  factory FileAttachment.fromJson(Map<String, dynamic> json) =>
      _$FileAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$FileAttachmentToJson(this);
}

@JsonSerializable()
class FilePosition {
  @JsonKey(name: 'area_width')
  final int areaWidth;

  @JsonKey(name: 'area_height')
  final int areaHeight;

  final int width;
  final int height;
  final int top;
  final int left;

  @JsonKey(name: 'limit_to_print_area')
  final bool limitToPrintArea;

  FilePosition({
    required this.areaWidth,
    required this.areaHeight,
    required this.width,
    required this.height,
    required this.top,
    required this.left,
    required this.limitToPrintArea,
  });

  factory FilePosition.fromJson(Map<String, dynamic> json) =>
      _$FilePositionFromJson(json);

  Map<String, dynamic> toJson() => _$FilePositionToJson(this);
}
