import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/logger_utils.dart';

import 'localization.dart';
import 'point.dart';
import 'bases.dart';
import 'dialog_matrices.dart';
import 'items_dialogs.dart';
import 'switches.dart';
import 'unlocked_items.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
sealed class Episode with _$Episode {
  const Episode._();

  const factory Episode({
    required String id,
    required int version,

    required Localization localization,
    required List<Point> points,

    required String name,
    required String description,
    required String author,
    // required String sha256,
    // required int sizeBytes,
    // required String downloadUrl,
    // required DateTime createdAt,
    
    // required DateTime updatedAt,
    // required List<String> tags,
    // required String thumbnailUrl,
    required String difficulty,
    required int estimatedMinutes,

    required Bases bases,
    required DialogMatrices dialogsMatrices,
    required ItemsDialogs itemsDialogs,
    required Switches switches,
    required UnlockedItems unlocked,

  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);

  factory Episode.getFromJson(Map<String, dynamic> json) {
    // json.forEach((k, v) { AppLogger.debug('$k : $v \n'); });
    // AppLogger.warning("It's coming");
    Episode newEpisode = Episode(
      id: json['id'] ?? 'exampleID', 
      version: json['version'] ?? 1 , 
      
      localization: Localization.fromJson(json['localization']), // ?? Localization(city: 'city', country: 'country', countryCode: 'countryCode', centerLatitude: 0.0, centerLongitude: 0.0) , 
      points: Point.getListPointFromJson(json['points']), // ?? List.empty(), 
     
      name: json['name'] ?? 'exampleName', 
      description: json['description'] ?? 'exampleDescription', 
      author: json['author'] ?? 'exampleAuthor', 
      // sha256: json['sha256'] ?? 'exampleSHA', 
      // sizeBytes: json['sizeBytes'] ?? 1, 
      // downloadUrl: json['downloadUrl'] ?? 'exampleURL', 
      // createdAt: DateTime.parse(json['createdAt']), //?? DateTime(2000), 
      
      // updatedAt: DateTime.parse(json['updatedAt']), // ?? DateTime(2000), 
      // tags: getTagsFromJson(json['tags']), //?? List.empty(), 
      // thumbnailUrl: json['thumbnailUrl'] ?? 'exampleThumbnailUrl',
      difficulty: json['difficulty'] ?? 'exampleDifficulty',
      estimatedMinutes: json['estimatedMinutes'] ?? 1, 
      
      
      bases: Bases.fromJson(json['bases']), // ?? Bases(baseCharacters: List.empty(), baseClues: List.empty(), baseEnigmas: List.empty(), baseLocations: List.empty()),
      dialogsMatrices: DialogMatrices.fromJson(json['dialogsMatrices']), // ?? DialogMatrices(dialogsMatrixCharacters: List.empty(), dialogsMatrixClues: List.empty(), dialogsMatrixEnigmas: List.empty(), dialogsMatrixLocations: List.empty()), 
      itemsDialogs: ItemsDialogs.getItemsDialogsFromJson(json['itemsDialogs']), // ?? ItemsDialogs(itemsDialogsCharacters: List.empty(), itemsDialogsClues: List.empty(), itemsDialogsEnigmas: List.empty(), itemsDialogsLocations: List.empty()), 
      
      switches: Switches.getSwitchesFromJson(json['switches']), // ?? Switches(switchesCharacters: List.empty(), switchClues: List.empty(), switchEnigmas: List.empty(), switchLocations: List.empty()), 
      unlocked: UnlockedItems.getUnlockedItemsFromJson(json['unlocked']), // ?? UnlockedItems()
      );

      return newEpisode;
  }

  /// Get all available location IDs (unlocked + visible to unlock)
  List<String> get availableLocationIds {
    final unlockedIds = unlocked.locations.toSet();
    final allLocationIds = bases.baseLocations.map((l) => l.id).toList();
    
    // Add next location if available
    final List<String> available = [...unlockedIds];
    for (final location in bases.baseLocations) {
      if (!unlockedIds.contains(location.id)) {
        available.add(location.id);
        break; // Only show next one to unlock
      }
    }
    return available;
  }

  /// Check if location is unlocked
  bool isLocationUnlocked(String locationId) {
    return unlocked.locations.contains(locationId);
  }

  /// Check if character is unlocked
  bool isCharacterUnlocked(int characterId) {
    return unlocked.characters.contains(characterId);
  }

  /// Check if clue is unlocked
  bool isClueUnlocked(int clueId) {
    return unlocked.clues.contains(clueId);
  }

  /// Check if enigma is unlocked
  bool isEnigmaUnlocked(int enigmaId) {
    return unlocked.enigmas.contains(enigmaId);
  }
}

List<String> getTagsFromJson(List<dynamic> json) {
  List<String> newListPoint = [];
  for(var tag in json){
    try{
      newListPoint.add(tag.toString());
    }catch(e){
      AppLogger.warning(e.toString());
    }
  }
  // AppLogger.info(newListPoint.toString());
  return newListPoint;
}
