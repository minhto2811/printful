// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantInfo _$VariantInfoFromJson(Map<String, dynamic> json) => VariantInfo(
  variant: Variant.fromJson(json['variant'] as Map<String, dynamic>),
  product: Product.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VariantInfoToJson(VariantInfo instance) =>
    <String, dynamic>{'variant': instance.variant, 'product': instance.product};

Variant _$VariantFromJson(Map<String, dynamic> json) => Variant(
  id: (json['id'] as num).toInt(),
  productId: (json['product_id'] as num).toInt(),
  name: json['name'] as String,
  size: json['size'] as String,
  color: json['color'] as String,
  colorCode: json['color_code'] as String,
  colorCode2: json['color_code2'] as String?,
  image: json['image'] as String,
  price: json['price'] as String,
  inStock: json['in_stock'] as bool,
  availabilityRegions: json['availability_regions'] as Map<String, dynamic>?,
  availabilityStatus:
      (json['availability_status'] as List<dynamic>)
          .map((e) => AvailabilityStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
  material:
      (json['material'] as List<dynamic>)
          .map((e) => Material.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$VariantToJson(Variant instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'name': instance.name,
  'size': instance.size,
  'color': instance.color,
  'color_code': instance.colorCode,
  'color_code2': instance.colorCode2,
  'image': instance.image,
  'price': instance.price,
  'in_stock': instance.inStock,
  'availability_regions': instance.availabilityRegions,
  'availability_status': instance.availabilityStatus,
  'material': instance.material,
};

AvailabilityStatus _$AvailabilityStatusFromJson(Map<String, dynamic> json) =>
    AvailabilityStatus(
      region: json['region'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$AvailabilityStatusToJson(AvailabilityStatus instance) =>
    <String, dynamic>{'region': instance.region, 'status': instance.status};

Material _$MaterialFromJson(Map<String, dynamic> json) => Material(
  name: json['name'] as String,
  percentage: json['percentage'] as num,
);

Map<String, dynamic> _$MaterialToJson(Material instance) => <String, dynamic>{
  'name': instance.name,
  'percentage': instance.percentage,
};
