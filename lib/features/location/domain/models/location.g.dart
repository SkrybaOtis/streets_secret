// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameLocation _$GameLocationFromJson(Map<String, dynamic> json) =>
    _GameLocation(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      characters:
          (json['characters'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      imageUrl: json['image_url'] as String?,
      qrDecoded: json['qr_decoded'] as String?,
    );

Map<String, dynamic> _$GameLocationToJson(_GameLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'characters': instance.characters,
      'image_url': instance.imageUrl,
      'qr_decoded': instance.qrDecoded,
    };
