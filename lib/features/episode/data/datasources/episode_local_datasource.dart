import '../../domain/models/episode.dart';

abstract class EpisodeLocalDataSource {
  Future<List<String>> getAvailableEpisodeIds();
  Future<Episode> loadEpisode(String episodeId);
  Future<bool> episodeExists(String episodeId);
}