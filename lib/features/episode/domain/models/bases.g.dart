// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bases _$BasesFromJson(Map<String, dynamic> json) => _Bases(
  baseCharacters: (json['base_characters'] as List<dynamic>)
      .map((e) => Character.fromJson(e as Map<String, dynamic>))
      .toList(),
  baseClues: (json['base_clues'] as List<dynamic>)
      .map((e) => Clue.fromJson(e as Map<String, dynamic>))
      .toList(),
  baseEnigmas: (json['base_enigmas'] as List<dynamic>)
      .map((e) => Enigma.fromJson(e as Map<String, dynamic>))
      .toList(),
  baseLocations: (json['base_locations'] as List<dynamic>)
      .map((e) => GameLocation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BasesToJson(_Bases instance) => <String, dynamic>{
  'base_characters': instance.baseCharacters,
  'base_clues': instance.baseClues,
  'base_enigmas': instance.baseEnigmas,
  'base_locations': instance.baseLocations,
};
