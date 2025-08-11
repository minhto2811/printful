// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderEstimate _$OrderEstimateFromJson(Map<String, dynamic> json) =>
    OrderEstimate(
      cost: OrderEstimateCosts.fromJson(json['cost'] as Map<String, dynamic>),
      retailCosts: OrderEstimateRetailCosts.fromJson(
        json['retail_costs'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderEstimateToJson(OrderEstimate instance) =>
    <String, dynamic>{
      'cost': instance.cost,
      'retail_costs': instance.retailCosts,
    };

OrderEstimateCosts _$OrderEstimateCostsFromJson(Map<String, dynamic> json) =>
    OrderEstimateCosts(
      currency: json['currency'] as String,
      subtotal: (json['subtotal'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      shipping: (json['shipping'] as num).toDouble(),
      digitization: json['digitization'] as String,
      additionalFee: (json['additional_fee'] as num).toDouble(),
      fulfillmentFee: (json['fulfillment_fee'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      vat: (json['vat'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderEstimateCostsToJson(OrderEstimateCosts instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'subtotal': instance.subtotal,
      'discount': instance.discount,
      'shipping': instance.shipping,
      'digitization': instance.digitization,
      'additional_fee': instance.additionalFee,
      'fulfillment_fee': instance.fulfillmentFee,
      'tax': instance.tax,
      'vat': instance.vat,
      'total': instance.total,
    };

OrderEstimateRetailCosts _$OrderEstimateRetailCostsFromJson(
  Map<String, dynamic> json,
) => OrderEstimateRetailCosts(
  currency: json['currency'] as String,
  subtotal: (json['subtotal'] as num?)?.toDouble(),
  discount: (json['discount'] as num?)?.toDouble(),
  shipping: (json['shipping'] as num?)?.toDouble(),
  tax: (json['tax'] as num?)?.toDouble(),
  vat: (json['vat'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
);

Map<String, dynamic> _$OrderEstimateRetailCostsToJson(
  OrderEstimateRetailCosts instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'subtotal': instance.subtotal,
  'discount': instance.discount,
  'shipping': instance.shipping,
  'tax': instance.tax,
  'vat': instance.vat,
  'total': instance.total,
};
