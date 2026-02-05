// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwitchItem _$SwitchItemFromJson(Map<String, dynamic> json) => _SwitchItem(
  id: (json['id'] as num).toInt(),
  groupName: json['group_name'] as String,
  idCharacter: (json['id_character'] as num).toInt(),
  idGroupItem: (json['id_group_item'] as num).toInt(),
  idNewDialog: (json['id_new_dialog'] as num).toInt(),
);

Map<String, dynamic> _$SwitchItemToJson(_SwitchItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_name': instance.groupName,
      'id_character': instance.idCharacter,
      'id_group_item': instance.idGroupItem,
      'id_new_dialog': instance.idNewDialog,
    };

_Switches _$SwitchesFromJson(Map<String, dynamic> json) => _Switches(
  switchesCharacters: (json['switches_characters'] as List<dynamic>)
      .map((e) => SwitchItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  switchClues: (json['switch_clues'] as List<dynamic>)
      .map((e) => SwitchItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  switchEnigmas: (json['switch_enigmas'] as List<dynamic>)
      .map((e) => SwitchItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  switchLocations: (json['switch_locations'] as List<dynamic>)
      .map((e) => SwitchItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SwitchesToJson(_Switches instance) => <String, dynamic>{
  'switches_characters': instance.switchesCharacters,
  'switch_clues': instance.switchClues,
  'switch_enigmas': instance.switchEnigmas,
  'switch_locations': instance.switchLocations,
};
