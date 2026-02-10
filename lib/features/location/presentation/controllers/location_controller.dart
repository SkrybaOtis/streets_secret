import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../domain/models/location.dart';
import '../../../episode/domain/models/items_dialogs.dart';

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

@Riverpod(keepAlive: true)
class LocationDialogController extends _$LocationDialogController {
  @override
  String build(String episodeId, String locationId) {
    return ''; // Initial empty dialog
  }

  /// Get dialog for the location
  Future<ItemDialog?> getLocationDialog() async {
    final episode = await ref.read(episodeProvider(episodeId).future);
    
    // Find the location index
    final locationIndex = episode.bases.baseLocations
        .indexWhere((loc) => loc.id == locationId);
    
    if (locationIndex == -1) return null;

    // Get the dialog ID from the first character (or you can modify this logic)
    // This assumes we want the location's introduction dialog
    // You might want to adjust this based on your game logic
    final dialogId = episode.dialogsMatrices.getLocationDialog(0, locationIndex);
    
    if (dialogId != null) {
      return episode.itemsDialogs.getLocationDialog(dialogId);
    }

    return null;
  }

  /// Show dialog and process it to unlock items
  Future<void> showAndProcessLocationDialog() async {
    final dialog = await getLocationDialog();

    if (dialog != null) {
      state = dialog.content;
      
      // Process dialog to unlock items
      ref.read(gameStateControllerProvider(episodeId).notifier)
          .processDialog(dialog);
    }
  }
}