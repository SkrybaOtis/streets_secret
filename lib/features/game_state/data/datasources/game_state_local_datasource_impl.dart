import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/json_utils.dart';
import '../../../../core/utils/logger_utils.dart';
import '../../domain/models/game_state.dart';
import 'game_state_local_datasource.dart';

class GameStateLocalDataSourceImpl implements GameStateLocalDataSource {
  Future<File> _getStateFile(String episodeId) async {
    final appDir = await getApplicationDocumentsDirectory();
    return File(
      '${appDir.path}/${AppConstants.episodesDirectory}/$episodeId/'
      '$episodeId${AppConstants.actualStateSuffix}${AppConstants.jsonExtension}',
    );
  }

  @override
  Future<GameState?> loadGameState(String episodeId) async {
    try {
      final file = await _getStateFile(episodeId);
      
      if (!await file.exists()) {
        AppLogger.debug('No saved state found for episode: $episodeId');
        return null;
      }

      final json = await JsonUtils.loadFromFile(file);
      return GameState.fromJson(json);
    } catch (e, stackTrace) {
      AppLogger.error('Failed to load game state for: $episodeId', e, stackTrace);
      return null;
    }
  }

  @override
  Future<void> saveGameState(GameState state) async {
    try {
      final file = await _getStateFile(state.episodeId);
      final stateWithTimestamp = state.copyWith(lastPlayedAt: DateTime.now());
      await JsonUtils.saveToFile(file, stateWithTimestamp.toJson());
      AppLogger.debug('Game state saved for: ${state.episodeId}');
    } catch (e, stackTrace) {
      AppLogger.error('Failed to save game state for: ${state.episodeId}', e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> deleteGameState(String episodeId) async {
    try {
      final file = await _getStateFile(episodeId);
      if (await file.exists()) {
        await file.delete();
        AppLogger.debug('Game state deleted for: $episodeId');
      }
    } catch (e, stackTrace) {
      AppLogger.error('Failed to delete game state for: $episodeId', e, stackTrace);
    }
  }

  @override
  Future<bool> hasGameState(String episodeId) async {
    final file = await _getStateFile(episodeId);
    return file.exists();
  }
}