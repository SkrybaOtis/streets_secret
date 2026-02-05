import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/utils/json_utils.dart';
import '../../../../core/utils/logger_utils.dart';
import '../../domain/models/episode.dart';
import 'episode_local_datasource.dart';

/// Implementation that loads episodes ONLY from app memory (local storage)
/// This version does not check assets at all
class EpisodeLocalDataSourceImpl implements EpisodeLocalDataSource {
  @override
  Future<List<String>> getAvailableEpisodeIds() async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodesDir = Directory('${appDir.path}/${AppConstants.episodesDirectory}');
      
      // AppLogger.debug('Checking for episodes in: ${episodesDir.path}');
      
      if (!await episodesDir.exists()) {
        AppLogger.info('Episodes directory does not exist yet');
        return [];
      }
      
      final List<String> episodeIds = [];
      final entities = await episodesDir.list().toList();
      for (final entity in entities) {
        if (entity is Directory) {
          final episodeId = entity.path.split('/').last;
          final episodeVersion = Directory(entity.path).listSync().whereType<Directory>().toList().last.path.split('/').last;
          
          //AppLogger.debug('Here we go again: ${entity.path}/$episodeVersion/$episodeId.json');
          // Verify that the episode JSON file exists
          final episodeFile = File('${entity.path}/$episodeVersion/$episodeId.json');
          if (await episodeFile.exists()) {
            episodeIds.add(episodeId);
            //AppLogger.debug('Found episode: $episodeId');
          }
        }
      }
      
      AppLogger.info('Found ${episodeIds.length} episodes in app memory');
      return episodeIds;
    } catch (e, stackTrace) {
      AppLogger.error('Failed to get available episode IDs', e, stackTrace);
      return [];
    }
  }

  @override
  Future<Episode> loadEpisode(String episodeId) async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodeDir = Directory('${appDir.path}/${AppConstants.episodesDirectory}/$episodeId');
      final episodeVersion = episodeDir.listSync().whereType<Directory>().toList().last.path.split('/').last;
      final episodeFile = File('${episodeDir.path}/$episodeVersion/$episodeId.json');

      // AppLogger.debug('Attempting to load episode from: ${episodeFile.path}');

      if (!await episodeFile.exists()) {
        AppLogger.error('Episode file not found: ${episodeFile.path}');
        throw AppException.episodeNotFound(episodeId);
      }

      final json = await JsonUtils.loadFromFile(episodeFile);
      AppLogger.info('Successfully loaded episode from app memory: $episodeId');

      // json.forEach((k, v) { AppLogger.debug('$k : $v \n'); });

      Episode getEpisode =  Episode.getFromJson(json);
      //AppLogger.info(getEpisode.toString());
      return getEpisode;
    } catch (e) {
      if (e is AppException) rethrow;
      AppLogger.error('Failed to load episode: $episodeId', e);
      throw AppException.episodeNotFound(episodeId);
    }
  }

  @override
  Future<bool> episodeExists(String episodeId) async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodeDir = Directory('${appDir.path}/${AppConstants.episodesDirectory}/$episodeId');
      final episodeVersion = episodeDir.listSync().whereType<Directory>().toList().last.path.split('/').last;
      final episodeFile = File('${episodeDir.path}/$episodeVersion/$episodeId.json');
      
      return await episodeFile.exists();
    } catch (e, stackTrace) {
      AppLogger.error('Error checking if episode exists: $episodeId', e, stackTrace);
      return false;
    }
  }
  
  /// Save an episode to app memory
  /// This is useful when downloading episodes or importing them
  Future<void> saveEpisode(Episode episode) async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodeDir = Directory('${appDir.path}/${AppConstants.episodesDirectory}/${episode.id}');
      final episodeVersion = episodeDir.listSync().whereType<Directory>().toList().last.path.split('/').last;
      
      // Create directory if it doesn't exist
      if (!await episodeDir.exists()) {
        await episodeDir.create(recursive: true);
        AppLogger.debug('Created episode directory: ${episodeDir.path}');
      }
      
      final episodeFile = File('${episodeDir.path}/$episodeVersion/${episode.id}.json');
      await JsonUtils.saveToFile(episodeFile, episode.toJson());
      
      AppLogger.info('Episode saved to app memory: ${episode.id}');
    } catch (e, stackTrace) {
      AppLogger.error('Failed to save episode: ${episode.id}', e, stackTrace);
      throw AppException.fileWriteError('${episode.id}.json');
    }
  }
  
  /// Delete an episode from app memory
  Future<void> deleteEpisode(String episodeId) async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodeDir = Directory(
        '${appDir.path}/${AppConstants.episodesDirectory}/$episodeId',
      );
      
      if (await episodeDir.exists()) {
        await episodeDir.delete(recursive: true);
        AppLogger.info('Episode deleted from app memory: $episodeId');
      } else {
        AppLogger.warning('Episode directory not found for deletion: $episodeId');
      }
    } catch (e, stackTrace) {
      AppLogger.error('Failed to delete episode: $episodeId', e, stackTrace);
    }
  }
  
  /// Get the file path for an episode in app memory
  Future<String> getEpisodePath(String episodeId) async {
    final appDir = await getApplicationSupportDirectory();
    return '${appDir.path}/${AppConstants.episodesDirectory}/$episodeId';
  }
  
  /// Check if episodes directory exists and create it if not
  Future<void> ensureEpisodesDirectoryExists() async {
    try {
      final appDir = await getApplicationSupportDirectory();
      final episodesDir = Directory('${appDir.path}/${AppConstants.episodesDirectory}');
      
      if (!await episodesDir.exists()) {
        await episodesDir.create(recursive: true);
        AppLogger.info('Created episodes directory: ${episodesDir.path}');
      }
    } catch (e, stackTrace) {
      AppLogger.error('Failed to create episodes directory', e, stackTrace);
    }
  }
}