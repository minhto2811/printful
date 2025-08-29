// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
  id: (json['id'] as num).toInt(),
  externalId: json['external_id'] as String?,
  store: (json['store'] as num).toInt(),
  status: json['status'] as String,
  shipping: json['shipping'] as String,
  shippingServiceName: json['shipping_service_name'] as String,
  created: (json['created'] as num).toInt(),
  updated: (json['updated'] as num).toInt(),
  recipient: Address.fromJson(json['recipient'] as Map<String, dynamic>),
  items:
      (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
  brandingItems:
      (json['branding_items'] as List<dynamic>)
          .map((e) => BrandItem.fromJson(e as Map<String, dynamic>))
          .toList(),
  incompleteItems:
      (json['incomplete_items'] as List<dynamic>)
          .map((e) => IncompleteItem.fromJson(e as Map<String, dynamic>))
          .toList(),
  costs: OrderCosts.fromJson(json['costs'] as Map<String, dynamic>),
  retailCosts: OrderRetailCosts.fromJson(
    json['retail_costs'] as Map<String, dynamic>,
  ),
  pricingBreakdown:
      (json['pricing_breakdown'] as List<dynamic>)
          .map((e) => PricingBreakdown.fromJson(e as Map<String, dynamic>))
          .toList(),
  shipments:
      (json['shipments'] as List<dynamic>)
          .map((e) => OrderShipment.fromJson(e as Map<String, dynamic>))
          .toList(),
  gift:
      json['gift'] == null
          ? null
          : OrderGift.fromJson(json['gift'] as Map<String, dynamic>),
  packingSlip:
      json['packing_slip'] == null
          ? null
          : PackingSlip.fromJson(json['packing_slip'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
  'id': instance.id,
  'external_id': instance.externalId,
  'store': instance.store,
  'status': instance.status,
  'shipping': instance.shipping,
  'shipping_service_name': instance.shippingServiceName,
  'created': instance.created,
  'updated': instance.updated,
  'recipient': instance.recipient,
  'items': instance.items,
  'branding_items': instance.brandingItems,
  'incomplete_items': instance.incompleteItems,
  'costs': instance.costs,
  'retail_costs': instance.retailCosts,
  'pricing_breakdown': instance.pricingBreakdown,
  'shipments': instance.shipments,
  'gift': instance.gift,
  'packing_slip': instance.packingSlip,
};

OrderShipment _$OrderShipmentFromJson(Map<String, dynamic> json) =>
    OrderShipment(
      id: (json['id'] as num).toInt(),
      carrier: json['carrier'] as String,
      service: json['service'] as String,
      trackingNumber: json['tracking_number'] as String,
      trackingUrl: json['tracking_url'] as String,
      created: (json['created'] as num).toInt(),
      shipDate: json['ship_date'] as String,
      shippedAt: json['shipped_at'] as String,
      reshipment: json['reshipment'] as bool,
      items:
          (json['items'] as List<dynamic>)
              .map((e) => OrderShipmentItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$OrderShipmentToJson(OrderShipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carrier': instance.carrier,
      'service': instance.service,
      'tracking_number': instance.trackingNumber,
      'tracking_url': instance.trackingUrl,
      'created': instance.created,
      'ship_date': instance.shipDate,
      'shipped_at': instance.shippedAt,
      'reshipment': instance.reshipment,
      'items': instance.items,
    };

OrderShipmentItem _$OrderShipmentItemFromJson(Map<String, dynamic> json) =>
    OrderShipmentItem(
      itemId: (json['item_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      picked: (json['picked'] as num).toInt(),
      printed: (json['printed'] as num).toInt(),
    );

Map<String, dynamic> _$OrderShipmentItemToJson(OrderShipmentItem instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'quantity': instance.quantity,
      'picked': instance.picked,
      'printed': instance.printed,
    };

PricingBreakdown _$PricingBreakdownFromJson(Map<String, dynamic> json) =>
    PricingBreakdown(
      customerPays: json['customer_pays'] as String,
      printfulPrice: json['printful_price'] as String,
      profit: json['profit'] as String,
      currencySymbol: json['currency_symbol'] as String,
    );

Map<String, dynamic> _$PricingBreakdownToJson(PricingBreakdown instance) =>
    <String, dynamic>{
      'customer_pays': instance.customerPays,
      'printful_price': instance.printfulPrice,
      'profit': instance.profit,
      'currency_symbol': instance.currencySymbol,
    };

OrderCosts _$OrderCostsFromJson(Map<String, dynamic> json) => OrderCosts(
  currency: json['currency'] as String,
  subtotal: json['subtotal'],
  discount: json['discount'],
  shipping: json['shipping'],
  digitization: json['digitization'],
  additionalFee: json['additional_fee'],
  fulfillmentFee: json['fulfillment_fee'],
  retailDeliveryFee: json['retail_delivery_fee'] as String,
  tax: json['tax'] as String,
  vat: json['vat'],
  total: json['total'],
);

Map<String, dynamic> _$OrderCostsToJson(OrderCosts instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'shipping': instance.shipping,
      'digitization': instance.digitization,
      'additional_fee': instance.additionalFee,
      'fulfillment_fee': instance.fulfillmentFee,
      'retail_delivery_fee': instance.retailDeliveryFee,
      'tax': instance.tax,
      'vat': instance.vat,
      'total': instance.total,
    };

IncompleteItem _$IncompleteItemFromJson(Map<String, dynamic> json) =>
    IncompleteItem(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      syncVariantId: (json['sync_variant_id'] as num).toInt(),
      externalVariantId: json['external_variant_id'] as String,
      externalLineItemId: json['external_line_item_id'] as String,
    );

Map<String, dynamic> _$IncompleteItemToJson(IncompleteItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'sync_variant_id': instance.syncVariantId,
      'external_variant_id': instance.externalVariantId,
      'external_line_item_id': instance.externalLineItemId,
    };

BrandItem _$BrandItemFromJson(Map<String, dynamic> json) => BrandItem(
  id: (json['id'] as num).toInt(),
  externalId: json['external_id'] as String,
  variantId: (json['variant_id'] as num).toInt(),
  syncVariantId: (json['sync_variant_id'] as num).toInt(),
  externalVariantId: json['external_variant_id'] as String,
  warehouseProductVariantId:
      (json['warehouse_product_variant_id'] as num).toInt(),
  productTemplateId: (json['product_template_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  price: json['price'] as String,
  retailPrice: json['retail_price'] as String,
  name: json['name'] as String,
  product: ProductVariant.fromJson(json['product'] as Map<String, dynamic>),
  files:
      (json['files'] as List<dynamic>)
          .map((e) => BrandFile.fromJson(e as Map<String, dynamic>))
          .toList(),
  options:
      (json['options'] as List<dynamic>)
          .map((e) => ItemOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  sku: json['sku'] as String,
  discontinued: json['discontinued'] as bool,
  outOfStock: json['out_of_stock'] as bool,
);

Map<String, dynamic> _$BrandItemToJson(BrandItem instance) => <String, dynamic>{
  'id': instance.id,
  'external_id': instance.externalId,
  'variant_id': instance.variantId,
  'sync_variant_id': instance.syncVariantId,
  'external_variant_id': instance.externalVariantId,
  'warehouse_product_variant_id': instance.warehouseProductVariantId,
  'product_template_id': instance.productTemplateId,
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

BrandFile _$BrandFileFromJson(Map<String, dynamic> json) => BrandFile(
  type: json['type'] as String,
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  options:
      (json['options'] as List<dynamic>)
          .map((e) => FileOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  hash: json['hash'] as String,
  filename: json['filename'] as String,
  mimeType: json['mime_type'] as String,
  size: (json['size'] as num).toInt(),
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  dpi: (json['dpi'] as num).toInt(),
  status: json['status'] as String,
  created: (json['created'] as num).toInt(),
  thumbnailUrl: json['thumbnail_url'] as String,
  visible: json['visible'] as bool,
  isTemporary: json['is_temporary'] as bool,
);

Map<String, dynamic> _$BrandFileToJson(BrandFile instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'url': instance.url,
  'options': instance.options,
  'hash': instance.hash,
  'filename': instance.filename,
  'mime_type': instance.mimeType,
  'size': instance.size,
  'width': instance.width,
  'height': instance.height,
  'dpi': instance.dpi,
  'status': instance.status,
  'created': instance.created,
  'thumbnail_url': instance.thumbnailUrl,
  'visible': instance.visible,
  'is_temporary': instance.isTemporary,
};

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  name: json['name'] as String,
  company: json['company'] as String?,
  address1: json['address1'] as String,
  address2: json['address2'] as String?,
  city: json['city'] as String,
  stateCode: json['state_code'] as String?,
  stateName: json['state_name'] as String?,
  countryCode: json['country_code'] as String,
  countryName: json['country_name'] as String,
  zip: json['zip'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  taxNumber: json['tax_number'] as String?,
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'name': instance.name,
  'company': instance.company,
  'address1': instance.address1,
  'address2': instance.address2,
  'city': instance.city,
  'state_code': instance.stateCode,
  'state_name': instance.stateName,
  'country_code': instance.countryCode,
  'country_name': instance.countryName,
  'zip': instance.zip,
  'phone': instance.phone,
  'email': instance.email,
  'tax_number': instance.taxNumber,
};

FileOption _$FileOptionFromJson(Map<String, dynamic> json) =>
    FileOption(id: json['id'] as String, value: json['value'] as String);

Map<String, dynamic> _$FileOptionToJson(FileOption instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};

ItemOption _$ItemOptionFromJson(Map<String, dynamic> json) =>
    ItemOption(id: json['id'] as String, value: json['value']);

Map<String, dynamic> _$ItemOptionToJson(ItemOption instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};

OrderRetailCosts _$OrderRetailCostsFromJson(Map<String, dynamic> json) =>
    OrderRetailCosts(
      currency: json['currency'] as String,
      subtotal: json['subtotal'],
      discount: json['discount'],
      shipping: json['shipping'],
      tax: json['tax'],
    );

Map<String, dynamic> _$OrderRetailCostsToJson(OrderRetailCosts instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'shipping': instance.shipping,
      'tax': instance.tax,
    };

OrderGift _$OrderGiftFromJson(Map<String, dynamic> json) => OrderGift(
  subject: json['subject'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$OrderGiftToJson(OrderGift instance) => <String, dynamic>{
  'subject': instance.subject,
  'message': instance.message,
};

PackingSlip _$PackingSlipFromJson(Map<String, dynamic> json) => PackingSlip(
  email: json['email'] as String,
  phone: json['phone'] as String?,
  message: json['message'] as String?,
  logoUrl: json['logo_url'] as String?,
  storeName: json['store_name'] as String?,
  customOrderId: json['custom_order_id'] as String?,
);

Map<String, dynamic> _$PackingSlipToJson(PackingSlip instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'message': instance.message,
      'logo_url': instance.logoUrl,
      'store_name': instance.storeName,
      'custom_order_id': instance.customOrderId,
    };
