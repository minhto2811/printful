import 'package:json_annotation/json_annotation.dart';

part 'printful_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PrintfulResponse<T> {
  final T result;
  final int code;
  final Paging? paging;
  final Error? error;

  PrintfulResponse({
    required this.result,
    required this.code,
    this.paging,
    this.error,
  });

  factory PrintfulResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PrintfulResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PrintfulResponseToJson(this, toJsonT);
}

@JsonSerializable()
class Paging {
  final int total;
  final int offset;
  final int limit;

  Paging({required this.total, required this.offset, required this.limit});

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);

  Map<String, dynamic> toJson() => _$PagingToJson(this);
}

@JsonSerializable()
class Error {
  final String reason;
  final String message;

  Error({required this.reason, required this.message});

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
