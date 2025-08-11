import 'package:json_annotation/json_annotation.dart';

part 'order_estimate.g.dart';

@JsonSerializable()
class  OrderEstimate {

  ///Order costs (Printful prices)
  final OrderEstimateCosts cost;

  /// Retail costs that are to be displayed on the packing slip for
  /// international shipments. Retail costs are used only if every
  /// item in order contains the retail_price attribute.
  @JsonKey(name: 'retail_costs')
  final OrderEstimateRetailCosts retailCosts;

  OrderEstimate({
    required this.cost,
    required this.retailCosts,
  });

  factory OrderEstimate.fromJson(Map<String, dynamic> json) => _$OrderEstimateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderEstimateToJson(this);

}


@JsonSerializable()
class OrderEstimateCosts {
  /// 3-letter currency code (e.g., USD, EUR, VND)
  final String currency;

  /// Total cost of all items
  final double subtotal;

  /// Total discount amount
  final double discount;

  /// Shipping costs
  final double shipping;

  /// Digitization costs
  final String digitization;

  /// Additional fee for a custom product
  @JsonKey(name: 'additional_fee')
  final double additionalFee;

  /// Fulfillment fee for a custom product
  @JsonKey(name: 'fulfillment_fee')
  final double fulfillmentFee;

  /// Sum of taxes (not included in the item price)
  final double tax;

  /// Sum of VAT (not included in the item price)
  final double vat;

  /// Grand total (subtotal - discount + tax + vat + shipping + other fees)
  final double total;

  OrderEstimateCosts({
    required this.currency,
    required this.subtotal,
    required this.discount,
    required this.shipping,
    required this.digitization,
    required this.additionalFee,
    required this.fulfillmentFee,
    required this.tax,
    required this.vat,
    required this.total,
  });

  /// Creates an instance from a JSON map
  factory OrderEstimateCosts.fromJson(Map<String, dynamic> json) =>
      _$OrderEstimateCostsFromJson(json);

  /// Converts the instance to a JSON map
  Map<String, dynamic> toJson() => _$OrderEstimateCostsToJson(this);
}

@JsonSerializable()
class OrderEstimateRetailCosts {
  /// 3-letter currency code (e.g., USD, EUR, VND)
  final String currency;

  /// Total cost of all items
  final double? subtotal;

  /// Total discount amount
  final double? discount;

  /// Shipping costs
  final double? shipping;

  /// Sum of taxes (not included in the item price)
  final double? tax;

  /// Sum of VAT (not included in the item price)
  final double? vat;

  /// Grand total (subtotal - discount + tax + vat + shipping)
  final double? total;

  OrderEstimateRetailCosts({
    required this.currency,
    this.subtotal,
    this.discount,
    this.shipping,
    this.tax,
    this.vat,
    this.total,
  });

  /// Creates an instance from a JSON map
  factory OrderEstimateRetailCosts.fromJson(Map<String, dynamic> json) =>
      _$OrderEstimateRetailCostsFromJson(json);

  /// Converts the instance to a JSON map
  Map<String, dynamic> toJson() => _$OrderEstimateRetailCostsToJson(this);
}
