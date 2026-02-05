import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../character/domain/models/character.dart';
import '../../../clue/domain/models/clue.dart';
import '../../../enigma/domain/models/enigma.dart';
import '../../../location/domain/models/location.dart';

part 'bases.freezed.dart';
part 'bases.g.dart';

@freezed
sealed class Bases with _$Bases {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Bases({
    required List<Character> baseCharacters,
    required List<Clue> baseClues,
    required List<Enigma> baseEnigmas,
    required List<GameLocation> baseLocations,
  }) = _Bases;

  factory Bases.fromJson(Map<String, dynamic> json) => _$BasesFromJson(json);
}