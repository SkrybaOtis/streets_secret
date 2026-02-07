import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../episode/domain/models/episode.dart';
import '../../episode/domain/models/items_dialogs.dart';
import '../data/repositories/game_state_repository.dart';
import '../data/repositories/game_state_repository_impl.dart';
import '../domain/models/game_state.dart';

part 'game_state_service.g.dart';

class GameStateService {
  final GameStateRepository _repository;

  GameStateService(this._repository);

  Future<GameState> loadGameState(Episode episode) {
    return _repository.loadOrCreateGameState(episode);
  }

  Future<void> saveGameState(GameState state) {
    return _repository.saveGameState(state);
  }

  Future<void> resetGameState(String episodeId) {
    return _repository.resetGameState(episodeId);
  }

  /// Process dialog and unlock items
  GameState processDialog(GameState state, ItemDialog dialog) {
    var newState = state;

    // Unlock characters from dialog
    for (final characterId in dialog.characters) {
      newState = newState.unlockCharacter(characterId);
    }

    // Unlock clues from dialog
    for (final clueId in dialog.clues) {
      newState = newState.unlockClue(clueId);
    }

    // Unlock enigmas from dialog
    for (final enigmaId in dialog.enigmas) {
      newState = newState.unlockEnigma(enigmaId);
    }

    // Make locations available (they become unlockable but not yet unlocked)
    for (final locationId in dialog.locations) {
      newState = newState.makeLocationAvailable(locationId.toString());
    }

    // Apply switch if present
    if (dialog.switchId != null) {
      // Switch logic would be applied here based on your requirements
    }

    return newState;
  }

  /// Check enigma answer and update state
  (GameState, bool) checkEnigmaAnswer({
    required GameState state,
    required int enigmaId,
    required int selectedCharacterId,
    required List<int>? validAnswerCharacterIds,
    required int maxAttempts,
  }) {
    // Record attempt
    var newState = state.withEnigmaAttempt(enigmaId);
    
    // Check if answer is correct
    final isCorrect = validAnswerCharacterIds?.contains(selectedCharacterId) ?? false;

    if (isCorrect) {
      newState = newState.withEnigmaSolved(enigmaId);
    }

    return (newState, isCorrect);
  }
}

@riverpod
GameStateService gameStateService(Ref ref) {
  return GameStateService(ref.watch(gameStateRepositoryProvider));
}