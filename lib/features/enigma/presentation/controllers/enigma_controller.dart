import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../domain/models/enigma.dart';

part 'enigma_controller.g.dart';

@riverpod
Future<Enigma> enigma(Ref ref, String episodeId, int enigmaId) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  return episode.bases.baseEnigmas.firstWhere((e) => e.id == enigmaId);
}

@riverpod
Future<List<Enigma>> unlockedEnigmasList(Ref ref, String episodeId) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedIds = ref.watch(unlockedEnigmasProvider(episodeId));
  
  return episode.bases.baseEnigmas
      .where((e) => unlockedIds.contains(e.id))
      .toList();
}

@riverpod
int enigmaRemainingAttempts(
  Ref ref, 
  String episodeId, 
  int enigmaId,
) {
  final gameState = ref.watch(gameStateControllerProvider(episodeId));
  
  return gameState.maybeWhen(
    data: (state) => state.getRemainingAttempts(
      enigmaId, 
      AppConstants.defaultMaxEnigmaAttempts,
    ),
    orElse: () => AppConstants.defaultMaxEnigmaAttempts,
  );
}

@riverpod
bool isEnigmaSolved(Ref ref, String episodeId, int enigmaId) {
  final gameState = ref.watch(gameStateControllerProvider(episodeId));
  
  return gameState.maybeWhen(
    data: (state) => state.isEnigmaSolved(enigmaId),
    orElse: () => false,
  );
}