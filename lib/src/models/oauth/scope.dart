import 'package:json_annotation/json_annotation.dart';

part 'scope.g.dart';

@JsonSerializable()
class Scope {
  final String scope;
  @JsonKey(name: 'display_name')
  final String displayName;

  Scope({required this.scope, required this.displayName});

  factory Scope.fromJson(Map<String, dynamic> json) => _$ScopeFromJson(json);

  Map<String, dynamic> toJson() => _$ScopeToJson(this);
}
