import 'package:freezed_annotation/freezed_annotation.dart';

part 'enigma.freezed.dart';
part 'enigma.g.dart';

@freezed
sealed class Enigma with _$Enigma {
  const factory Enigma({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'qr_decoded') String? qrDecoded,
    @Default(3) int maxAttempts,
    @Default(false) bool isSolved,
    String? correctAnswer,
    List<int>? validAnswerCharacterIds,
    List<int>? validAnswerClueIds,
  }) = _Enigma;

  factory Enigma.fromJson(Map<String, dynamic> json) => _$EnigmaFromJson(json);
}