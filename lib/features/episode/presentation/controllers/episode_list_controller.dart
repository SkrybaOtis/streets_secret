import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/episode_service.dart';
import '../../domain/models/episode.dart';

part 'episode_list_controller.g.dart';

@riverpod
class EpisodeListController extends _$EpisodeListController {
  @override
  Future<List<String>> build() async {
    return ref.read(episodeServiceProvider).getAvailableEpisodes();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => 
      ref.read(episodeServiceProvider).getAvailableEpisodes()
    );
  }
}

@riverpod
Future<Episode> episode(Ref ref, String episodeId) async {
  return ref.read(episodeServiceProvider).loadEpisode(episodeId);
}

/// Family provider for loading episodes - auto disposes when not in use
@riverpod
class EpisodeController extends _$EpisodeController {
  @override
  Future<Episode> build(String episodeId) async {
    return ref.read(episodeServiceProvider).loadEpisode(episodeId);
  }
}