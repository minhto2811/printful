// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Color _$ColorFromJson(Map<String, dynamic> json) => Color(
  colorName: json['color_name'] as String,
  colorCode:
      (json['color_code'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
);

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
  'color_name': instance.colorName,
  'color_code': instance.colorCode,
};
