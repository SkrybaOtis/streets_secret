import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../game_state/presentation/controllers/game_state_controller.dart';

part 'notepad_controller.g.dart';

@riverpod
String userNotes(Ref ref, String episodeId) {
  return ref.watch(gameStateControllerProvider(episodeId)).maybeWhen(
    data: (state) => state.userNotes,
    orElse: () => '',
  );
}

@riverpod
class NotepadEditController extends _$NotepadEditController {
  @override
  bool build() => false;

  void startEditing() => state = true;
  void stopEditing() => state = false;
}