import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshTokenRequest {
  @JsonKey(name: 'grant_type')
  final String grantType = 'refresh_token';

  @JsonKey(name: 'client_id')
  final String clientId;

  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  RefreshTokenRequest({
    required this.clientId,
    required this.clientSecret,
    required this.refreshToken,
  });

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}
