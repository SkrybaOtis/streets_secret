import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/episode.dart';
import '../datasources/episode_local_datasource.dart';
import '../datasources/episode_local_datasource_impl.dart';
import 'episode_repository.dart';

part 'episode_repository_impl.g.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final EpisodeLocalDataSource _localDataSource;

  EpisodeRepositoryImpl(this._localDataSource);

  @override
  Future<List<String>> getAvailableEpisodeIds() {
    return _localDataSource.getAvailableEpisodeIds();
  }

  @override
  Future<Episode> getEpisode(String episodeId) {
    return _localDataSource.loadEpisode(episodeId);
  }

  @override
  Future<bool> episodeExists(String episodeId) {
    return _localDataSource.episodeExists(episodeId);
  }
}

@riverpod
EpisodeLocalDataSource episodeLocalDataSource(Ref ref) {
  return EpisodeLocalDataSourceImpl();
}

@riverpod
EpisodeRepository episodeRepository(Ref ref) {
  return EpisodeRepositoryImpl(ref.watch(episodeLocalDataSourceProvider));
}