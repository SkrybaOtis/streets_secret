import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streets_sercets/core/utils/logger_utils.dart';

import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../domain/models/location.dart';

part 'location_controller.g.dart';

@riverpod
Future<List<GameLocation>> availableLocations(
  Ref ref, 
  String episodeId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedLocationIds = ref.watch(unlockedLocationsProvider(episodeId));
  
  // Get available location IDs from game state
  final gameState = ref.watch(gameStateControllerProvider(episodeId));
  final availableLocationIds = gameState.maybeWhen(
    data: (state) => state.unlocked.availableLocations,
    orElse: () => <String>[],
  );
  
  final unlockedLocations = <GameLocation>[];
  final availableButLockedLocations = <GameLocation>[];

  AppLogger.warning(episode.bases.baseLocations.toString());

  for (final location in episode.bases.baseLocations) {
    if (unlockedLocationIds.contains(location.id)) {
      unlockedLocations.add(location);
    } else if (availableLocationIds.contains(location.id)) {
      availableButLockedLocations.add(location);
    }
  }

  // Return unlocked first, then available (locked but can be unlocked)
  return [
    ...unlockedLocations,
    ...availableButLockedLocations,
  ];
}

@riverpod
Future<GameLocation> location(
  Ref ref, 
  String episodeId, 
  String locationId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  return episode.bases.baseLocations.firstWhere((l) => l.id == locationId);
}

@riverpod
bool isLocationUnlocked(
  Ref ref, 
  String episodeId, 
  String locationId,
) {
  final unlockedLocationIds = ref.watch(unlockedLocationsProvider(episodeId));
  return unlockedLocationIds.contains(locationId);
}