import '../../domain/models/episode.dart';

abstract class EpisodeRepository {
  Future<List<String>> getAvailableEpisodeIds();
  Future<Episode> getEpisode(String episodeId);
  Future<bool> episodeExists(String episodeId);
}