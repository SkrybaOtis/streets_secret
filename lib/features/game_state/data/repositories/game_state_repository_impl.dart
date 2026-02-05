import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../episode/domain/models/episode.dart';
import '../../domain/models/game_state.dart';
import '../datasources/game_state_local_datasource.dart';
import '../datasources/game_state_local_datasource_impl.dart';
import 'game_state_repository.dart';

part 'game_state_repository_impl.g.dart';

class GameStateRepositoryImpl implements GameStateRepository {
  final GameStateLocalDataSource _localDataSource;

  GameStateRepositoryImpl(this._localDataSource);

  @override
  Future<GameState> loadOrCreateGameState(Episode episode) async {
    final savedState = await _localDataSource.loadGameState(episode.id);
    
    if (savedState != null) {
      // Merge saved state with initial episode unlocked items
      return savedState.mergeWith(episode.unlocked);
    }

    // Create new state with initial unlocked items
    return GameState.initial(episode.id).mergeWith(episode.unlocked);
  }

  @override
  Future<void> saveGameState(GameState state) {
    return _localDataSource.saveGameState(state);
  }

  @override
  Future<void> resetGameState(String episodeId) {
    return _localDataSource.deleteGameState(episodeId);
  }

  @override
  Future<bool> hasExistingState(String episodeId) {
    return _localDataSource.hasGameState(episodeId);
  }
}

@riverpod
GameStateLocalDataSource gameStateLocalDataSource(Ref ref) {
  return GameStateLocalDataSourceImpl();
}

@riverpod
GameStateRepository gameStateRepository(Ref ref) {
  return GameStateRepositoryImpl(ref.watch(gameStateLocalDataSourceProvider));
}