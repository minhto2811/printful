import 'package:json_annotation/json_annotation.dart';

part 'store_detail.g.dart';

@JsonSerializable()
class StoreDetail {
  /// Store ID
  final int id;

  /// Store type
  final String type;

  /// Store name
  final String name;

  /// Store address
  final String? address;

  /// Store phone number
  final String? phone;

  /// Store email
  final String? email;

  /// Store description
  final String? description;

  StoreDetail({
    required this.id,
    required this.type,
    required this.name,
    this.address,
    this.phone,
    this.email,
    this.description,
  });

  factory StoreDetail.fromJson(Map<String, dynamic> json) => _$StoreDetailFromJson(json);
  Map<String, dynamic> toJson() => _$StoreDetailToJson(this);
}
