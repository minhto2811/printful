import 'package:json_annotation/json_annotation.dart';
part 'placement.g.dart';
@JsonSerializable()
class Placement {
  final String placement;
  @JsonKey(name: 'display_name')
  final String displayName;
  @JsonKey(name: 'technique_key')
  final String techniqueKey;
  @JsonKey(name: 'technique_display_name')
  final int techniqueDisplayName;

  Placement({
    required this.placement,
    required this.displayName,
    required this.techniqueKey,
    required this.techniqueDisplayName,
  });

  factory Placement.fromJson(Map<String, dynamic> json) =>
      _$PlacementFromJson(json);

  Map<String, dynamic> toJson() => _$PlacementToJson(this);
}
