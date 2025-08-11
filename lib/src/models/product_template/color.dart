import 'package:json_annotation/json_annotation.dart';

part 'color.g.dart';

@JsonSerializable()
class Color {
  @JsonKey(name: 'color_name')
  final String colorName;
  @JsonKey(name: 'color_code')
  final List<List<String>> colorCode;

  Color({required this.colorName, required this.colorCode});

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);

  Map<String, dynamic> toJson() => _$ColorToJson(this);
}
