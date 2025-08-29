// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierOrder _$ModifierOrderFromJson(Map<String, dynamic> json) =>
    ModifierOrder(
      externalId: json['external_id'] as String?,
      shipping: json['shipping'] as String,
      recipient: Address.fromJson(json['recipient'] as Map<String, dynamic>),
      items:
          (json['items'] as List<dynamic>)
              .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList(),
      retailCosts: OrderRetailCosts.fromJson(
        json['retail_costs'] as Map<String, dynamic>,
      ),
      gift: OrderGift.fromJson(json['gift'] as Map<String, dynamic>),
      packingSlip:
          json['packing_slip'] == null
              ? null
              : PackingSlip.fromJson(
                json['packing_slip'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$ModifierOrderToJson(ModifierOrder instance) =>
    <String, dynamic>{
      'external_id': instance.externalId,
      'shipping': instance.shipping,
      'recipient': instance.recipient,
      'items': instance.items,
      'retail_costs': instance.retailCosts,
      'gift': instance.gift,
      'packing_slip': instance.packingSlip,
    };

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
  id: (json['id'] as num?)?.toInt(),
  externalId: json['external_id'] as String?,
  variantId: (json['variant_id'] as num?)?.toInt(),
  syncVariantId: (json['sync_variant_id'] as num?)?.toInt(),
  externalVariantId: json['external_variant_id'] as String?,
  warehouseProductVariantId:
      (json['warehouse_product_variant_id'] as num?)?.toInt(),
  productTemplateId: (json['product_template_id'] as num?)?.toInt(),
  externalProductId: json['external_product_id'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  price: json['price'],
  retailPrice: json['retail_price'] as String?,
  name: json['name'] as String?,
  product:
      json['product'] == null
          ? null
          : ProductVariant.fromJson(json['product'] as Map<String, dynamic>),
  files:
      (json['files'] as List<dynamic>?)
          ?.map((e) => FileAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  sku: json['sku'] as String?,
  discontinued: json['discontinued'] as bool?,
  outOfStock: json['out_of_stock'] as bool?,
);

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
  'id': instance.id,
  'external_id': instance.externalId,
  'variant_id': instance.variantId,
  'sync_variant_id': instance.syncVariantId,
  'external_variant_id': instance.externalVariantId,
  'warehouse_product_variant_id': instance.warehouseProductVariantId,
  'product_template_id': instance.productTemplateId,
  'external_product_id': instance.externalProductId,
  'quantity': instance.quantity,
  'price': instance.price,
  'retail_price': instance.retailPrice,
  'name': instance.name,
  'product': instance.product,
  'files': instance.files,
  'options': instance.options,
  'sku': instance.sku,
  'discontinued': instance.discontinued,
  'out_of_stock': instance.outOfStock,
};

FileAttachment _$FileAttachmentFromJson(Map<String, dynamic> json) =>
    FileAttachment(
      type: json['type'] as String?,
      url: json['url'] as String?,
      filename: json['filename'] as String?,
      visible: json['visible'] as bool?,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => FileOption.fromJson(e as Map<String, dynamic>))
              .toList(),
      position:
          json['position'] == null
              ? null
              : FilePosition.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileAttachmentToJson(FileAttachment instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'filename': instance.filename,
      'visible': instance.visible,
      'options': instance.options,
      'position': instance.position,
    };

FilePosition _$FilePositionFromJson(Map<String, dynamic> json) => FilePosition(
  areaWidth: (json['area_width'] as num).toInt(),
  areaHeight: (json['area_height'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  top: (json['top'] as num).toInt(),
  left: (json['left'] as num).toInt(),
  limitToPrintArea: json['limit_to_print_area'] as bool,
);

Map<String, dynamic> _$FilePositionToJson(FilePosition instance) =>
    <String, dynamic>{
      'area_width': instance.areaWidth,
      'area_height': instance.areaHeight,
      'width': instance.width,
      'height': instance.height,
      'top': instance.top,
      'left': instance.left,
      'limit_to_print_area': instance.limitToPrintArea,
    };
