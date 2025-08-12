// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    TokenResponse(
      accessToken: json['access_token'] as String,
      expiresAt: (json['expires_at'] as num).toInt(),
      tokenType: json['token_type'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_at': instance.expiresAt,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
    };
