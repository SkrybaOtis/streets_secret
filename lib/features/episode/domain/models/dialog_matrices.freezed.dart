// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_matrices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DialogMatrices {

 List<List<int>> get dialogsMatrixCharacters; List<List<int>> get dialogsMatrixClues; List<List<int>> get dialogsMatrixEnigmas; List<List<int>> get dialogsMatrixLocations;
/// Create a copy of DialogMatrices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DialogMatricesCopyWith<DialogMatrices> get copyWith => _$DialogMatricesCopyWithImpl<DialogMatrices>(this as DialogMatrices, _$identity);

  /// Serializes this DialogMatrices to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DialogMatrices&&const DeepCollectionEquality().equals(other.dialogsMatrixCharacters, dialogsMatrixCharacters)&&const DeepCollectionEquality().equals(other.dialogsMatrixClues, dialogsMatrixClues)&&const DeepCollectionEquality().equals(other.dialogsMatrixEnigmas, dialogsMatrixEnigmas)&&const DeepCollectionEquality().equals(other.dialogsMatrixLocations, dialogsMatrixLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dialogsMatrixCharacters),const DeepCollectionEquality().hash(dialogsMatrixClues),const DeepCollectionEquality().hash(dialogsMatrixEnigmas),const DeepCollectionEquality().hash(dialogsMatrixLocations));

@override
String toString() {
  return 'DialogMatrices(dialogsMatrixCharacters: $dialogsMatrixCharacters, dialogsMatrixClues: $dialogsMatrixClues, dialogsMatrixEnigmas: $dialogsMatrixEnigmas, dialogsMatrixLocations: $dialogsMatrixLocations)';
}


}

/// @nodoc
abstract mixin class $DialogMatricesCopyWith<$Res>  {
  factory $DialogMatricesCopyWith(DialogMatrices value, $Res Function(DialogMatrices) _then) = _$DialogMatricesCopyWithImpl;
@useResult
$Res call({
 List<List<int>> dialogsMatrixCharacters, List<List<int>> dialogsMatrixClues, List<List<int>> dialogsMatrixEnigmas, List<List<int>> dialogsMatrixLocations
});




}
/// @nodoc
class _$DialogMatricesCopyWithImpl<$Res>
    implements $DialogMatricesCopyWith<$Res> {
  _$DialogMatricesCopyWithImpl(this._self, this._then);

  final DialogMatrices _self;
  final $Res Function(DialogMatrices) _then;

/// Create a copy of DialogMatrices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dialogsMatrixCharacters = null,Object? dialogsMatrixClues = null,Object? dialogsMatrixEnigmas = null,Object? dialogsMatrixLocations = null,}) {
  return _then(_self.copyWith(
dialogsMatrixCharacters: null == dialogsMatrixCharacters ? _self.dialogsMatrixCharacters : dialogsMatrixCharacters // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixClues: null == dialogsMatrixClues ? _self.dialogsMatrixClues : dialogsMatrixClues // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixEnigmas: null == dialogsMatrixEnigmas ? _self.dialogsMatrixEnigmas : dialogsMatrixEnigmas // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixLocations: null == dialogsMatrixLocations ? _self.dialogsMatrixLocations : dialogsMatrixLocations // ignore: cast_nullable_to_non_nullable
as List<List<int>>,
  ));
}

}


/// Adds pattern-matching-related methods to [DialogMatrices].
extension DialogMatricesPatterns on DialogMatrices {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DialogMatrices value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DialogMatrices() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DialogMatrices value)  $default,){
final _that = this;
switch (_that) {
case _DialogMatrices():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DialogMatrices value)?  $default,){
final _that = this;
switch (_that) {
case _DialogMatrices() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<List<int>> dialogsMatrixCharacters,  List<List<int>> dialogsMatrixClues,  List<List<int>> dialogsMatrixEnigmas,  List<List<int>> dialogsMatrixLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DialogMatrices() when $default != null:
return $default(_that.dialogsMatrixCharacters,_that.dialogsMatrixClues,_that.dialogsMatrixEnigmas,_that.dialogsMatrixLocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<List<int>> dialogsMatrixCharacters,  List<List<int>> dialogsMatrixClues,  List<List<int>> dialogsMatrixEnigmas,  List<List<int>> dialogsMatrixLocations)  $default,) {final _that = this;
switch (_that) {
case _DialogMatrices():
return $default(_that.dialogsMatrixCharacters,_that.dialogsMatrixClues,_that.dialogsMatrixEnigmas,_that.dialogsMatrixLocations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<List<int>> dialogsMatrixCharacters,  List<List<int>> dialogsMatrixClues,  List<List<int>> dialogsMatrixEnigmas,  List<List<int>> dialogsMatrixLocations)?  $default,) {final _that = this;
switch (_that) {
case _DialogMatrices() when $default != null:
return $default(_that.dialogsMatrixCharacters,_that.dialogsMatrixClues,_that.dialogsMatrixEnigmas,_that.dialogsMatrixLocations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DialogMatrices extends DialogMatrices {
  const _DialogMatrices({required final  List<List<int>> dialogsMatrixCharacters, required final  List<List<int>> dialogsMatrixClues, required final  List<List<int>> dialogsMatrixEnigmas, required final  List<List<int>> dialogsMatrixLocations}): _dialogsMatrixCharacters = dialogsMatrixCharacters,_dialogsMatrixClues = dialogsMatrixClues,_dialogsMatrixEnigmas = dialogsMatrixEnigmas,_dialogsMatrixLocations = dialogsMatrixLocations,super._();
  factory _DialogMatrices.fromJson(Map<String, dynamic> json) => _$DialogMatricesFromJson(json);

 final  List<List<int>> _dialogsMatrixCharacters;
@override List<List<int>> get dialogsMatrixCharacters {
  if (_dialogsMatrixCharacters is EqualUnmodifiableListView) return _dialogsMatrixCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dialogsMatrixCharacters);
}

 final  List<List<int>> _dialogsMatrixClues;
@override List<List<int>> get dialogsMatrixClues {
  if (_dialogsMatrixClues is EqualUnmodifiableListView) return _dialogsMatrixClues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dialogsMatrixClues);
}

 final  List<List<int>> _dialogsMatrixEnigmas;
@override List<List<int>> get dialogsMatrixEnigmas {
  if (_dialogsMatrixEnigmas is EqualUnmodifiableListView) return _dialogsMatrixEnigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dialogsMatrixEnigmas);
}

 final  List<List<int>> _dialogsMatrixLocations;
@override List<List<int>> get dialogsMatrixLocations {
  if (_dialogsMatrixLocations is EqualUnmodifiableListView) return _dialogsMatrixLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dialogsMatrixLocations);
}


/// Create a copy of DialogMatrices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DialogMatricesCopyWith<_DialogMatrices> get copyWith => __$DialogMatricesCopyWithImpl<_DialogMatrices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DialogMatricesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DialogMatrices&&const DeepCollectionEquality().equals(other._dialogsMatrixCharacters, _dialogsMatrixCharacters)&&const DeepCollectionEquality().equals(other._dialogsMatrixClues, _dialogsMatrixClues)&&const DeepCollectionEquality().equals(other._dialogsMatrixEnigmas, _dialogsMatrixEnigmas)&&const DeepCollectionEquality().equals(other._dialogsMatrixLocations, _dialogsMatrixLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dialogsMatrixCharacters),const DeepCollectionEquality().hash(_dialogsMatrixClues),const DeepCollectionEquality().hash(_dialogsMatrixEnigmas),const DeepCollectionEquality().hash(_dialogsMatrixLocations));

@override
String toString() {
  return 'DialogMatrices(dialogsMatrixCharacters: $dialogsMatrixCharacters, dialogsMatrixClues: $dialogsMatrixClues, dialogsMatrixEnigmas: $dialogsMatrixEnigmas, dialogsMatrixLocations: $dialogsMatrixLocations)';
}


}

/// @nodoc
abstract mixin class _$DialogMatricesCopyWith<$Res> implements $DialogMatricesCopyWith<$Res> {
  factory _$DialogMatricesCopyWith(_DialogMatrices value, $Res Function(_DialogMatrices) _then) = __$DialogMatricesCopyWithImpl;
@override @useResult
$Res call({
 List<List<int>> dialogsMatrixCharacters, List<List<int>> dialogsMatrixClues, List<List<int>> dialogsMatrixEnigmas, List<List<int>> dialogsMatrixLocations
});




}
/// @nodoc
class __$DialogMatricesCopyWithImpl<$Res>
    implements _$DialogMatricesCopyWith<$Res> {
  __$DialogMatricesCopyWithImpl(this._self, this._then);

  final _DialogMatrices _self;
  final $Res Function(_DialogMatrices) _then;

/// Create a copy of DialogMatrices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dialogsMatrixCharacters = null,Object? dialogsMatrixClues = null,Object? dialogsMatrixEnigmas = null,Object? dialogsMatrixLocations = null,}) {
  return _then(_DialogMatrices(
dialogsMatrixCharacters: null == dialogsMatrixCharacters ? _self._dialogsMatrixCharacters : dialogsMatrixCharacters // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixClues: null == dialogsMatrixClues ? _self._dialogsMatrixClues : dialogsMatrixClues // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixEnigmas: null == dialogsMatrixEnigmas ? _self._dialogsMatrixEnigmas : dialogsMatrixEnigmas // ignore: cast_nullable_to_non_nullable
as List<List<int>>,dialogsMatrixLocations: null == dialogsMatrixLocations ? _self._dialogsMatrixLocations : dialogsMatrixLocations // ignore: cast_nullable_to_non_nullable
as List<List<int>>,
  ));
}


}

// dart format on
