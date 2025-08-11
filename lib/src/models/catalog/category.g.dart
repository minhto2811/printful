// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: (json['id'] as num).toInt(),
  parentId: (json['parent_id'] as num).toInt(),
  imageUrl: json['image_url'] as String,
  size: json['size'] as String,
  title: json['title'] as String,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'parent_id': instance.parentId,
  'image_url': instance.imageUrl,
  'size': instance.size,
  'title': instance.title,
};
