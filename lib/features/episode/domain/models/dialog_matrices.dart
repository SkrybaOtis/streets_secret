import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_matrices.freezed.dart';
part 'dialog_matrices.g.dart';

@freezed
sealed class DialogMatrices with _$DialogMatrices {
  const DialogMatrices._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DialogMatrices({
    required List<List<int>> dialogsMatrixCharacters,
    required List<List<int>> dialogsMatrixClues,
    required List<List<int>> dialogsMatrixEnigmas,
    required List<List<int>> dialogsMatrixLocations,
  }) = _DialogMatrices;

  factory DialogMatrices.fromJson(Map<String, dynamic> json) =>
      _$DialogMatricesFromJson(json);

  /// Get dialog ID for character interaction with another character
  int? getCharacterDialog(int characterIndex, int targetCharacterIndex) {
    if (characterIndex >= dialogsMatrixCharacters.length) return null;
    if (targetCharacterIndex >= dialogsMatrixCharacters[characterIndex].length) {
      return null;
    }
    final dialogId =
        dialogsMatrixCharacters[characterIndex][targetCharacterIndex];
    return dialogId == 0 ? null : dialogId;
  }

  /// Get dialog ID for character interaction with clue
  int? getClueDialog(int characterIndex, int clueIndex) {
    if (characterIndex >= dialogsMatrixClues.length) return null;
    if (clueIndex >= dialogsMatrixClues[characterIndex].length) return null;
    final dialogId = dialogsMatrixClues[characterIndex][clueIndex];
    return dialogId == 0 ? null : dialogId;
  }

  /// Get dialog ID for character interaction with enigma
  int? getEnigmaDialog(int characterIndex, int enigmaIndex) {
    if (characterIndex >= dialogsMatrixEnigmas.length) return null;
    if (enigmaIndex >= dialogsMatrixEnigmas[characterIndex].length) return null;
    final dialogId = dialogsMatrixEnigmas[characterIndex][enigmaIndex];
    return dialogId == 0 ? null : dialogId;
  }

  /// Get dialog ID for character interaction with location
  int? getLocationDialog(int characterIndex, int locationIndex) {
    if (characterIndex >= dialogsMatrixLocations.length) return null;
    if (locationIndex >= dialogsMatrixLocations[characterIndex].length) return null;
    final dialogId = dialogsMatrixLocations[characterIndex][locationIndex];
    return dialogId == 0 ? null : dialogId;
  }
}