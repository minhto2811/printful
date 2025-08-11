// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printful_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrintfulResponse<T> _$PrintfulResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PrintfulResponse<T>(
  result: fromJsonT(json['result']),
  code: (json['code'] as num).toInt(),
  paging:
      json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
  error:
      json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PrintfulResponseToJson<T>(
  PrintfulResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'result': toJsonT(instance.result),
  'code': instance.code,
  'paging': instance.paging,
  'error': instance.error,
};

Paging _$PagingFromJson(Map<String, dynamic> json) => Paging(
  total: (json['total'] as num).toInt(),
  offset: (json['offset'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$PagingToJson(Paging instance) => <String, dynamic>{
  'total': instance.total,
  'offset': instance.offset,
  'limit': instance.limit,
};

Error _$ErrorFromJson(Map<String, dynamic> json) =>
    Error(reason: json['reason'] as String, message: json['message'] as String);

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
  'reason': instance.reason,
  'message': instance.message,
};
