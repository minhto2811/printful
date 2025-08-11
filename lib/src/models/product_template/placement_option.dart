import 'package:json_annotation/json_annotation.dart';
part 'placement_option.g.dart';
@JsonSerializable()
class PlacementOption {
  final String id;
  final List<POptions> options;

  PlacementOption({required this.id, required this.options});

  factory PlacementOption.fromJson(Map<String, dynamic> json) =>
      _$PlacementOptionFromJson(json);

  Map<String, dynamic> toJson() => _$PlacementOptionToJson(this);
}

@JsonSerializable()
class POptions {
  final String id;
  final dynamic value;

  POptions({required this.id, required this.value});

  factory POptions.fromJson(Map<String, dynamic> json) =>
      _$POptionsFromJson(json);

  Map<String, dynamic> toJson() => _$POptionsToJson(this);
}
