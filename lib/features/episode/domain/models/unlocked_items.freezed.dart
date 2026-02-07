// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unlocked_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnlockedItems {

 List<int> get characters; List<int> get clues; List<int> get enigmas; List<String> get locations; List<String> get availableLocations;
/// Create a copy of UnlockedItems
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnlockedItemsCopyWith<UnlockedItems> get copyWith => _$UnlockedItemsCopyWithImpl<UnlockedItems>(this as UnlockedItems, _$identity);

  /// Serializes this UnlockedItems to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnlockedItems&&const DeepCollectionEquality().equals(other.characters, characters)&&const DeepCollectionEquality().equals(other.clues, clues)&&const DeepCollectionEquality().equals(other.enigmas, enigmas)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.availableLocations, availableLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(characters),const DeepCollectionEquality().hash(clues),const DeepCollectionEquality().hash(enigmas),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(availableLocations));

@override
String toString() {
  return 'UnlockedItems(characters: $characters, clues: $clues, enigmas: $enigmas, locations: $locations, availableLocations: $availableLocations)';
}


}

/// @nodoc
abstract mixin class $UnlockedItemsCopyWith<$Res>  {
  factory $UnlockedItemsCopyWith(UnlockedItems value, $Res Function(UnlockedItems) _then) = _$UnlockedItemsCopyWithImpl;
@useResult
$Res call({
 List<int> characters, List<int> clues, List<int> enigmas, List<String> locations, List<String> availableLocations
});




}
/// @nodoc
class _$UnlockedItemsCopyWithImpl<$Res>
    implements $UnlockedItemsCopyWith<$Res> {
  _$UnlockedItemsCopyWithImpl(this._self, this._then);

  final UnlockedItems _self;
  final $Res Function(UnlockedItems) _then;

/// Create a copy of UnlockedItems
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characters = null,Object? clues = null,Object? enigmas = null,Object? locations = null,Object? availableLocations = null,}) {
  return _then(_self.copyWith(
characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,clues: null == clues ? _self.clues : clues // ignore: cast_nullable_to_non_nullable
as List<int>,enigmas: null == enigmas ? _self.enigmas : enigmas // ignore: cast_nullable_to_non_nullable
as List<int>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<String>,availableLocations: null == availableLocations ? _self.availableLocations : availableLocations // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UnlockedItems].
extension UnlockedItemsPatterns on UnlockedItems {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnlockedItems value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnlockedItems() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnlockedItems value)  $default,){
final _that = this;
switch (_that) {
case _UnlockedItems():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnlockedItems value)?  $default,){
final _that = this;
switch (_that) {
case _UnlockedItems() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> characters,  List<int> clues,  List<int> enigmas,  List<String> locations,  List<String> availableLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnlockedItems() when $default != null:
return $default(_that.characters,_that.clues,_that.enigmas,_that.locations,_that.availableLocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> characters,  List<int> clues,  List<int> enigmas,  List<String> locations,  List<String> availableLocations)  $default,) {final _that = this;
switch (_that) {
case _UnlockedItems():
return $default(_that.characters,_that.clues,_that.enigmas,_that.locations,_that.availableLocations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> characters,  List<int> clues,  List<int> enigmas,  List<String> locations,  List<String> availableLocations)?  $default,) {final _that = this;
switch (_that) {
case _UnlockedItems() when $default != null:
return $default(_that.characters,_that.clues,_that.enigmas,_that.locations,_that.availableLocations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnlockedItems extends UnlockedItems {
  const _UnlockedItems({final  List<int> characters = const [], final  List<int> clues = const [], final  List<int> enigmas = const [], final  List<String> locations = const [], final  List<String> availableLocations = const []}): _characters = characters,_clues = clues,_enigmas = enigmas,_locations = locations,_availableLocations = availableLocations,super._();
  factory _UnlockedItems.fromJson(Map<String, dynamic> json) => _$UnlockedItemsFromJson(json);

 final  List<int> _characters;
@override@JsonKey() List<int> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

 final  List<int> _clues;
@override@JsonKey() List<int> get clues {
  if (_clues is EqualUnmodifiableListView) return _clues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clues);
}

 final  List<int> _enigmas;
@override@JsonKey() List<int> get enigmas {
  if (_enigmas is EqualUnmodifiableListView) return _enigmas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_enigmas);
}

 final  List<String> _locations;
@override@JsonKey() List<String> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<String> _availableLocations;
@override@JsonKey() List<String> get availableLocations {
  if (_availableLocations is EqualUnmodifiableListView) return _availableLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableLocations);
}


/// Create a copy of UnlockedItems
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnlockedItemsCopyWith<_UnlockedItems> get copyWith => __$UnlockedItemsCopyWithImpl<_UnlockedItems>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnlockedItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnlockedItems&&const DeepCollectionEquality().equals(other._characters, _characters)&&const DeepCollectionEquality().equals(other._clues, _clues)&&const DeepCollectionEquality().equals(other._enigmas, _enigmas)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._availableLocations, _availableLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters),const DeepCollectionEquality().hash(_clues),const DeepCollectionEquality().hash(_enigmas),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_availableLocations));

@override
String toString() {
  return 'UnlockedItems(characters: $characters, clues: $clues, enigmas: $enigmas, locations: $locations, availableLocations: $availableLocations)';
}


}

/// @nodoc
abstract mixin class _$UnlockedItemsCopyWith<$Res> implements $UnlockedItemsCopyWith<$Res> {
  factory _$UnlockedItemsCopyWith(_UnlockedItems value, $Res Function(_UnlockedItems) _then) = __$UnlockedItemsCopyWithImpl;
@override @useResult
$Res call({
 List<int> characters, List<int> clues, List<int> enigmas, List<String> locations, List<String> availableLocations
});




}
/// @nodoc
class __$UnlockedItemsCopyWithImpl<$Res>
    implements _$UnlockedItemsCopyWith<$Res> {
  __$UnlockedItemsCopyWithImpl(this._self, this._then);

  final _UnlockedItems _self;
  final $Res Function(_UnlockedItems) _then;

/// Create a copy of UnlockedItems
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? clues = null,Object? enigmas = null,Object? locations = null,Object? availableLocations = null,}) {
  return _then(_UnlockedItems(
characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,clues: null == clues ? _self._clues : clues // ignore: cast_nullable_to_non_nullable
as List<int>,enigmas: null == enigmas ? _self._enigmas : enigmas // ignore: cast_nullable_to_non_nullable
as List<int>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<String>,availableLocations: null == availableLocations ? _self._availableLocations : availableLocations // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
