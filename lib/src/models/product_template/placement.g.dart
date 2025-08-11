// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Placement _$PlacementFromJson(Map<String, dynamic> json) => Placement(
  placement: json['placement'] as String,
  displayName: json['display_name'] as String,
  techniqueKey: json['technique_key'] as String,
  techniqueDisplayName: (json['technique_display_name'] as num).toInt(),
);

Map<String, dynamic> _$PlacementToJson(Placement instance) => <String, dynamic>{
  'placement': instance.placement,
  'display_name': instance.displayName,
  'technique_key': instance.techniqueKey,
  'technique_display_name': instance.techniqueDisplayName,
};
