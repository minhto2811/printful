// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerationTask _$GenerationTaskFromJson(
  Map<String, dynamic> json,
) => GenerationTask(
  taskKey: json['task_key'] as String,
  status: $enumDecode(_$StatusEnumMap, json['status']),
  error: json['error'] as String?,
  mockups:
      (json['mockups'] as List<dynamic>?)
          ?.map((e) => GenerationTaskMockup.fromJson(e as Map<String, dynamic>))
          .toList(),
  printfiles:
      (json['printfiles'] as List<dynamic>?)
          ?.map(
            (e) =>
                GenerationTaskTemplateFile.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$GenerationTaskToJson(GenerationTask instance) =>
    <String, dynamic>{
      'task_key': instance.taskKey,
      'status': _$StatusEnumMap[instance.status]!,
      'error': instance.error,
      'mockups': instance.mockups,
      'printfiles': instance.printfiles,
    };

const _$StatusEnumMap = {
  Status.pending: 'pending',
  Status.completed: 'completed',
  Status.failed: 'failed',
};

GenerationTaskMockup _$GenerationTaskMockupFromJson(
  Map<String, dynamic> json,
) => GenerationTaskMockup(
  placement: json['placement'] as String,
  displayName: json['display_name'] as String,
  variantIds:
      (json['variant_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  extra:
      (json['extra'] as List<dynamic>?)
          ?.map(
            (e) =>
                GenerationTaskExtraMockup.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$GenerationTaskMockupToJson(
  GenerationTaskMockup instance,
) => <String, dynamic>{
  'placement': instance.placement,
  'display_name': instance.displayName,
  'variant_ids': instance.variantIds,
  'extra': instance.extra,
};

GenerationTaskExtraMockup _$GenerationTaskExtraMockupFromJson(
  Map<String, dynamic> json,
) => GenerationTaskExtraMockup(
  title: json['title'] as String,
  url: json['url'] as String,
  option: json['option'] as String,
  optionGroup: json['option_group'] as String,
);

Map<String, dynamic> _$GenerationTaskExtraMockupToJson(
  GenerationTaskExtraMockup instance,
) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'option': instance.option,
  'option_group': instance.optionGroup,
};

GenerationTaskTemplateFile _$GenerationTaskTemplateFileFromJson(
  Map<String, dynamic> json,
) => GenerationTaskTemplateFile(
  variantIds:
      (json['variant_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
  placement: json['placement'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$GenerationTaskTemplateFileToJson(
  GenerationTaskTemplateFile instance,
) => <String, dynamic>{
  'variant_ids': instance.variantIds,
  'placement': instance.placement,
  'url': instance.url,
};
