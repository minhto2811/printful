// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'print_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrintFile _$PrintFileFromJson(Map<String, dynamic> json) => PrintFile(
  type: json['type'] as String?,
  id: (json['id'] as num?)?.toInt(),
  url: json['url'] as String,
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => FileOption.fromJson(e as Map<String, dynamic>))
          .toList(),
  hash: json['hash'] as String?,
  filename: json['filename'] as String?,
  mimeType: json['mime_type'] as String?,
  size: (json['size'] as num?)?.toInt(),
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  dpi: (json['dpi'] as num?)?.toInt(),
  status: json['status'] as String?,
  created: (json['created'] as num?)?.toInt(),
  thumbnailUrl: json['thumbnail_url'] as String?,
  previewUrl: json['preview_url'] as String?,
  visible: json['visible'] as bool?,
  isTemporary: json['is_temporary'] as bool?,
);

Map<String, dynamic> _$PrintFileToJson(PrintFile instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'url': instance.url,
  'options': instance.options,
  'hash': instance.hash,
  'filename': instance.filename,
  'mime_type': instance.mimeType,
  'size': instance.size,
  'width': instance.width,
  'height': instance.height,
  'dpi': instance.dpi,
  'status': instance.status,
  'created': instance.created,
  'thumbnail_url': instance.thumbnailUrl,
  'preview_url': instance.previewUrl,
  'visible': instance.visible,
  'is_temporary': instance.isTemporary,
};
