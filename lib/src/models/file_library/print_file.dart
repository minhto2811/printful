import 'package:json_annotation/json_annotation.dart';
import 'package:printful/printful.dart';

part 'print_file.g.dart';

@JsonSerializable()
class PrintFile {
  /// Role of the file
  final String? type;

  /// File ID
  final int? id;

  /// Source URL where the file is downloaded from
  /// Required field
  final String url;

  /// Array of additional options for this file
  final List<FileOption>? options;

  /// MD5 checksum of the file
  final String? hash;

  /// File name
  final String? filename;

  /// MIME type of the file
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  /// Size in bytes
  final int? size;

  /// Width in pixels
  final int? width;

  /// Height in pixels
  final int? height;

  /// Resolution DPI
  final int? dpi;

  /// File processing status:
  /// - ok: processed successfully
  /// - waiting: being processed
  /// - failed: processing failed
  final String? status;

  /// File creation timestamp
  final int? created;

  /// Small thumbnail URL
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;

  /// Medium preview image URL
  @JsonKey(name: 'preview_url')
  final String? previewUrl;

  /// Show file in the Printfile Library (default true)
  final bool? visible;

  /// Whether it is a temporary printfile
  @JsonKey(name: 'is_temporary')
  final bool? isTemporary;

  PrintFile({
    this.type,
    this.id,
    required this.url,
    this.options,
    this.hash,
    this.filename,
    this.mimeType,
    this.size,
    this.width,
    this.height,
    this.dpi,
    this.status,
    this.created,
    this.thumbnailUrl,
    this.previewUrl,
    this.visible,
    this.isTemporary,
  });

  factory PrintFile.fromJson(Map<String, dynamic> json) =>
      _$PrintFileFromJson(json);

  Map<String, dynamic> toJson() => _$PrintFileToJson(this);
}
