// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bases {

 List<Character> get baseCharacters; List<Clue> get baseClues; List<Enigma> get baseEnigmas; List<GameLocation> get baseLocations;
/// Create a copy of Bases
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasesCopyWith<Bases> get copyWith => _$BasesCopyWithImpl<Bases>(this as Bases, _$identity);

  /// Serializes this Bases to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bases&&const DeepCollectionEquality().equals(other.baseCharacters, baseCharacters)&&const DeepCollectionEquality().equals(other.baseClues, baseClues)&&const DeepCollectionEquality().equals(other.baseEnigmas, baseEnigmas)&&const DeepCollectionEquality().equals(other.baseLocations, baseLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(baseCharacters),const DeepCollectionEquality().hash(baseClues),const DeepCollectionEquality().hash(baseEnigmas),const DeepCollectionEquality().hash(baseLocations));

@override
String toString() {
  return 'Bases(baseCharacters: $baseCharacters, baseClues: $baseClues, baseEnigmas: $baseEnigmas, baseLocations: $baseLocations)';
}


}

/// @nodoc
abstract mixin class $BasesCopyWith<$Res>  {
  factory $BasesCopyWith(Bases value, $Res Function(Bases) _then) = _$BasesCopyWithImpl;
@useResult
$Res call({
 List<Character> baseCharacters, List<Clue> baseClues, List<Enigma> baseEnigmas, List<GameLocation> baseLocations
});




}
/// @nodoc
class _$BasesCopyWithImpl<$Res>
    implements $BasesCopyWith<$Res> {
  _$BasesCopyWithImpl(this._self, this._then);

  final Bases _self;
  final $Res Function(Bases) _then;

/// Create a copy of Bases
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseCharacters = null,Object? baseClues = null,Object? baseEnigmas = null,Object? baseLocations = null,}) {
  return _then(_self.copyWith(
baseCharacters: null == baseCharacters ? _self.baseCharacters : baseCharacters // ignore: cast_nullable_to_non_nullable
as List<Character>,baseClues: null == baseClues ? _self.baseClues : baseClues // ignore: cast_nullable_to_non_nullable
as List<Clue>,baseEnigmas: null == baseEnigmas ? _self.baseEnigmas : baseEnigmas // ignore: cast_nullable_to_non_nullable
as List<Enigma>,baseLocations: null == baseLocations ? _self.baseLocations : baseLocations // ignore: cast_nullable_to_non_nullable
as List<GameLocation>,
  ));
}

}


/// Adds pattern-matching-related methods to [Bases].
extension BasesPatterns on Bases {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bases value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bases() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bases value)  $default,){
final _that = this;
switch (_that) {
case _Bases():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bases value)?  $default,){
final _that = this;
switch (_that) {
case _Bases() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Character> baseCharacters,  List<Clue> baseClues,  List<Enigma> baseEnigmas,  List<GameLocation> baseLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bases() when $default != null:
return $default(_that.baseCharacters,_that.baseClues,_that.baseEnigmas,_that.baseLocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Character> baseCharacters,  List<Clue> baseClues,  List<Enigma> baseEnigmas,  List<GameLocation> baseLocations)  $default,) {final _that = this;
switch (_that) {
case _Bases():
return $default(_that.baseCharacters,_that.baseClues,_that.baseEnigmas,_that.baseLocations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Character> baseCharacters,  List<Clue> baseClues,  List<Enigma> baseEnigmas,  List<GameLocation> baseLocations)?  $default,) {final _that = this;
switch (_that) {
case _Bases() when $default != null:
return $default(_that.baseCharacters,_that.baseClues,_that.baseEnigmas,_that.baseLocations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Bases implements Bases {
  const _Bases({required final  List<Character> baseCharacters, required final  List<Clue> baseClues, required final  List<Enigma> baseEnigmas, required final  List<GameLocation> baseLocations}): _baseCharacters = baseCharacters,_baseClues = baseClues,_baseEnigmas = baseEnigmas,_baseLocations = baseLocations;
  factory _Bases.fromJson(Map<String, dynamic> json) => _$BasesFromJson(json);

 final  List<Character> _baseCharacters;
@override List<Character> get baseCharacters {
  if (_baseCharacters is EqualUnmodifiableListView) return _baseCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baseCharacters);
}

 final  List<Clue> _baseClues;
@override List<Clue> get baseClues {
  if (_baseClues is EqualUnmodifiableListView) return _baseClues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baseClues);
}

 final  List<Enigma> _baseEnigmas;
@override List<Enigma> get baseEnigmas {
  if (_baseEnigmas is EqualUnmodifiableListView) return _baseEnigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baseEnigmas);
}

 final  List<GameLocation> _baseLocations;
@override List<GameLocation> get baseLocations {
  if (_baseLocations is EqualUnmodifiableListView) return _baseLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_baseLocations);
}


/// Create a copy of Bases
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasesCopyWith<_Bases> get copyWith => __$BasesCopyWithImpl<_Bases>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bases&&const DeepCollectionEquality().equals(other._baseCharacters, _baseCharacters)&&const DeepCollectionEquality().equals(other._baseClues, _baseClues)&&const DeepCollectionEquality().equals(other._baseEnigmas, _baseEnigmas)&&const DeepCollectionEquality().equals(other._baseLocations, _baseLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_baseCharacters),const DeepCollectionEquality().hash(_baseClues),const DeepCollectionEquality().hash(_baseEnigmas),const DeepCollectionEquality().hash(_baseLocations));

@override
String toString() {
  return 'Bases(baseCharacters: $baseCharacters, baseClues: $baseClues, baseEnigmas: $baseEnigmas, baseLocations: $baseLocations)';
}


}

/// @nodoc
abstract mixin class _$BasesCopyWith<$Res> implements $BasesCopyWith<$Res> {
  factory _$BasesCopyWith(_Bases value, $Res Function(_Bases) _then) = __$BasesCopyWithImpl;
@override @useResult
$Res call({
 List<Character> baseCharacters, List<Clue> baseClues, List<Enigma> baseEnigmas, List<GameLocation> baseLocations
});




}
/// @nodoc
class __$BasesCopyWithImpl<$Res>
    implements _$BasesCopyWith<$Res> {
  __$BasesCopyWithImpl(this._self, this._then);

  final _Bases _self;
  final $Res Function(_Bases) _then;

/// Create a copy of Bases
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseCharacters = null,Object? baseClues = null,Object? baseEnigmas = null,Object? baseLocations = null,}) {
  return _then(_Bases(
baseCharacters: null == baseCharacters ? _self._baseCharacters : baseCharacters // ignore: cast_nullable_to_non_nullable
as List<Character>,baseClues: null == baseClues ? _self._baseClues : baseClues // ignore: cast_nullable_to_non_nullable
as List<Clue>,baseEnigmas: null == baseEnigmas ? _self._baseEnigmas : baseEnigmas // ignore: cast_nullable_to_non_nullable
as List<Enigma>,baseLocations: null == baseLocations ? _self._baseLocations : baseLocations // ignore: cast_nullable_to_non_nullable
as List<GameLocation>,
  ));
}


}

// dart format on
