import 'package:json_annotation/json_annotation.dart';

part 'shipping_info.g.dart';

@JsonSerializable()
class ShippingInfo {
  /// Shipping method ID
  final String id;

  /// Shipping method name
  final String name;

  /// Shipping rate (as string, e.g. "5.99")
  final String rate;

  /// Currency code in which the rate is returned (e.g. "USD")
  final String currency;

  /// Estimated minimum delivery days.
  /// May be null if the API doesn't return it.
  final int? minDeliveryDays;

  /// Estimated maximum delivery days.
  /// May be null if the API doesn't return it.
  final int? maxDeliveryDays;

  /// Estimated minimum delivery date (timestamp).
  /// May be null if the API doesn't return it.
  final String? minDeliveryDate;

  /// Estimated maximum delivery date (timestamp).
  /// May be null if the API doesn't return it.
  final String? maxDeliveryDate;

  ShippingInfo({
    required this.id,
    required this.name,
    required this.rate,
    required this.currency,
    this.minDeliveryDays,
    this.maxDeliveryDays,
    this.minDeliveryDate,
    this.maxDeliveryDate,
  });

  /// Create a [ShippingInfo] object from JSON
  factory ShippingInfo.fromJson(Map<String, dynamic> json) =>
      _$ShippingInfoFromJson(json);

  /// Convert a [ShippingInfo] object to JSON
  Map<String, dynamic> toJson() => _$ShippingInfoToJson(this);
}
