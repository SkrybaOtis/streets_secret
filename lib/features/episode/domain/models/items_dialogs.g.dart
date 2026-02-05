// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_dialogs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemDialog _$ItemDialogFromJson(Map<String, dynamic> json) => _ItemDialog(
  id: (json['id'] as num).toInt(),
  content: json['content'] as String,
  characters: (json['characters'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  clues: (json['clues'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  enigmas: (json['enigmas'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  locations: (json['locations'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  switchId: (json['switch'] as num?)?.toInt(),
);

Map<String, dynamic> _$ItemDialogToJson(_ItemDialog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'characters': instance.characters,
      'clues': instance.clues,
      'enigmas': instance.enigmas,
      'locations': instance.locations,
      'switch': instance.switchId,
    };

_ItemsDialogs _$ItemsDialogsFromJson(Map<String, dynamic> json) =>
    _ItemsDialogs(
      itemsDialogsCharacters:
          (json['items_dialogs_characters'] as List<dynamic>)
              .map((e) => ItemDialog.fromJson(e as Map<String, dynamic>))
              .toList(),
      itemsDialogsClues: (json['items_dialogs_clues'] as List<dynamic>)
          .map((e) => ItemDialog.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsDialogsEnigmas: (json['items_dialogs_enigmas'] as List<dynamic>)
          .map((e) => ItemDialog.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsDialogsLocations: (json['items_dialogs_locations'] as List<dynamic>)
          .map((e) => ItemDialog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemsDialogsToJson(_ItemsDialogs instance) =>
    <String, dynamic>{
      'items_dialogs_characters': instance.itemsDialogsCharacters,
      'items_dialogs_clues': instance.itemsDialogsClues,
      'items_dialogs_enigmas': instance.itemsDialogsEnigmas,
      'items_dialogs_locations': instance.itemsDialogsLocations,
    };
