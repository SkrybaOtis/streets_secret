import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/logger_utils.dart';

part 'switches.freezed.dart';
part 'switches.g.dart';

@freezed
sealed class SwitchItem with _$SwitchItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SwitchItem({
    required int id,
    required String groupName,
    required int idCharacter,
    required int idGroupItem,
    required int idNewDialog,
  }) = _SwitchItem;

  factory SwitchItem.fromJson(Map<String, dynamic> json) =>
      _$SwitchItemFromJson(json);
}

@freezed
sealed class Switches with _$Switches {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Switches({
    required List<SwitchItem> switchesCharacters,
    required List<SwitchItem> switchClues,
    required List<SwitchItem> switchEnigmas,
    required List<SwitchItem> switchLocations,
  }) = _Switches;

  factory Switches.fromJson(Map<String, dynamic> json) =>
      _$SwitchesFromJson(json);
  
  factory Switches.getSwitchesFromJson(Map<String, dynamic> json){
    // AppLogger.warning("Switches parsing started!!");
    Switches newSwitches = Switches(
      switchesCharacters: [], 
      switchClues: [], 
      switchEnigmas: [], 
      switchLocations: []
    );

    try{
      List<SwitchItem> newSwitchesCharacters = [];
      List<SwitchItem> newSwitchClues = [];
      List<SwitchItem> newSwitchEnigmas = [];
      List<SwitchItem> newSwitchLocations = [];

      for(var switchitem in json['switches_characters']){
          newSwitchesCharacters.add(SwitchItem.fromJson(switchitem));
      }
      for(var switchitem in json['switches_clues']){
          newSwitchClues.add(SwitchItem.fromJson(switchitem));
      }
      for(var switchitem in json['switches_enigmas']){
          newSwitchEnigmas.add(SwitchItem.fromJson(switchitem));
      }
      for(var switchitem in json['switches_locations']){
          newSwitchLocations.add(SwitchItem.fromJson(switchitem));
      }

      newSwitches = Switches(
        switchesCharacters: newSwitchesCharacters, 
        switchClues: newSwitchClues, 
        switchEnigmas: newSwitchEnigmas, 
        switchLocations: newSwitchLocations
      );

    }catch(e){
      AppLogger.warning(e.toString());
    }
    
    return newSwitches;
  }
}