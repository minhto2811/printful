// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreSummary _$StoreSummaryFromJson(Map<String, dynamic> json) => StoreSummary(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$StoreSummaryToJson(StoreSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
    };
