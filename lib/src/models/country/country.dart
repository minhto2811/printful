
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  /// 2-letter ISO country code (Required).
  /// Example: "US", "VN", "CA".
  @JsonKey(name: 'code')
  final String code;

  /// Full country name (Required).
  /// Example: "United States", "Vietnam", "Canada".
  @JsonKey(name: 'name')
  final String name;

  /// List of available states or provinces for this country (Optional).
  /// If the country does not have subdivisions or the API does not return them, this can be null or empty.
  @JsonKey(name: 'states')
  final List<StateInfo>? states;

  Country({
    required this.code,
    required this.name,
    this.states,
  });

  /// Create a Country object from JSON.
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  /// Convert a Country object to JSON.
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class StateInfo {
  /// State or province code (Required).
  /// Example: "CA" for California, "HCM" for Ho Chi Minh City.
  @JsonKey(name: 'code')
  final String code;

  /// Full name of the state or province (Required).
  /// Example: "California", "Ho Chi Minh City".
  @JsonKey(name: 'name')
  final String name;

  StateInfo({
    required this.code,
    required this.name,
  });

  /// Create a StateInfo object from JSON.
  factory StateInfo.fromJson(Map<String, dynamic> json) =>
      _$StateInfoFromJson(json);

  /// Convert a StateInfo object to JSON.
  Map<String, dynamic> toJson() => _$StateInfoToJson(this);
}
