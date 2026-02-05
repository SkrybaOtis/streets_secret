import 'package:freezed_annotation/freezed_annotation.dart';

part 'clue.freezed.dart';
part 'clue.g.dart';

@freezed
sealed class Clue with _$Clue {
  const factory Clue({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'qr_decoded') String? qrDecoded,
  }) = _Clue;

  factory Clue.fromJson(Map<String, dynamic> json) => _$ClueFromJson(json);

  
}