import 'package:json_annotation/json_annotation.dart';

part 'file_url.g.dart';

@JsonSerializable()
class FileUrl {
  @JsonKey(name: 'file_url')
  final String fileUrl;

  FileUrl({required this.fileUrl});

  factory FileUrl.fromJson(Map<String, dynamic> json) =>
      _$FileUrlFromJson(json);

  Map<String, dynamic> toJson() => _$FileUrlToJson(this);
}
