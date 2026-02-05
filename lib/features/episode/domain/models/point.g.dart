// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Point _$PointFromJson(Map<String, dynamic> json) => _Point(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  isMainPoint: json['isMainPoint'] as bool,
  order: (json['order'] as num).toInt(),
  imagePath: json['imagePath'] as String?,
  qrDecoded: json['qrDecoded'] as String?,
);

Map<String, dynamic> _$PointToJson(_Point instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'isMainPoint': instance.isMainPoint,
  'order': instance.order,
  'imagePath': instance.imagePath,
  'qrDecoded': instance.qrDecoded,
};
