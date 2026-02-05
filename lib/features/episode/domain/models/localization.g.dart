// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Localization _$LocalizationFromJson(Map<String, dynamic> json) =>
    _Localization(
      city: json['city'] as String,
      region: json['region'] as String?,
      country: json['country'] as String,
      countryCode: json['countryCode'] as String,
      centerLatitude: (json['centerLatitude'] as num).toDouble(),
      centerLongitude: (json['centerLongitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LocalizationToJson(_Localization instance) =>
    <String, dynamic>{
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'centerLatitude': instance.centerLatitude,
      'centerLongitude': instance.centerLongitude,
    };
