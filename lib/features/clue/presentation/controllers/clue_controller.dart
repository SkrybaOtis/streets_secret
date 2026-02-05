import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../domain/models/clue.dart';

part 'clue_controller.g.dart';

@riverpod
Future<Clue> clue(Ref ref, String episodeId, int clueId) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  return episode.bases.baseClues.firstWhere((c) => c.id == clueId);
}

@riverpod
Future<List<Clue>> unlockedCluesList(Ref ref, String episodeId) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedIds = ref.watch(unlockedCluesProvider(episodeId));
  
  return episode.bases.baseClues
      .where((c) => unlockedIds.contains(c.id))
      .toList();
}

@riverpod
Future<List<Clue>> locationClues(
  Ref ref, 
  String episodeId, 
  String locationId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedIds = ref.watch(unlockedCluesProvider(episodeId));
  
  // Get clues that are associated with this location (via character dialogs)
  // For simplicity, return all unlocked clues
  return episode.bases.baseClues
      .where((c) => unlockedIds.contains(c.id))
      .toList();
}