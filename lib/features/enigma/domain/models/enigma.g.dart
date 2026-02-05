// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enigma.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Enigma _$EnigmaFromJson(Map<String, dynamic> json) => _Enigma(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  imageUrl: json['image_url'] as String,
  qrDecoded: json['qr_decoded'] as String?,
  maxAttempts: (json['maxAttempts'] as num?)?.toInt() ?? 3,
  isSolved: json['isSolved'] as bool? ?? false,
  correctAnswer: json['correctAnswer'] as String?,
  validAnswerCharacterIds: (json['validAnswerCharacterIds'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  validAnswerClueIds: (json['validAnswerClueIds'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$EnigmaToJson(_Enigma instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'image_url': instance.imageUrl,
  'qr_decoded': instance.qrDecoded,
  'maxAttempts': instance.maxAttempts,
  'isSolved': instance.isSolved,
  'correctAnswer': instance.correctAnswer,
  'validAnswerCharacterIds': instance.validAnswerCharacterIds,
  'validAnswerClueIds': instance.validAnswerClueIds,
};
