
import 'package:json_annotation/json_annotation.dart';
import 'package:printful/printful.dart';

part 'modifier_print_file.g.dart';


/// Model representing a file used in a modification request.
/// Used with Retrofit and json_serializable.
@JsonSerializable()
class ModifierPrintFile {
  /// Role of the file
  final String? type;

  /// Source URL where the file is downloaded from.
  /// This field is required by the API.
  final String url;

  /// Array of additional options for this file
  final List<FileOption>? options;

  /// File name
  final String? filename;

  /// Whether to show the file in the Printfile Library (default: true)
  final bool? visible;

  ModifierPrintFile({
    this.type,
    required this.url,
    this.options,
    this.filename,
    this.visible,
  });

  /// Creates an instance from a JSON map
  factory ModifierPrintFile.fromJson(Map<String, dynamic> json) =>
      _$ModifierPrintFileFromJson(json);

  /// Converts the instance to a JSON map
  Map<String, dynamic> toJson() => _$ModifierPrintFileToJson(this);
}
