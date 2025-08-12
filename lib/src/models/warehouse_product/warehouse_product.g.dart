// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarehouseProduct _$WarehouseProductFromJson(Map<String, dynamic> json) =>
    WarehouseProduct(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      currency: json['currency'] as String,
      imageUrl: json['image_url'] as String,
      retailPrice: (json['retail_price'] as num).toDouble(),
      variants:
          (json['variants'] as List<dynamic>)
              .map(
                (e) =>
                    WarehouseProductVariant.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$WarehouseProductToJson(WarehouseProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'currency': instance.currency,
      'image_url': instance.imageUrl,
      'retail_price': instance.retailPrice,
      'variants': instance.variants,
    };

WarehouseProductVariant _$WarehouseProductVariantFromJson(
  Map<String, dynamic> json,
) => WarehouseProductVariant(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  sku: json['sku'] as String,
  imageUrl: json['image_url'] as String,
  retailPrice: (json['retail_price'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  length: (json['length'] as num).toDouble(),
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
  stockLocations:
      (json['stock_locations'] as List<dynamic>)
          .map(
            (e) => WarehouseStockLocation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$WarehouseProductVariantToJson(
  WarehouseProductVariant instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sku': instance.sku,
  'image_url': instance.imageUrl,
  'retail_price': instance.retailPrice,
  'quantity': instance.quantity,
  'length': instance.length,
  'width': instance.width,
  'height': instance.height,
  'weight': instance.weight,
  'stock_locations': instance.stockLocations,
};

WarehouseStockLocation _$WarehouseStockLocationFromJson(
  Map<String, dynamic> json,
) => WarehouseStockLocation(
  facility: json['facility'] as String,
  stocked: (json['stocked'] as num).toInt(),
  available: (json['available'] as num).toInt(),
);

Map<String, dynamic> _$WarehouseStockLocationToJson(
  WarehouseStockLocation instance,
) => <String, dynamic>{
  'facility': instance.facility,
  'stocked': instance.stocked,
  'available': instance.available,
};
