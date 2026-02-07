import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../episode/domain/models/episode.dart';
import '../../../episode/domain/models/items_dialogs.dart';
import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../application/game_state_service.dart';
import '../../domain/models/game_state.dart';

part 'game_state_controller.g.dart';

@riverpod
class GameStateController extends _$GameStateController {
  @override
  Future<GameState> build(String episodeId) async {
    final episode = await ref.watch(episodeProvider(episodeId).future);
    final service = ref.read(gameStateServiceProvider);
    
    final state = await service.loadGameState(episode);
    
    // Auto-save when state changes
    listenSelf((previous, next) {
      if (previous != next && next.hasValue) {
        _saveState(next.value!);
      }
    });
    
    return state;
  }

  Future<void> _saveState(GameState state) async {
    await ref.read(gameStateServiceProvider).saveGameState(state);
  }

  /// Unlock a location
  Future<void> unlockLocation(String locationId) async {
    state = state.whenData((s) => s.unlockLocation(locationId));
  }

  /// Make a location available to unlock
  Future<void> makeLocationAvailable(String locationId) async {
    state = state.whenData((s) => s.makeLocationAvailable(locationId));
  }

  /// Unlock a character
  Future<void> unlockCharacter(int characterId) async {
    state = state.whenData((s) => s.unlockCharacter(characterId));
  }

  /// Unlock a clue
  Future<void> unlockClue(int clueId) async {
    state = state.whenData((s) => s.unlockClue(clueId));
  }

  /// Unlock an enigma
  Future<void> unlockEnigma(int enigmaId) async {
    state = state.whenData((s) => s.unlockEnigma(enigmaId));
  }

  /// Process dialog and unlock items
  Future<void> processDialog(ItemDialog dialog) async {
    final service = ref.read(gameStateServiceProvider);
    state = state.whenData((s) => service.processDialog(s, dialog));
  }

  /// Update user notes
  Future<void> updateNotes(String notes) async {
    state = state.whenData((s) => s.withNotes(notes));
  }

  /// Check enigma answer
  Future<bool> checkEnigmaAnswer({
    required int enigmaId,
    required int selectedCharacterId,
    required List<int>? validAnswerCharacterIds,
    required int maxAttempts,
  }) async {
    final service = ref.read(gameStateServiceProvider);
    
    final currentState = state.value;
    if (currentState == null) return false;

    final (newState, isCorrect) = service.checkEnigmaAnswer(
      state: currentState,
      enigmaId: enigmaId,
      selectedCharacterId: selectedCharacterId,
      validAnswerCharacterIds: validAnswerCharacterIds,
      maxAttempts: maxAttempts,
    );

    state = AsyncData(newState);
    return isCorrect;
  }

  /// Activate a switch
  Future<void> activateSwitch(int characterId, int switchId) async {
    state = state.whenData((s) => s.withSwitch(characterId, switchId));
  }

  /// Reset game state
  Future<void> resetState() async {
    await ref.read(gameStateServiceProvider).resetGameState(episodeId);
    ref.invalidateSelf();
  }
}

/// Convenience providers for accessing specific game state properties
@riverpod
List<int> unlockedCharacters(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.unlocked.characters,
    orElse: () => [],
  );
}

@riverpod
List<int> unlockedClues(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.unlocked.clues,
    orElse: () => [],
  );
}

@riverpod
List<int> unlockedEnigmas(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.unlocked.enigmas,
    orElse: () => [],
  );
}

@riverpod
List<String> unlockedLocations(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.unlocked.locations,
    orElse: () => [],
  );
}

@riverpod
List<String> availableLocations(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.unlocked.availableLocations,
    orElse: () => [],
  );
}