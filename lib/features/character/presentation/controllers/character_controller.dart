import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../episode/domain/enums/element_type.dart';
import '../../../episode/domain/models/items_dialogs.dart';
import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../domain/models/character.dart';

part 'character_controller.g.dart';

@riverpod
Future<Character> character(
  Ref ref, 
  String episodeId, 
  int characterId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  return episode.bases.baseCharacters.firstWhere((c) => c.id == characterId);
}

@riverpod
Future<List<Character>> unlockedCharactersList(
  Ref ref, 
  String episodeId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedIds = ref.watch(unlockedCharactersProvider(episodeId));
  
  return episode.bases.baseCharacters
      .where((c) => unlockedIds.contains(c.id))
      .toList();
}

@riverpod
Future<List<Character>> locationCharacters(
  Ref ref, 
  String episodeId, 
  String locationId,
) async {
  final episode = await ref.watch(episodeProvider(episodeId).future);
  final unlockedIds = ref.watch(unlockedCharactersProvider(episodeId));
  
  final location = episode.bases.baseLocations.firstWhere(
    (l) => l.id == locationId,
  );
  
  return episode.bases.baseCharacters
      .where((c) => location.characters.contains(c.id) && unlockedIds.contains(c.id))
      .toList();
}

@riverpod
class CharacterDialogController extends _$CharacterDialogController {
  @override
  String build(String episodeId, int characterId) {
    return ''; // Initial empty dialog
  }

  /// Get dialog for interaction with an element
  Future<ItemDialog?> getDialogForElement({
    required ElementType elementType,
    required int elementId,
  }) async {
    final episode = await ref.read(episodeProvider(episodeId).future);
    final characterIndex = characterId - 1; // Assuming 1-based IDs
    final elementIndex = elementId - 1;

    int? dialogId;
    
    switch (elementType) {
      case ElementType.character:
        dialogId = episode.dialogsMatrices.getCharacterDialog(
          characterIndex, 
          elementIndex,
        );
        if (dialogId != null) {
          return episode.itemsDialogs.getCharacterDialog(dialogId);
        }
      case ElementType.clue:
        dialogId = episode.dialogsMatrices.getClueDialog(
          characterIndex, 
          elementIndex,
        );
        if (dialogId != null) {
          return episode.itemsDialogs.getClueDialog(dialogId);
        }
      case ElementType.enigma:
        dialogId = episode.dialogsMatrices.getEnigmaDialog(
          characterIndex, 
          elementIndex,
        );
        if (dialogId != null) {
          return episode.itemsDialogs.getEnigmaDialog(dialogId);
        }
      case ElementType.location:
        dialogId = episode.dialogsMatrices.getLocationDialog(
          characterIndex, 
          elementIndex,
        );
        if (dialogId != null) {
          return episode.itemsDialogs.getLocationDialog(dialogId);
        }
    }

    return null;
  }

  /// Update dialog text based on element interaction
  Future<void> showDialogForElement({
    required ElementType elementType,
    required int elementId,
  }) async {
    final dialog = await getDialogForElement(
      elementType: elementType,
      elementId: elementId,
    );

    if (dialog != null) {
      state = dialog.content;
      
      // Process dialog to unlock items
      ref.read(gameStateControllerProvider(episodeId).notifier)
          .processDialog(dialog);
    }
  }
}