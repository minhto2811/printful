// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) =>
    RefreshTokenRequest(
      grantType: json['grant_type'] as String? ?? 'refresh_token',
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$RefreshTokenRequestToJson(
  RefreshTokenRequest instance,
) => <String, dynamic>{
  'grant_type': instance.grantType,
  'client_id': instance.clientId,
  'client_secret': instance.clientSecret,
  'refresh_token': instance.refreshToken,
};
