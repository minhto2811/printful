// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationCodeRequest _$AuthorizationCodeRequestFromJson(
  Map<String, dynamic> json,
) => AuthorizationCodeRequest(
  clientId: json['client_id'] as String,
  clientSecret: json['client_secret'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$AuthorizationCodeRequestToJson(
  AuthorizationCodeRequest instance,
) => <String, dynamic>{
  'client_id': instance.clientId,
  'client_secret': instance.clientSecret,
  'code': instance.code,
};
