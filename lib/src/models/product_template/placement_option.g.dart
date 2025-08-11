// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacementOption _$PlacementOptionFromJson(Map<String, dynamic> json) =>
    PlacementOption(
      id: json['id'] as String,
      options:
          (json['options'] as List<dynamic>)
              .map((e) => POptions.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PlacementOptionToJson(PlacementOption instance) =>
    <String, dynamic>{'id': instance.id, 'options': instance.options};

POptions _$POptionsFromJson(Map<String, dynamic> json) =>
    POptions(id: json['id'] as String, value: json['value']);

Map<String, dynamic> _$POptionsToJson(POptions instance) => <String, dynamic>{
  'id': instance.id,
  'value': instance.value,
};
