// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlocked_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnlockedItems _$UnlockedItemsFromJson(Map<String, dynamic> json) =>
    _UnlockedItems(
      characters:
          (json['characters'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      clues:
          (json['clues'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      enigmas:
          (json['enigmas'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      locations:
          (json['locations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableLocations:
          (json['availableLocations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UnlockedItemsToJson(_UnlockedItems instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'clues': instance.clues,
      'enigmas': instance.enigmas,
      'locations': instance.locations,
      'availableLocations': instance.availableLocations,
    };
