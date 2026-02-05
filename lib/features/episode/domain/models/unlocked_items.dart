import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/logger_utils.dart';

part 'unlocked_items.freezed.dart';
part 'unlocked_items.g.dart';

@freezed
sealed class UnlockedItems with _$UnlockedItems {
  const UnlockedItems._();

  const factory UnlockedItems({
    @Default([]) List<int> characters,
    @Default([]) List<int> clues,
    @Default([]) List<int> enigmas,
    @Default([]) List<String> locations,
  }) = _UnlockedItems;

  factory UnlockedItems.fromJson(Map<String, dynamic> json) =>
      _$UnlockedItemsFromJson(json);
  
    factory UnlockedItems.getUnlockedItemsFromJson(Map<String, dynamic> json){
    // AppLogger.warning("UnlockedItems parsing started!!");

    UnlockedItems newUnlockedItems = UnlockedItems(
      characters: [], 
      clues: [], 
      enigmas: [], 
      locations: []
    );

    try{
      List<int> newUnlockedCharacters = [];
      List<int> newUnlockedClues = [];
      List<int> newUnlockedEnigmas = [];
      List<String> newUnlockedLocations = [];

      // AppLogger.debug(json.toString());
      for(int unlockedItem in json['unlocked_characters']){
          newUnlockedCharacters.add(unlockedItem);
      }
      for(int unlockedItem in json['unlocked_clues']){
          newUnlockedClues.add(unlockedItem);
      }
      for(int unlockedItem in json['unlocked_enigmas']){
          newUnlockedEnigmas.add(unlockedItem);
      }
      for(int unlockedItem in json['unlocked_locations']){
          newUnlockedLocations.add(unlockedItem.toString());
      }
      // AppLogger.debug("unlocked_characters: $newUnlockedCharacters, \nunlocked_clues: $newUnlockedClues, \nunlocked_enigmas: $newUnlockedEnigmas, \nunlocked_locations: $newUnlockedLocations");

      newUnlockedItems = UnlockedItems(
        characters: newUnlockedCharacters, 
        clues: newUnlockedClues, 
        enigmas: newUnlockedEnigmas, 
        locations: newUnlockedLocations
      );
      AppLogger.debug(newUnlockedItems.toString());

    }catch(e){
      AppLogger.warning(e.toString());
    }

    return newUnlockedItems;
  }

  /// Add a character to unlocked list
  UnlockedItems withCharacter(int characterId) {
    if (characters.contains(characterId)) return this;
    return copyWith(characters: [...characters, characterId]);
  }

  /// Add a clue to unlocked list
  UnlockedItems withClue(int clueId) {
    if (clues.contains(clueId)) return this;
    return copyWith(clues: [...clues, clueId]);
  }

  /// Add an enigma to unlocked list
  UnlockedItems withEnigma(int enigmaId) {
    if (enigmas.contains(enigmaId)) return this;
    return copyWith(enigmas: [...enigmas, enigmaId]);
  }

  /// Add a location to unlocked list
  UnlockedItems withLocation(String locationId) {
    if (locations.contains(locationId)) return this;
    return copyWith(locations: [...locations, locationId]);
  }

  /// Merge with another UnlockedItems (for state restoration)
  UnlockedItems merge(UnlockedItems other) {
    return UnlockedItems(
      characters: {...characters, ...other.characters}.toList(),
      clues: {...clues, ...other.clues}.toList(),
      enigmas: {...enigmas, ...other.enigmas}.toList(),
      locations: {...locations, ...other.locations}.toList(),
    );
  }
}