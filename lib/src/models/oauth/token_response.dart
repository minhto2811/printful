import 'package:json_annotation/json_annotation.dart';

part 'token_response.g.dart';

@JsonSerializable()
class TokenResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'expires_at')
  final String expiresAt;

  @JsonKey(name: 'token_type')
  final String tokenType;

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  TokenResponse({
    required this.accessToken,
    required this.expiresAt,
    required this.tokenType,
    required this.refreshToken,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}
