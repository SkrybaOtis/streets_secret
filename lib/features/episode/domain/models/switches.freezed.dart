// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchItem {

 int get id; String get groupName; int get idCharacter; int get idGroupItem; int get idNewDialog;
/// Create a copy of SwitchItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchItemCopyWith<SwitchItem> get copyWith => _$SwitchItemCopyWithImpl<SwitchItem>(this as SwitchItem, _$identity);

  /// Serializes this SwitchItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchItem&&(identical(other.id, id) || other.id == id)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.idCharacter, idCharacter) || other.idCharacter == idCharacter)&&(identical(other.idGroupItem, idGroupItem) || other.idGroupItem == idGroupItem)&&(identical(other.idNewDialog, idNewDialog) || other.idNewDialog == idNewDialog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupName,idCharacter,idGroupItem,idNewDialog);

@override
String toString() {
  return 'SwitchItem(id: $id, groupName: $groupName, idCharacter: $idCharacter, idGroupItem: $idGroupItem, idNewDialog: $idNewDialog)';
}


}

/// @nodoc
abstract mixin class $SwitchItemCopyWith<$Res>  {
  factory $SwitchItemCopyWith(SwitchItem value, $Res Function(SwitchItem) _then) = _$SwitchItemCopyWithImpl;
@useResult
$Res call({
 int id, String groupName, int idCharacter, int idGroupItem, int idNewDialog
});




}
/// @nodoc
class _$SwitchItemCopyWithImpl<$Res>
    implements $SwitchItemCopyWith<$Res> {
  _$SwitchItemCopyWithImpl(this._self, this._then);

  final SwitchItem _self;
  final $Res Function(SwitchItem) _then;

/// Create a copy of SwitchItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupName = null,Object? idCharacter = null,Object? idGroupItem = null,Object? idNewDialog = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,idCharacter: null == idCharacter ? _self.idCharacter : idCharacter // ignore: cast_nullable_to_non_nullable
as int,idGroupItem: null == idGroupItem ? _self.idGroupItem : idGroupItem // ignore: cast_nullable_to_non_nullable
as int,idNewDialog: null == idNewDialog ? _self.idNewDialog : idNewDialog // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SwitchItem].
extension SwitchItemPatterns on SwitchItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwitchItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwitchItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwitchItem value)  $default,){
final _that = this;
switch (_that) {
case _SwitchItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwitchItem value)?  $default,){
final _that = this;
switch (_that) {
case _SwitchItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String groupName,  int idCharacter,  int idGroupItem,  int idNewDialog)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwitchItem() when $default != null:
return $default(_that.id,_that.groupName,_that.idCharacter,_that.idGroupItem,_that.idNewDialog);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String groupName,  int idCharacter,  int idGroupItem,  int idNewDialog)  $default,) {final _that = this;
switch (_that) {
case _SwitchItem():
return $default(_that.id,_that.groupName,_that.idCharacter,_that.idGroupItem,_that.idNewDialog);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String groupName,  int idCharacter,  int idGroupItem,  int idNewDialog)?  $default,) {final _that = this;
switch (_that) {
case _SwitchItem() when $default != null:
return $default(_that.id,_that.groupName,_that.idCharacter,_that.idGroupItem,_that.idNewDialog);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SwitchItem implements SwitchItem {
  const _SwitchItem({required this.id, required this.groupName, required this.idCharacter, required this.idGroupItem, required this.idNewDialog});
  factory _SwitchItem.fromJson(Map<String, dynamic> json) => _$SwitchItemFromJson(json);

@override final  int id;
@override final  String groupName;
@override final  int idCharacter;
@override final  int idGroupItem;
@override final  int idNewDialog;

/// Create a copy of SwitchItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchItemCopyWith<_SwitchItem> get copyWith => __$SwitchItemCopyWithImpl<_SwitchItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchItem&&(identical(other.id, id) || other.id == id)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.idCharacter, idCharacter) || other.idCharacter == idCharacter)&&(identical(other.idGroupItem, idGroupItem) || other.idGroupItem == idGroupItem)&&(identical(other.idNewDialog, idNewDialog) || other.idNewDialog == idNewDialog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,groupName,idCharacter,idGroupItem,idNewDialog);

@override
String toString() {
  return 'SwitchItem(id: $id, groupName: $groupName, idCharacter: $idCharacter, idGroupItem: $idGroupItem, idNewDialog: $idNewDialog)';
}


}

/// @nodoc
abstract mixin class _$SwitchItemCopyWith<$Res> implements $SwitchItemCopyWith<$Res> {
  factory _$SwitchItemCopyWith(_SwitchItem value, $Res Function(_SwitchItem) _then) = __$SwitchItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String groupName, int idCharacter, int idGroupItem, int idNewDialog
});




}
/// @nodoc
class __$SwitchItemCopyWithImpl<$Res>
    implements _$SwitchItemCopyWith<$Res> {
  __$SwitchItemCopyWithImpl(this._self, this._then);

  final _SwitchItem _self;
  final $Res Function(_SwitchItem) _then;

/// Create a copy of SwitchItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupName = null,Object? idCharacter = null,Object? idGroupItem = null,Object? idNewDialog = null,}) {
  return _then(_SwitchItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,idCharacter: null == idCharacter ? _self.idCharacter : idCharacter // ignore: cast_nullable_to_non_nullable
as int,idGroupItem: null == idGroupItem ? _self.idGroupItem : idGroupItem // ignore: cast_nullable_to_non_nullable
as int,idNewDialog: null == idNewDialog ? _self.idNewDialog : idNewDialog // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Switches {

 List<SwitchItem> get switchesCharacters; List<SwitchItem> get switchClues; List<SwitchItem> get switchEnigmas; List<SwitchItem> get switchLocations;
/// Create a copy of Switches
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchesCopyWith<Switches> get copyWith => _$SwitchesCopyWithImpl<Switches>(this as Switches, _$identity);

  /// Serializes this Switches to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Switches&&const DeepCollectionEquality().equals(other.switchesCharacters, switchesCharacters)&&const DeepCollectionEquality().equals(other.switchClues, switchClues)&&const DeepCollectionEquality().equals(other.switchEnigmas, switchEnigmas)&&const DeepCollectionEquality().equals(other.switchLocations, switchLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(switchesCharacters),const DeepCollectionEquality().hash(switchClues),const DeepCollectionEquality().hash(switchEnigmas),const DeepCollectionEquality().hash(switchLocations));

@override
String toString() {
  return 'Switches(switchesCharacters: $switchesCharacters, switchClues: $switchClues, switchEnigmas: $switchEnigmas, switchLocations: $switchLocations)';
}


}

/// @nodoc
abstract mixin class $SwitchesCopyWith<$Res>  {
  factory $SwitchesCopyWith(Switches value, $Res Function(Switches) _then) = _$SwitchesCopyWithImpl;
@useResult
$Res call({
 List<SwitchItem> switchesCharacters, List<SwitchItem> switchClues, List<SwitchItem> switchEnigmas, List<SwitchItem> switchLocations
});




}
/// @nodoc
class _$SwitchesCopyWithImpl<$Res>
    implements $SwitchesCopyWith<$Res> {
  _$SwitchesCopyWithImpl(this._self, this._then);

  final Switches _self;
  final $Res Function(Switches) _then;

/// Create a copy of Switches
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? switchesCharacters = null,Object? switchClues = null,Object? switchEnigmas = null,Object? switchLocations = null,}) {
  return _then(_self.copyWith(
switchesCharacters: null == switchesCharacters ? _self.switchesCharacters : switchesCharacters // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchClues: null == switchClues ? _self.switchClues : switchClues // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchEnigmas: null == switchEnigmas ? _self.switchEnigmas : switchEnigmas // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchLocations: null == switchLocations ? _self.switchLocations : switchLocations // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [Switches].
extension SwitchesPatterns on Switches {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Switches value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Switches() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Switches value)  $default,){
final _that = this;
switch (_that) {
case _Switches():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Switches value)?  $default,){
final _that = this;
switch (_that) {
case _Switches() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SwitchItem> switchesCharacters,  List<SwitchItem> switchClues,  List<SwitchItem> switchEnigmas,  List<SwitchItem> switchLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Switches() when $default != null:
return $default(_that.switchesCharacters,_that.switchClues,_that.switchEnigmas,_that.switchLocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SwitchItem> switchesCharacters,  List<SwitchItem> switchClues,  List<SwitchItem> switchEnigmas,  List<SwitchItem> switchLocations)  $default,) {final _that = this;
switch (_that) {
case _Switches():
return $default(_that.switchesCharacters,_that.switchClues,_that.switchEnigmas,_that.switchLocations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SwitchItem> switchesCharacters,  List<SwitchItem> switchClues,  List<SwitchItem> switchEnigmas,  List<SwitchItem> switchLocations)?  $default,) {final _that = this;
switch (_that) {
case _Switches() when $default != null:
return $default(_that.switchesCharacters,_that.switchClues,_that.switchEnigmas,_that.switchLocations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Switches implements Switches {
  const _Switches({required final  List<SwitchItem> switchesCharacters, required final  List<SwitchItem> switchClues, required final  List<SwitchItem> switchEnigmas, required final  List<SwitchItem> switchLocations}): _switchesCharacters = switchesCharacters,_switchClues = switchClues,_switchEnigmas = switchEnigmas,_switchLocations = switchLocations;
  factory _Switches.fromJson(Map<String, dynamic> json) => _$SwitchesFromJson(json);

 final  List<SwitchItem> _switchesCharacters;
@override List<SwitchItem> get switchesCharacters {
  if (_switchesCharacters is EqualUnmodifiableListView) return _switchesCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_switchesCharacters);
}

 final  List<SwitchItem> _switchClues;
@override List<SwitchItem> get switchClues {
  if (_switchClues is EqualUnmodifiableListView) return _switchClues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_switchClues);
}

 final  List<SwitchItem> _switchEnigmas;
@override List<SwitchItem> get switchEnigmas {
  if (_switchEnigmas is EqualUnmodifiableListView) return _switchEnigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_switchEnigmas);
}

 final  List<SwitchItem> _switchLocations;
@override List<SwitchItem> get switchLocations {
  if (_switchLocations is EqualUnmodifiableListView) return _switchLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_switchLocations);
}


/// Create a copy of Switches
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchesCopyWith<_Switches> get copyWith => __$SwitchesCopyWithImpl<_Switches>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Switches&&const DeepCollectionEquality().equals(other._switchesCharacters, _switchesCharacters)&&const DeepCollectionEquality().equals(other._switchClues, _switchClues)&&const DeepCollectionEquality().equals(other._switchEnigmas, _switchEnigmas)&&const DeepCollectionEquality().equals(other._switchLocations, _switchLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_switchesCharacters),const DeepCollectionEquality().hash(_switchClues),const DeepCollectionEquality().hash(_switchEnigmas),const DeepCollectionEquality().hash(_switchLocations));

@override
String toString() {
  return 'Switches(switchesCharacters: $switchesCharacters, switchClues: $switchClues, switchEnigmas: $switchEnigmas, switchLocations: $switchLocations)';
}


}

/// @nodoc
abstract mixin class _$SwitchesCopyWith<$Res> implements $SwitchesCopyWith<$Res> {
  factory _$SwitchesCopyWith(_Switches value, $Res Function(_Switches) _then) = __$SwitchesCopyWithImpl;
@override @useResult
$Res call({
 List<SwitchItem> switchesCharacters, List<SwitchItem> switchClues, List<SwitchItem> switchEnigmas, List<SwitchItem> switchLocations
});




}
/// @nodoc
class __$SwitchesCopyWithImpl<$Res>
    implements _$SwitchesCopyWith<$Res> {
  __$SwitchesCopyWithImpl(this._self, this._then);

  final _Switches _self;
  final $Res Function(_Switches) _then;

/// Create a copy of Switches
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? switchesCharacters = null,Object? switchClues = null,Object? switchEnigmas = null,Object? switchLocations = null,}) {
  return _then(_Switches(
switchesCharacters: null == switchesCharacters ? _self._switchesCharacters : switchesCharacters // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchClues: null == switchClues ? _self._switchClues : switchClues // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchEnigmas: null == switchEnigmas ? _self._switchEnigmas : switchEnigmas // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,switchLocations: null == switchLocations ? _self._switchLocations : switchLocations // ignore: cast_nullable_to_non_nullable
as List<SwitchItem>,
  ));
}


}

// dart format on
