import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/logger_utils.dart';

part 'items_dialogs.freezed.dart';
part 'items_dialogs.g.dart';

@freezed
sealed class ItemDialog with _$ItemDialog {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ItemDialog({
    required int id,
    required String content,
    required List<int> characters,
    required List<int> clues,
    required List<int> enigmas,
    required List<int> locations,
    @JsonKey(name: 'switch') int? switchId,// Exception: backend uses "switch", not "switch_id"
  }) = _ItemDialog;

  factory ItemDialog.fromJson(Map<String, dynamic> json) =>
      _$ItemDialogFromJson(json);
}

@freezed
sealed class ItemsDialogs with _$ItemsDialogs {
  const ItemsDialogs._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ItemsDialogs({
    required List<ItemDialog> itemsDialogsCharacters,
    required List<ItemDialog> itemsDialogsClues,
    required List<ItemDialog> itemsDialogsEnigmas,
    required List<ItemDialog> itemsDialogsLocations,
  }) = _ItemsDialogs;

  factory ItemsDialogs.fromJson(Map<String, dynamic> json) => _$ItemsDialogsFromJson(json);

  factory ItemsDialogs.getItemsDialogsFromJson(Map<String, dynamic> json){
    // AppLogger.debug("ItemsDialogs parsing started!!");
    ItemsDialogs newItemsDialogs = ItemsDialogs(
      itemsDialogsCharacters: [], 
      itemsDialogsClues: [], 
      itemsDialogsEnigmas: [], 
      itemsDialogsLocations: []
    );

    try {
      List<ItemDialog> newItemsDialogsCharacters = [];
      List<ItemDialog> newItemsDialogsClues = [];
      List<ItemDialog> newItemsDialogsEnigmas = [];
      List<ItemDialog> newItemsDialogsLocations = [];

      for(var itemDialog in json['items_dialogs_characters']){
          newItemsDialogsCharacters.add(ItemDialog.fromJson(itemDialog));
      }
      for(var itemDialog in json['items_dialogs_clues']){
          newItemsDialogsClues.add(ItemDialog.fromJson(itemDialog));
      }
      for(var itemDialog in json['items_dialogs_enigmas']){
          newItemsDialogsEnigmas.add(ItemDialog.fromJson(itemDialog));
      }
      for(var itemDialog in json['items_dialogs_loactions']){
          newItemsDialogsLocations.add(ItemDialog.fromJson(itemDialog));
      }

      newItemsDialogs = ItemsDialogs(
        itemsDialogsCharacters: newItemsDialogsCharacters, 
        itemsDialogsClues: newItemsDialogsClues, 
        itemsDialogsEnigmas: newItemsDialogsEnigmas, 
        itemsDialogsLocations: newItemsDialogsLocations
      );

      

      // ItemsDialogs newItemsDialogs = _$ItemsDialogsFromJson(json);
    } catch(e) {
      AppLogger.warning(e.toString());
    }
    return newItemsDialogs;
  }
      
  ItemDialog? getCharacterDialog(int dialogId) =>
      itemsDialogsCharacters.where((d) => d.id == dialogId).firstOrNull;

  ItemDialog? getClueDialog(int dialogId) =>
      itemsDialogsClues.where((d) => d.id == dialogId).firstOrNull;

  ItemDialog? getEnigmaDialog(int dialogId) =>
      itemsDialogsEnigmas.where((d) => d.id == dialogId).firstOrNull;

  ItemDialog? getLocationDialog(int dialogId) =>
      itemsDialogsLocations.where((d) => d.id == dialogId).firstOrNull;
}