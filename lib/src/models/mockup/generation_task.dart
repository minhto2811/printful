import 'package:json_annotation/json_annotation.dart';

part 'generation_task.g.dart';

/// Represents a generation task that produces mockups and printfiles.
/// Used to track the status of mockup/printfile generation.
@JsonSerializable()
class GenerationTask {
  /// Unique task identifier used to retrieve generated mockups.
  @JsonKey(name: 'task_key')
  final String taskKey;

  /// Status of the generation task.
  /// Possible values: "pending", "completed", "failed".
  @JsonKey(name: 'status')
  final Status status;

  /// If the task has failed, this field contains the reason.
  @JsonKey(name: 'error')
  final String? error;

  /// List of generated mockups (only available if task is completed).
  @JsonKey(name: 'mockups')
  final List<GenerationTaskMockup>? mockups;

  /// List of generated printfiles (only available if task is completed).
  @JsonKey(name: 'printfiles')
  final List<GenerationTaskTemplateFile>? printfiles;

  GenerationTask({
    required this.taskKey,
    required this.status,
    this.error,
    this.mockups,
    this.printfiles,
  });

  /// Creates an instance from a JSON map (API response).
  factory GenerationTask.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskFromJson(json);

  /// Converts the instance to JSON (API request).
  Map<String, dynamic> toJson() => _$GenerationTaskToJson(this);
}

@JsonEnum()
enum Status {
  @JsonValue('pending')
  pending,
  @JsonValue('completed')
  completed,
  @JsonValue('failed')
  failed,
}

/// Represents a mockup used in a generation task.
/// Contains placement info, display name, variant IDs, and optional extra mockups.
@JsonSerializable()
class GenerationTaskMockup {
  /// Placement identifier (e.g., "front", "back", "sleeve").
  @JsonKey(name: 'placement')
  final String placement;

  /// A display name that can be shown to end customers.
  @JsonKey(name: 'display_name')
  final String displayName;

  /// List of variant IDs this mockup applies to.
  /// A single mockup can be linked to multiple variants.
  @JsonKey(name: 'variant_ids')
  final List<int> variantIds;

  /// Optional extra mockups for this placement.
  @JsonKey(name: 'extra')
  final List<GenerationTaskExtraMockup>? extra;

  GenerationTaskMockup({
    required this.placement,
    required this.displayName,
    required this.variantIds,
    this.extra,
  });

  /// Creates an instance from a JSON map (API response).
  factory GenerationTaskMockup.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskMockupFromJson(json);

  /// Converts the instance to JSON (API request).
  Map<String, dynamic> toJson() => _$GenerationTaskMockupToJson(this);
}

@JsonSerializable()
class GenerationTaskExtraMockup {
  ///Display name of the extra mockup.
  final String title;

  ///Temporary URL of the mockup.
  final String url;

  ///Style option name
  final String option;

  ///Style option group name
  @JsonKey(name: 'option_group')
  final String optionGroup;

  GenerationTaskExtraMockup({
    required this.title,
    required this.url,
    required this.option,
    required this.optionGroup,
  });

  factory GenerationTaskExtraMockup.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskExtraMockupFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationTaskExtraMockupToJson(this);
}

/// Represents a template file used in a generation task.
/// Contains the variants it applies to, placement information,
/// and the URL where the file is stored.
@JsonSerializable()
class GenerationTaskTemplateFile {
  /// List of variant IDs associated with this printfile.
  @JsonKey(name: 'variant_ids')
  final List<int> variantIds;

  /// Placement identifier (e.g., "front", "back", "sleeve").
  @JsonKey(name: 'placement')
  final String placement;

  /// Public URL where the file is stored.
  @JsonKey(name: 'url')
  final String url;

  GenerationTaskTemplateFile({
    required this.variantIds,
    required this.placement,
    required this.url,
  });

  /// Creates an instance from a JSON map (API response).
  factory GenerationTaskTemplateFile.fromJson(Map<String, dynamic> json) =>
      _$GenerationTaskTemplateFileFromJson(json);

  /// Converts the instance to JSON (API request).
  Map<String, dynamic> toJson() => _$GenerationTaskTemplateFileToJson(this);
}
