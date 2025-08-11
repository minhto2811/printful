// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  code: json['code'] as String,
  name: json['name'] as String,
  states:
      (json['states'] as List<dynamic>?)
          ?.map((e) => StateInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'states': instance.states,
};

StateInfo _$StateInfoFromJson(Map<String, dynamic> json) =>
    StateInfo(code: json['code'] as String, name: json['name'] as String);

Map<String, dynamic> _$StateInfoToJson(StateInfo instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
};
