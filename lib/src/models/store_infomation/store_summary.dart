import 'package:json_annotation/json_annotation.dart';

part 'store_summary.g.dart';

@JsonSerializable()
class StoreSummary {
  final int id;
  final String type;
  final String name;

  StoreSummary({
    required this.id,
    required this.type,
    required this.name,
  });

  factory StoreSummary.fromJson(Map<String, dynamic> json) => _$StoreSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$StoreSummaryToJson(this);
}
