// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_print_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierPrintFile _$ModifierPrintFileFromJson(Map<String, dynamic> json) =>
    ModifierPrintFile(
      type: json['type'] as String?,
      url: json['url'] as String,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => FileOption.fromJson(e as Map<String, dynamic>))
              .toList(),
      filename: json['filename'] as String?,
      visible: json['visible'] as bool?,
    );

Map<String, dynamic> _$ModifierPrintFileToJson(ModifierPrintFile instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'options': instance.options,
      'filename': instance.filename,
      'visible': instance.visible,
    };
