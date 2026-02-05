// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameState _$GameStateFromJson(Map<String, dynamic> json) => _GameState(
  episodeId: json['episodeId'] as String,
  unlocked: UnlockedItems.fromJson(json['unlocked'] as Map<String, dynamic>),
  enigmaAttempts:
      (json['enigmaAttempts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      ) ??
      const {},
  enigmaSolvedStatus:
      (json['enigmaSolvedStatus'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ) ??
      const {},
  activeSwitches:
      (json['activeSwitches'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      ) ??
      const {},
  userNotes: json['userNotes'] as String? ?? '',
  lastPlayedAt: json['lastPlayedAt'] == null
      ? null
      : DateTime.parse(json['lastPlayedAt'] as String),
);

Map<String, dynamic> _$GameStateToJson(_GameState instance) =>
    <String, dynamic>{
      'episodeId': instance.episodeId,
      'unlocked': instance.unlocked,
      'enigmaAttempts': instance.enigmaAttempts.map(
        (k, e) => MapEntry(k.toString(), e),
      ),
      'enigmaSolvedStatus': instance.enigmaSolvedStatus.map(
        (k, e) => MapEntry(k.toString(), e),
      ),
      'activeSwitches': instance.activeSwitches.map(
        (k, e) => MapEntry(k.toString(), e),
      ),
      'userNotes': instance.userNotes,
      'lastPlayedAt': instance.lastPlayedAt?.toIso8601String(),
    };
