// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Episode _$EpisodeFromJson(Map<String, dynamic> json) => _Episode(
  id: json['id'] as String,
  version: (json['version'] as num).toInt(),
  localization: Localization.fromJson(
    json['localization'] as Map<String, dynamic>,
  ),
  points: (json['points'] as List<dynamic>)
      .map((e) => Point.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: json['name'] as String,
  description: json['description'] as String,
  author: json['author'] as String,
  sha256: json['sha256'] as String,
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  downloadUrl: json['downloadUrl'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  thumbnailUrl: json['thumbnailUrl'] as String,
  difficulty: json['difficulty'] as String,
  estimatedMinutes: (json['estimatedMinutes'] as num).toInt(),
  bases: Bases.fromJson(json['bases'] as Map<String, dynamic>),
  dialogsMatrices: DialogMatrices.fromJson(
    json['dialogsMatrices'] as Map<String, dynamic>,
  ),
  itemsDialogs: ItemsDialogs.fromJson(
    json['itemsDialogs'] as Map<String, dynamic>,
  ),
  switches: Switches.fromJson(json['switches'] as Map<String, dynamic>),
  unlocked: UnlockedItems.fromJson(json['unlocked'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EpisodeToJson(_Episode instance) => <String, dynamic>{
  'id': instance.id,
  'version': instance.version,
  'localization': instance.localization,
  'points': instance.points,
  'name': instance.name,
  'description': instance.description,
  'author': instance.author,
  'sha256': instance.sha256,
  'sizeBytes': instance.sizeBytes,
  'downloadUrl': instance.downloadUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'tags': instance.tags,
  'thumbnailUrl': instance.thumbnailUrl,
  'difficulty': instance.difficulty,
  'estimatedMinutes': instance.estimatedMinutes,
  'bases': instance.bases,
  'dialogsMatrices': instance.dialogsMatrices,
  'itemsDialogs': instance.itemsDialogs,
  'switches': instance.switches,
  'unlocked': instance.unlocked,
};
