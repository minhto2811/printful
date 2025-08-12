import 'package:json_annotation/json_annotation.dart';

part 'authorization_code_request.g.dart';

@JsonSerializable()
class AuthorizationCodeRequest {
  @JsonKey(name: 'grant_type')
  final String grantType = 'authorization_code';

  @JsonKey(name: 'client_id')
  final String clientId;

  @JsonKey(name: 'client_secret')
  final String clientSecret;

  final String code;

  AuthorizationCodeRequest({
    required this.clientId,
    required this.clientSecret,
    required this.code,
  });

  factory AuthorizationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationCodeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorizationCodeRequestToJson(this);
}