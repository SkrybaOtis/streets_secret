// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Clue _$ClueFromJson(Map<String, dynamic> json) => _Clue(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  imageUrl: json['image_url'] as String,
  qrDecoded: json['qr_decoded'] as String?,
);

Map<String, dynamic> _$ClueToJson(_Clue instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'image_url': instance.imageUrl,
  'qr_decoded': instance.qrDecoded,
};
