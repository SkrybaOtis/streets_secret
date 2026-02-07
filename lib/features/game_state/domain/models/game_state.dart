import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../episode/domain/models/unlocked_items.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
sealed class GameState with _$GameState {
  const GameState._();

  const factory GameState({
    required String episodeId,
    required UnlockedItems unlocked,
    @Default({}) Map<int, int> enigmaAttempts,
    @Default({}) Map<int, bool> enigmaSolvedStatus,
    @Default({}) Map<int, int> activeSwitches,
    @Default('') String userNotes,
    DateTime? lastPlayedAt,
  }) = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);

  factory GameState.initial(String episodeId) => GameState(
        episodeId: episodeId,
        unlocked: const UnlockedItems(),
      );

  /// Get remaining attempts for an enigma
  int getRemainingAttempts(int enigmaId, int maxAttempts) {
    return maxAttempts - (enigmaAttempts[enigmaId] ?? 0);
  }

  /// Check if enigma is solved
  bool isEnigmaSolved(int enigmaId) {
    return enigmaSolvedStatus[enigmaId] ?? false;
  }

  /// Record an enigma attempt
  GameState withEnigmaAttempt(int enigmaId) {
    final currentAttempts = enigmaAttempts[enigmaId] ?? 0;
    return copyWith(
      enigmaAttempts: {...enigmaAttempts, enigmaId: currentAttempts + 1},
    );
  }

  /// Mark enigma as solved
  GameState withEnigmaSolved(int enigmaId) {
    return copyWith(
      enigmaSolvedStatus: {...enigmaSolvedStatus, enigmaId: true},
    );
  }

  /// Update user notes
  GameState withNotes(String notes) {
    return copyWith(userNotes: notes);
  }

  /// Activate a switch
  GameState withSwitch(int characterId, int switchId) {
    return copyWith(
      activeSwitches: {...activeSwitches, characterId: switchId},
    );
  }

  /// Unlock a character
  GameState unlockCharacter(int characterId) {
    return copyWith(unlocked: unlocked.withCharacter(characterId));
  }

  /// Unlock a clue
  GameState unlockClue(int clueId) {
    return copyWith(unlocked: unlocked.withClue(clueId));
  }

  /// Unlock an enigma
  GameState unlockEnigma(int enigmaId) {
    return copyWith(unlocked: unlocked.withEnigma(enigmaId));
  }

  /// Unlock a location
  GameState unlockLocation(String locationId) {
    return copyWith(unlocked: unlocked.withLocation(locationId));
  }

  /// Make a location available to unlock (not yet unlocked but can be)
  GameState makeLocationAvailable(String locationId) {
    return copyWith(unlocked: unlocked.withAvailableLocation(locationId));
  }

  /// Merge initial state with saved state
  GameState mergeWith(UnlockedItems initialUnlocked) {
    return copyWith(
      unlocked: unlocked.merge(initialUnlocked),
      lastPlayedAt: DateTime.now(),
    );
  }
}