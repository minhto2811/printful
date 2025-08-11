
import 'package:json_annotation/json_annotation.dart';

part 'modifier_shipping.g.dart';

@JsonSerializable()
class ModifierShipping {
  /// Recipient location information
  /// (Required) Contains shipping address details.
  final AddressInfo recipient;

  /// Array of order items
  /// (Required) List of products with quantity, variants, etc.
  final List<ItemInfo> items;

  /// 3-letter currency code (optional).
  /// Required only if rates should be converted to a currency
  /// other than the store's default currency.
  final String? currency;

  /// Locale in which shipping rate names will be returned.
  /// Available values: "en_US" (default), "es_ES".
  final String? locale;

  ModifierShipping({
    required this.recipient,
    required this.items,
    this.currency,
    this.locale,
  });

  /// Create a [ModifierShipping] object from JSON.
  factory ModifierShipping.fromJson(Map<String, dynamic> json) =>
      _$ModifierShippingFromJson(json);

  /// Convert a [ModifierShipping] object to JSON.
  Map<String, dynamic> toJson() => _$ModifierShippingToJson(this);
}

@JsonSerializable()
class AddressInfo {
  /// Address line 1 (Required).
  /// Street address, building number, etc.
  final String address1;

  /// City name (Required).
  final String city;

  /// Country code (Required).
  /// Must be a valid 2-letter ISO country code, e.g., "US", "VN".
  @JsonKey(name: 'country_code')
  final String countryCode;

  /// State code (Optional).
  /// Required for United States, Australia, and Canada.
  @JsonKey(name: 'state_code')
  final String? stateCode;

  /// ZIP or postal code (Optional).
  /// Required for some countries to calculate expedited shipping rates.
  final String? zip;

  /// Phone number (Optional).
  /// Used if needed for delivery contact.
  final String? phone;

  AddressInfo({
    required this.address1,
    required this.city,
    required this.countryCode,
    this.stateCode,
    this.zip,
    this.phone,
  });

  /// Create an AddressInfo object from JSON.
  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);

  /// Convert an AddressInfo object to JSON.
  Map<String, dynamic> toJson() => _$AddressInfoToJson(this);
}


@JsonSerializable()
class ItemInfo {
  /// Product variant ID (Required).
  /// This is the unique ID for the specific product/variant in Printful's catalog.
  @JsonKey(name: 'variant_id')
  final int variantId;

  /// Quantity of the product (Required).
  /// Must be a positive integer.
  final int quantity;

  /// Name or description of the item (Optional).
  /// This is for informational purposes only.
  final String? name;

  /// Retail price of the item (Optional).
  /// Used if you want to set or override the price for calculations.
  @JsonKey(name: 'retail_price')
  final String? retailPrice;

  /// External product ID (Optional).
  /// Can be used to reference your own product identifiers.
  @JsonKey(name: 'external_id')
  final String? externalId;

  ItemInfo({
    required this.variantId,
    required this.quantity,
    this.name,
    this.retailPrice,
    this.externalId,
  });

  /// Create an ItemInfo object from JSON.
  factory ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoFromJson(json);

  /// Convert an ItemInfo object to JSON.
  Map<String, dynamic> toJson() => _$ItemInfoToJson(this);
}
