import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  ///Category ID
  final int id;
  ///Parent category ID
  @JsonKey(name: 'parent_id')
  final int parentId;
  ///Category image URL
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// [size] = "small" "medium" "large"
  final String size;
  ///Category title
  final String title;

  Category({
    required this.id,
    required this.parentId,
    required this.imageUrl,
    required this.size,
    required this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
