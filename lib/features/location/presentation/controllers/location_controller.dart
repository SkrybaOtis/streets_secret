import 'package:riverpod_annotation/riverpod_annotation.dart';

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
  
  final unlockedLocations = <GameLocation>[];
  final lockedLocations = <GameLocation>[];

  for (final location in episode.bases.baseLocations) {
    if (unlockedLocationIds.contains(location.id)) {
      unlockedLocations.add(location);
    } else {
      lockedLocations.add(location);
    }
  }

  // Return unlocked first, then first locked (available to unlock)
  return [
    ...unlockedLocations,
    //if (lockedLocations.isNotEmpty) lockedLocations.first,
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