import 'package:json_annotation/json_annotation.dart';
import 'package:printful/printful.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  final int id;

  ///[externalId] Order ID from the external system.
  @JsonKey(name: 'external_id')
  final String? externalId;

  ///Store ID
  final int store;

  ///Order status:
  /// draft - order is not submitted for fulfillment
  /// failed - order was submitted for fulfillment but was not accepted because of an error (problem with address, printfiles, charging, etc.)
  /// pending - order has been submitted for fulfillment
  /// canceled - order is canceled
  /// onhold - order has encountered a problem during the fulfillment that needs to be resolved together with the Printful customer service inprocess - order is being fulfilled and is no longer cancellable
  /// partial - order is partially fulfilled (some items are shipped already, the rest will follow)
  /// fulfilled - all items are shipped
  final String status;

  ///[shipping] Shipping method. Defaults to 'STANDARD'.
  final String shipping;

  ///Human readable shipping method name.
  @JsonKey(name: 'shipping_service_name')
  final String shippingServiceName;

  final int created;
  final int updated;

  ///[recipient] Information about the address.
  final Address recipient;

  ///[items] Array of items in the order.
  final List<OrderItem> items;

  ///Array of branding items in the order
  @JsonKey(name: 'branding_items')
  final List<BrandItem> brandingItems;

  ///Array of incomplete items in the order
  @JsonKey(name: 'incomplete_items')
  final List<IncompleteItem> incompleteItems;

  ///Order costs (Printful prices)
  final OrderCosts costs;

  ///Retail costs that are to be displayed on the packing slip
  ///for international shipments. Retail costs are used only
  ///if every item in order contains the retail_price attribute.
  @JsonKey(name: 'retail_costs')
  final OrderRetailCosts retailCosts;

  ///Difference between order price and retail costs.
  ///Will be shown only if order is completed.
  @JsonKey(name: 'pricing_breakdown')
  final List<PricingBreakdown> pricingBreakdown;

  ///Array of shipments already shipped for this order
  final List<OrderShipment> shipments;

  ///Optional gift message for the packing slip
  final OrderGift gift;

  ///Custom packing slip for this order. Example of a packing slip
  ///with explained fields can be found
  @JsonKey(name: 'packing_slip')
  final PackingSlip? packingSlip;

  Order({
    required this.id,
    this.externalId,
    required this.store,
    required this.status,
    required this.shipping,
    required this.shippingServiceName,
    required this.created,
    required this.updated,
    required this.recipient,
    required this.items,
    required this.brandingItems,
    required this.incompleteItems,
    required this.costs,
    required this.retailCosts,
    required this.pricingBreakdown,
    required this.shipments,
    required this.gift,
    this.packingSlip,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

@JsonSerializable()
class OrderShipment {
  @JsonKey(name: 'id')
  final int id; // Shipment ID

  @JsonKey(name: 'carrier')
  final String carrier; // Carrier name

  @JsonKey(name: 'service')
  final String service; // Delivery service name

  @JsonKey(name: 'tracking_number')
  final String trackingNumber; // Shipment tracking number

  @JsonKey(name: 'tracking_url')
  final String trackingUrl; // Shipment tracking URL

  @JsonKey(name: 'created')
  final int created; // Shipping time (unix timestamp)

  @JsonKey(name: 'ship_date')
  final String shipDate; // Ship date

  @JsonKey(name: 'shipped_at')
  final String shippedAt; // Ship time in unix timestamp

  @JsonKey(name: 'reshipment')
  final bool reshipment; // Whether this is a reshipment

  @JsonKey(name: 'items')
  final List<OrderShipmentItem> items; // Array of items in this shipment

  OrderShipment({
    required this.id,
    required this.carrier,
    required this.service,
    required this.trackingNumber,
    required this.trackingUrl,
    required this.created,
    required this.shipDate,
    required this.shippedAt,
    required this.reshipment,
    required this.items,
  });

  factory OrderShipment.fromJson(Map<String, dynamic> json) =>
      _$OrderShipmentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderShipmentToJson(this);
}

@JsonSerializable()
class OrderShipmentItem {
  @JsonKey(name: 'item_id')
  final int itemId; // Line item ID

  @JsonKey(name: 'quantity')
  final int quantity; // Quantity of items in this shipment

  @JsonKey(name: 'picked')
  final int picked; // 0 or 1 (boolean in int form) - pickup completed

  @JsonKey(name: 'printed')
  final int printed; // 0 or 1 (boolean in int form) - printed/sewed

  OrderShipmentItem({
    required this.itemId,
    required this.quantity,
    required this.picked,
    required this.printed,
  });

  factory OrderShipmentItem.fromJson(Map<String, dynamic> json) =>
      _$OrderShipmentItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderShipmentItemToJson(this);
}

@JsonSerializable()
class PricingBreakdown {
  @JsonKey(name: 'customer_pays')
  final String customerPays; // Amount customer paid

  @JsonKey(name: 'printful_price')
  final String printfulPrice; // Printful price

  @JsonKey(name: 'profit')
  final String profit; // Profit

  @JsonKey(name: 'currency_symbol')
  final String currencySymbol; // Currency symbol

  PricingBreakdown({
    required this.customerPays,
    required this.printfulPrice,
    required this.profit,
    required this.currencySymbol,
  });

  factory PricingBreakdown.fromJson(Map<String, dynamic> json) =>
      _$PricingBreakdownFromJson(json);

  Map<String, dynamic> toJson() => _$PricingBreakdownToJson(this);
}

@JsonSerializable()
class OrderCosts {
  /// 3 letter currency code
  final String currency;

  /// Total cost of all items
  final String subtotal;

  /// Discount
  final String discount;

  /// Shipping costs
  final String shipping;

  /// Digitization costs
  final String digitization;

  /// Additional fee for custom product
  @JsonKey(name: 'additional_fee')
  final String additionalFee;

  /// Custom product fulfillment fee
  @JsonKey(name: 'fulfillment_fee')
  final String fulfillmentFee;

  /// Retail delivery fee
  @JsonKey(name: 'retail_delivery_fee')
  final String retailDeliveryFee;

  /// Sum of taxes (not included in the item price)
  final String tax;

  /// Sum of vat (not included in the item price)
  final String vat;

  /// Grand Total (subtotal - discount + tax + vat + shipping)
  final String total;

  OrderCosts({
    required this.currency,
    required this.subtotal,
    required this.discount,
    required this.shipping,
    required this.digitization,
    required this.additionalFee,
    required this.fulfillmentFee,
    required this.retailDeliveryFee,
    required this.tax,
    required this.vat,
    required this.total,
  });

  factory OrderCosts.fromJson(Map<String, dynamic> json) =>
      _$OrderCostsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCostsToJson(this);
}


@JsonSerializable()
class IncompleteItem {
  ///Incomplete item name
  final String name;
  ///Incompleted item quantity
  final int quantity;
  ///Sync variant ID of the incompleted item.
  @JsonKey(name: 'sync_variant_id')
  final int syncVariantId;
  ///External variant ID of the incompleted item.
  @JsonKey(name: 'external_variant_id')
  final String externalVariantId;
  ///External order line item id.
  @JsonKey(name:'external_line_item_id')
  final String externalLineItemId;

  IncompleteItem({
    required this.name,
    required this.quantity,
    required this.syncVariantId,
    required this.externalVariantId,
    required this.externalLineItemId,
  });

  factory IncompleteItem.fromJson(Map<String, dynamic> json) => _$IncompleteItemFromJson(json);

  Map<String, dynamic> toJson() => _$IncompleteItemToJson(this);
}

@JsonSerializable()
class BrandItem {
  ///Line item ID
  final int id;

  ///Line item ID from the external system
  @JsonKey(name: 'external_id')
  final String externalId;

  ///Variant ID of the item ordered.
  @JsonKey(name: 'variant_id')
  final int variantId;

  ///Sync variant ID of the item ordered
  @JsonKey(name: 'sync_variant_id')
  final int syncVariantId;

  ///External variant ID of the item ordered.
  @JsonKey(name: 'external_variant_id')
  final String externalVariantId;

  ///Warehousing product variant ID of the item ordered. See Warehouse Products API
  @JsonKey(name: 'warehouse_product_variant_id')
  final int warehouseProductVariantId;

  ///The ID of a Product Template to generate the printfiles from.
  /// The variant_id field must be passed as well. Can't be combined
  /// with following fields: sync_variant_id, external_variant_id,
  /// warehouse_product_variant_id, files, options, external_product_id.
  @JsonKey(name: 'product_template_id')
  final int productTemplateId;

  ///Number of items ordered (Limited to 1000 for one item)
  final int quantity;

  ///Printful price of the item
  final String price;

  ///Original retail price of the item to be displayed on the packing slip
  @JsonKey(name: 'retail_price')
  final String retailPrice;

  ///Display name of the item. If not given, a name from the Printful
  ///system will be displayed on the packing slip
  final String name;

  ///Short information about the Printful Product and Variant
  final ProductVariant product;

  ///Array of attached printfiles / preview images
  final List<BrandFile> files;

  ///Array of additional options for this product
  final List<ItemOption> options;

  ///Product identifier (SKU) from the external system
  final String sku;

  ///Whether the item belongs to discontinued product i.e. it's permanently unavailable
  final bool discontinued;

  ///Whether the item is out of stock i.e. temporarily unavailable
  @JsonKey(name: 'out_of_stock')
  final bool outOfStock;

  BrandItem({
    required this.id,
    required this.externalId,
    required this.variantId,
    required this.syncVariantId,
    required this.externalVariantId,
    required this.warehouseProductVariantId,
    required this.productTemplateId,
    required this.quantity,
    required this.price,
    required this.retailPrice,
    required this.name,
    required this.product,
    required this.files,
    required this.options,
    required this.sku,
    required this.discontinued,
    required this.outOfStock,
  });

  factory BrandItem.fromJson(Map<String, dynamic> json) =>
      _$BrandItemFromJson(json);

  Map<String, dynamic> toJson() => _$BrandItemToJson(this);
}

@JsonSerializable()
class BrandFile {
  ///Role of the file
  final String type;

  ///File ID
  final int id;

  ///Source URL where the file is downloaded from.
  ///The use of .ai .psd and .tiff files have been
  ///depreciated, if your application uses these file
  /// types or accepts these types from users you will
  /// need to add validation.
  final String url;

  ///Array of additional options for this file
  final List<FileOption> options;

  ///MD5 checksum of the file
  final String hash;

  ///File name
  final String filename;

  ///MIME type of the file
  @JsonKey(name: 'mime_type')
  final String mimeType;

  ///Size in bytes
  final int size;

  ///Width in pixels
  final int width;

  ///Height in pixels
  final int height;

  ///Resolution DPI.
  /// Note: for vector files this may be indicated as only 72dpi,
  /// but it doesn't affect print quality since the vector files
  /// are resolution independent.
  final int dpi;

  ///File processing status:
  /// ok - file was processed successfuly
  /// waiting - file is being processed
  /// failed - file failed to be processed
  final String status;
  final int created;
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;
  final bool visible;
  @JsonKey(name: 'is_temporary')
  final bool isTemporary;

  BrandFile({
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
    required this.visible,
    required this.isTemporary,
  });

  factory BrandFile.fromJson(Map<String, dynamic> json) =>
      _$BrandFileFromJson(json);

  Map<String, dynamic> toJson() => _$BrandFileToJson(this);
}

/// A full address model used for shipping or billing purposes.
///
/// Includes personal and company information, street address, location,
/// contact details, and tax-related fields.
@JsonSerializable()
class Address {
  /// Full name of the recipient.
  final String name;

  /// Name of the company, if applicable.
  final String company;

  /// First line of the street address.
  final String address1;

  /// Second line of the street address (e.g., apartment, suite, etc.).
  final String address2;

  /// City or locality.
  final String city;

  /// Abbreviated state or province code (e.g., CA, NY).
  final String stateCode;

  /// Full state or province name.
  final String stateName;

  /// ISO 3166-1 alpha-2 country code (e.g., US, VN).
  final String countryCode;

  /// Full country name.
  final String countryName;

  /// Postal or ZIP code.
  final String zip;

  /// Phone number with country and area code.
  final String phone;

  /// Email address of the recipient.
  final String email;

  /// Tax identification number, if required.
  final String taxNumber;

  Address({
    required this.name,
    required this.company,
    required this.address1,
    required this.address2,
    required this.city,
    required this.stateCode,
    required this.stateName,
    required this.countryCode,
    required this.countryName,
    required this.zip,
    required this.phone,
    required this.email,
    required this.taxNumber,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}


@JsonSerializable()
class FileOption {
  final String id;
  final String value;

  FileOption({required this.id, required this.value});

  factory FileOption.fromJson(Map<String, dynamic> json) =>
      _$FileOptionFromJson(json);

  Map<String, dynamic> toJson() => _$FileOptionToJson(this);
}

@JsonSerializable()
class ItemOption {
  final String id;
  final String value;

  ItemOption({required this.id, required this.value});

  factory ItemOption.fromJson(Map<String, dynamic> json) =>
      _$ItemOptionFromJson(json);

  Map<String, dynamic> toJson() => _$ItemOptionToJson(this);
}

@JsonSerializable()
class OrderRetailCosts {
  final String currency;
  final String? subtotal;
  final String? discount;
  final String? shipping;
  final String? tax;

  OrderRetailCosts({
    required this.currency,
    this.subtotal,
    this.discount,
    this.shipping,
    this.tax,
  });

  factory OrderRetailCosts.fromJson(Map<String, dynamic> json) =>
      _$OrderRetailCostsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRetailCostsToJson(this);
}

@JsonSerializable()
class OrderGift {
  final String? subject;
  final String? message;

  OrderGift({this.subject, this.message});

  factory OrderGift.fromJson(Map<String, dynamic> json) =>
      _$OrderGiftFromJson(json);

  Map<String, dynamic> toJson() => _$OrderGiftToJson(this);
}

@JsonSerializable()
class PackingSlip {
  final String email; // required
  final String? phone;
  final String? message;
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @JsonKey(name: 'store_name')
  final String? storeName;
  @JsonKey(name: 'custom_order_id')
  final String? customOrderId;

  PackingSlip({
    required this.email,
    this.phone,
    this.message,
    this.logoUrl,
    this.storeName,
    this.customOrderId,
  });

  factory PackingSlip.fromJson(Map<String, dynamic> json) =>
      _$PackingSlipFromJson(json);

  Map<String, dynamic> toJson() => _$PackingSlipToJson(this);
}


