import '../../../episode/domain/models/episode.dart';
import '../../domain/models/game_state.dart';

abstract class GameStateRepository {
  Future<GameState> loadOrCreateGameState(Episode episode);
  Future<void> saveGameState(GameState state);
  Future<void> resetGameState(String episodeId);
  Future<bool> hasExistingState(String episodeId);
}