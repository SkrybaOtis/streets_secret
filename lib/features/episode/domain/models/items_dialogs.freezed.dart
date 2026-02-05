// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_dialogs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemDialog {

 int get id; String get content; List<int> get characters; List<int> get clues; List<int> get enigmas; List<int> get locations;@JsonKey(name: 'switch') int? get switchId;
/// Create a copy of ItemDialog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemDialogCopyWith<ItemDialog> get copyWith => _$ItemDialogCopyWithImpl<ItemDialog>(this as ItemDialog, _$identity);

  /// Serializes this ItemDialog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemDialog&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.characters, characters)&&const DeepCollectionEquality().equals(other.clues, clues)&&const DeepCollectionEquality().equals(other.enigmas, enigmas)&&const DeepCollectionEquality().equals(other.locations, locations)&&(identical(other.switchId, switchId) || other.switchId == switchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,const DeepCollectionEquality().hash(characters),const DeepCollectionEquality().hash(clues),const DeepCollectionEquality().hash(enigmas),const DeepCollectionEquality().hash(locations),switchId);

@override
String toString() {
  return 'ItemDialog(id: $id, content: $content, characters: $characters, clues: $clues, enigmas: $enigmas, locations: $locations, switchId: $switchId)';
}


}

/// @nodoc
abstract mixin class $ItemDialogCopyWith<$Res>  {
  factory $ItemDialogCopyWith(ItemDialog value, $Res Function(ItemDialog) _then) = _$ItemDialogCopyWithImpl;
@useResult
$Res call({
 int id, String content, List<int> characters, List<int> clues, List<int> enigmas, List<int> locations,@JsonKey(name: 'switch') int? switchId
});




}
/// @nodoc
class _$ItemDialogCopyWithImpl<$Res>
    implements $ItemDialogCopyWith<$Res> {
  _$ItemDialogCopyWithImpl(this._self, this._then);

  final ItemDialog _self;
  final $Res Function(ItemDialog) _then;

/// Create a copy of ItemDialog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? characters = null,Object? clues = null,Object? enigmas = null,Object? locations = null,Object? switchId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,clues: null == clues ? _self.clues : clues // ignore: cast_nullable_to_non_nullable
as List<int>,enigmas: null == enigmas ? _self.enigmas : enigmas // ignore: cast_nullable_to_non_nullable
as List<int>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<int>,switchId: freezed == switchId ? _self.switchId : switchId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemDialog].
extension ItemDialogPatterns on ItemDialog {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemDialog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemDialog() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemDialog value)  $default,){
final _that = this;
switch (_that) {
case _ItemDialog():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemDialog value)?  $default,){
final _that = this;
switch (_that) {
case _ItemDialog() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String content,  List<int> characters,  List<int> clues,  List<int> enigmas,  List<int> locations, @JsonKey(name: 'switch')  int? switchId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemDialog() when $default != null:
return $default(_that.id,_that.content,_that.characters,_that.clues,_that.enigmas,_that.locations,_that.switchId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String content,  List<int> characters,  List<int> clues,  List<int> enigmas,  List<int> locations, @JsonKey(name: 'switch')  int? switchId)  $default,) {final _that = this;
switch (_that) {
case _ItemDialog():
return $default(_that.id,_that.content,_that.characters,_that.clues,_that.enigmas,_that.locations,_that.switchId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String content,  List<int> characters,  List<int> clues,  List<int> enigmas,  List<int> locations, @JsonKey(name: 'switch')  int? switchId)?  $default,) {final _that = this;
switch (_that) {
case _ItemDialog() when $default != null:
return $default(_that.id,_that.content,_that.characters,_that.clues,_that.enigmas,_that.locations,_that.switchId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ItemDialog implements ItemDialog {
  const _ItemDialog({required this.id, required this.content, required final  List<int> characters, required final  List<int> clues, required final  List<int> enigmas, required final  List<int> locations, @JsonKey(name: 'switch') this.switchId}): _characters = characters,_clues = clues,_enigmas = enigmas,_locations = locations;
  factory _ItemDialog.fromJson(Map<String, dynamic> json) => _$ItemDialogFromJson(json);

@override final  int id;
@override final  String content;
 final  List<int> _characters;
@override List<int> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

 final  List<int> _clues;
@override List<int> get clues {
  if (_clues is EqualUnmodifiableListView) return _clues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clues);
}

 final  List<int> _enigmas;
@override List<int> get enigmas {
  if (_enigmas is EqualUnmodifiableListView) return _enigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enigmas);
}

 final  List<int> _locations;
@override List<int> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

@override@JsonKey(name: 'switch') final  int? switchId;

/// Create a copy of ItemDialog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemDialogCopyWith<_ItemDialog> get copyWith => __$ItemDialogCopyWithImpl<_ItemDialog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemDialogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemDialog&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._characters, _characters)&&const DeepCollectionEquality().equals(other._clues, _clues)&&const DeepCollectionEquality().equals(other._enigmas, _enigmas)&&const DeepCollectionEquality().equals(other._locations, _locations)&&(identical(other.switchId, switchId) || other.switchId == switchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,const DeepCollectionEquality().hash(_characters),const DeepCollectionEquality().hash(_clues),const DeepCollectionEquality().hash(_enigmas),const DeepCollectionEquality().hash(_locations),switchId);

@override
String toString() {
  return 'ItemDialog(id: $id, content: $content, characters: $characters, clues: $clues, enigmas: $enigmas, locations: $locations, switchId: $switchId)';
}


}

/// @nodoc
abstract mixin class _$ItemDialogCopyWith<$Res> implements $ItemDialogCopyWith<$Res> {
  factory _$ItemDialogCopyWith(_ItemDialog value, $Res Function(_ItemDialog) _then) = __$ItemDialogCopyWithImpl;
@override @useResult
$Res call({
 int id, String content, List<int> characters, List<int> clues, List<int> enigmas, List<int> locations,@JsonKey(name: 'switch') int? switchId
});




}
/// @nodoc
class __$ItemDialogCopyWithImpl<$Res>
    implements _$ItemDialogCopyWith<$Res> {
  __$ItemDialogCopyWithImpl(this._self, this._then);

  final _ItemDialog _self;
  final $Res Function(_ItemDialog) _then;

/// Create a copy of ItemDialog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? characters = null,Object? clues = null,Object? enigmas = null,Object? locations = null,Object? switchId = freezed,}) {
  return _then(_ItemDialog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,clues: null == clues ? _self._clues : clues // ignore: cast_nullable_to_non_nullable
as List<int>,enigmas: null == enigmas ? _self._enigmas : enigmas // ignore: cast_nullable_to_non_nullable
as List<int>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<int>,switchId: freezed == switchId ? _self.switchId : switchId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ItemsDialogs {

 List<ItemDialog> get itemsDialogsCharacters; List<ItemDialog> get itemsDialogsClues; List<ItemDialog> get itemsDialogsEnigmas; List<ItemDialog> get itemsDialogsLocations;
/// Create a copy of ItemsDialogs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsDialogsCopyWith<ItemsDialogs> get copyWith => _$ItemsDialogsCopyWithImpl<ItemsDialogs>(this as ItemsDialogs, _$identity);

  /// Serializes this ItemsDialogs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsDialogs&&const DeepCollectionEquality().equals(other.itemsDialogsCharacters, itemsDialogsCharacters)&&const DeepCollectionEquality().equals(other.itemsDialogsClues, itemsDialogsClues)&&const DeepCollectionEquality().equals(other.itemsDialogsEnigmas, itemsDialogsEnigmas)&&const DeepCollectionEquality().equals(other.itemsDialogsLocations, itemsDialogsLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(itemsDialogsCharacters),const DeepCollectionEquality().hash(itemsDialogsClues),const DeepCollectionEquality().hash(itemsDialogsEnigmas),const DeepCollectionEquality().hash(itemsDialogsLocations));

@override
String toString() {
  return 'ItemsDialogs(itemsDialogsCharacters: $itemsDialogsCharacters, itemsDialogsClues: $itemsDialogsClues, itemsDialogsEnigmas: $itemsDialogsEnigmas, itemsDialogsLocations: $itemsDialogsLocations)';
}


}

/// @nodoc
abstract mixin class $ItemsDialogsCopyWith<$Res>  {
  factory $ItemsDialogsCopyWith(ItemsDialogs value, $Res Function(ItemsDialogs) _then) = _$ItemsDialogsCopyWithImpl;
@useResult
$Res call({
 List<ItemDialog> itemsDialogsCharacters, List<ItemDialog> itemsDialogsClues, List<ItemDialog> itemsDialogsEnigmas, List<ItemDialog> itemsDialogsLocations
});




}
/// @nodoc
class _$ItemsDialogsCopyWithImpl<$Res>
    implements $ItemsDialogsCopyWith<$Res> {
  _$ItemsDialogsCopyWithImpl(this._self, this._then);

  final ItemsDialogs _self;
  final $Res Function(ItemsDialogs) _then;

/// Create a copy of ItemsDialogs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemsDialogsCharacters = null,Object? itemsDialogsClues = null,Object? itemsDialogsEnigmas = null,Object? itemsDialogsLocations = null,}) {
  return _then(_self.copyWith(
itemsDialogsCharacters: null == itemsDialogsCharacters ? _self.itemsDialogsCharacters : itemsDialogsCharacters // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsClues: null == itemsDialogsClues ? _self.itemsDialogsClues : itemsDialogsClues // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsEnigmas: null == itemsDialogsEnigmas ? _self.itemsDialogsEnigmas : itemsDialogsEnigmas // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsLocations: null == itemsDialogsLocations ? _self.itemsDialogsLocations : itemsDialogsLocations // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemsDialogs].
extension ItemsDialogsPatterns on ItemsDialogs {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemsDialogs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemsDialogs() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemsDialogs value)  $default,){
final _that = this;
switch (_that) {
case _ItemsDialogs():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemsDialogs value)?  $default,){
final _that = this;
switch (_that) {
case _ItemsDialogs() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ItemDialog> itemsDialogsCharacters,  List<ItemDialog> itemsDialogsClues,  List<ItemDialog> itemsDialogsEnigmas,  List<ItemDialog> itemsDialogsLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemsDialogs() when $default != null:
return $default(_that.itemsDialogsCharacters,_that.itemsDialogsClues,_that.itemsDialogsEnigmas,_that.itemsDialogsLocations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ItemDialog> itemsDialogsCharacters,  List<ItemDialog> itemsDialogsClues,  List<ItemDialog> itemsDialogsEnigmas,  List<ItemDialog> itemsDialogsLocations)  $default,) {final _that = this;
switch (_that) {
case _ItemsDialogs():
return $default(_that.itemsDialogsCharacters,_that.itemsDialogsClues,_that.itemsDialogsEnigmas,_that.itemsDialogsLocations);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ItemDialog> itemsDialogsCharacters,  List<ItemDialog> itemsDialogsClues,  List<ItemDialog> itemsDialogsEnigmas,  List<ItemDialog> itemsDialogsLocations)?  $default,) {final _that = this;
switch (_that) {
case _ItemsDialogs() when $default != null:
return $default(_that.itemsDialogsCharacters,_that.itemsDialogsClues,_that.itemsDialogsEnigmas,_that.itemsDialogsLocations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ItemsDialogs extends ItemsDialogs {
  const _ItemsDialogs({required final  List<ItemDialog> itemsDialogsCharacters, required final  List<ItemDialog> itemsDialogsClues, required final  List<ItemDialog> itemsDialogsEnigmas, required final  List<ItemDialog> itemsDialogsLocations}): _itemsDialogsCharacters = itemsDialogsCharacters,_itemsDialogsClues = itemsDialogsClues,_itemsDialogsEnigmas = itemsDialogsEnigmas,_itemsDialogsLocations = itemsDialogsLocations,super._();
  factory _ItemsDialogs.fromJson(Map<String, dynamic> json) => _$ItemsDialogsFromJson(json);

 final  List<ItemDialog> _itemsDialogsCharacters;
@override List<ItemDialog> get itemsDialogsCharacters {
  if (_itemsDialogsCharacters is EqualUnmodifiableListView) return _itemsDialogsCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemsDialogsCharacters);
}

 final  List<ItemDialog> _itemsDialogsClues;
@override List<ItemDialog> get itemsDialogsClues {
  if (_itemsDialogsClues is EqualUnmodifiableListView) return _itemsDialogsClues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemsDialogsClues);
}

 final  List<ItemDialog> _itemsDialogsEnigmas;
@override List<ItemDialog> get itemsDialogsEnigmas {
  if (_itemsDialogsEnigmas is EqualUnmodifiableListView) return _itemsDialogsEnigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemsDialogsEnigmas);
}

 final  List<ItemDialog> _itemsDialogsLocations;
@override List<ItemDialog> get itemsDialogsLocations {
  if (_itemsDialogsLocations is EqualUnmodifiableListView) return _itemsDialogsLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemsDialogsLocations);
}


/// Create a copy of ItemsDialogs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsDialogsCopyWith<_ItemsDialogs> get copyWith => __$ItemsDialogsCopyWithImpl<_ItemsDialogs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsDialogsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsDialogs&&const DeepCollectionEquality().equals(other._itemsDialogsCharacters, _itemsDialogsCharacters)&&const DeepCollectionEquality().equals(other._itemsDialogsClues, _itemsDialogsClues)&&const DeepCollectionEquality().equals(other._itemsDialogsEnigmas, _itemsDialogsEnigmas)&&const DeepCollectionEquality().equals(other._itemsDialogsLocations, _itemsDialogsLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_itemsDialogsCharacters),const DeepCollectionEquality().hash(_itemsDialogsClues),const DeepCollectionEquality().hash(_itemsDialogsEnigmas),const DeepCollectionEquality().hash(_itemsDialogsLocations));

@override
String toString() {
  return 'ItemsDialogs(itemsDialogsCharacters: $itemsDialogsCharacters, itemsDialogsClues: $itemsDialogsClues, itemsDialogsEnigmas: $itemsDialogsEnigmas, itemsDialogsLocations: $itemsDialogsLocations)';
}


}

/// @nodoc
abstract mixin class _$ItemsDialogsCopyWith<$Res> implements $ItemsDialogsCopyWith<$Res> {
  factory _$ItemsDialogsCopyWith(_ItemsDialogs value, $Res Function(_ItemsDialogs) _then) = __$ItemsDialogsCopyWithImpl;
@override @useResult
$Res call({
 List<ItemDialog> itemsDialogsCharacters, List<ItemDialog> itemsDialogsClues, List<ItemDialog> itemsDialogsEnigmas, List<ItemDialog> itemsDialogsLocations
});




}
/// @nodoc
class __$ItemsDialogsCopyWithImpl<$Res>
    implements _$ItemsDialogsCopyWith<$Res> {
  __$ItemsDialogsCopyWithImpl(this._self, this._then);

  final _ItemsDialogs _self;
  final $Res Function(_ItemsDialogs) _then;

/// Create a copy of ItemsDialogs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemsDialogsCharacters = null,Object? itemsDialogsClues = null,Object? itemsDialogsEnigmas = null,Object? itemsDialogsLocations = null,}) {
  return _then(_ItemsDialogs(
itemsDialogsCharacters: null == itemsDialogsCharacters ? _self._itemsDialogsCharacters : itemsDialogsCharacters // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsClues: null == itemsDialogsClues ? _self._itemsDialogsClues : itemsDialogsClues // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsEnigmas: null == itemsDialogsEnigmas ? _self._itemsDialogsEnigmas : itemsDialogsEnigmas // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,itemsDialogsLocations: null == itemsDialogsLocations ? _self._itemsDialogsLocations : itemsDialogsLocations // ignore: cast_nullable_to_non_nullable
as List<ItemDialog>,
  ));
}


}

// dart format on
