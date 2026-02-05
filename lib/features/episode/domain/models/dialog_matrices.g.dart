// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_matrices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DialogMatrices _$DialogMatricesFromJson(
  Map<String, dynamic> json,
) => _DialogMatrices(
  dialogsMatrixCharacters: (json['dialogs_matrix_characters'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
      .toList(),
  dialogsMatrixClues: (json['dialogs_matrix_clues'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
      .toList(),
  dialogsMatrixEnigmas: (json['dialogs_matrix_enigmas'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
      .toList(),
  dialogsMatrixLocations: (json['dialogs_matrix_locations'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList())
      .toList(),
);

Map<String, dynamic> _$DialogMatricesToJson(_DialogMatrices instance) =>
    <String, dynamic>{
      'dialogs_matrix_characters': instance.dialogsMatrixCharacters,
      'dialogs_matrix_clues': instance.dialogsMatrixClues,
      'dialogs_matrix_enigmas': instance.dialogsMatrixEnigmas,
      'dialogs_matrix_locations': instance.dialogsMatrixLocations,
    };
