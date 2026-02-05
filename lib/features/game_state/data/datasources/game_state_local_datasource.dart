import '../../domain/models/game_state.dart';

abstract class GameStateLocalDataSource {
  Future<GameState?> loadGameState(String episodeId);
  Future<void> saveGameState(GameState state);
  Future<void> deleteGameState(String episodeId);
  Future<bool> hasGameState(String episodeId);
}