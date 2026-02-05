import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/episode_repository_impl.dart';
import '../data/repositories/episode_repository.dart';
import '../domain/models/episode.dart';

part 'episode_service.g.dart';

class EpisodeService {
  final EpisodeRepository _repository;

  EpisodeService(this._repository);

  Future<List<String>> getAvailableEpisodes() {
    return _repository.getAvailableEpisodeIds();
  }

  Future<Episode> loadEpisode(String episodeId) {
    return _repository.getEpisode(episodeId);
  }

  Future<bool> episodeExists(String episodeId) {
    return _repository.episodeExists(episodeId);
  }
}

@riverpod
EpisodeService episodeService(Ref ref) {
  return EpisodeService(ref.watch(episodeRepositoryProvider));
}