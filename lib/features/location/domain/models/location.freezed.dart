// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameLocation {

 String get id; String get name; String get description; double get latitude; double get longitude; List<int> get characters;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'qr_decoded') String? get qrDecoded;
/// Create a copy of GameLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameLocationCopyWith<GameLocation> get copyWith => _$GameLocationCopyWithImpl<GameLocation>(this as GameLocation, _$identity);

  /// Serializes this GameLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other.characters, characters)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,const DeepCollectionEquality().hash(characters),imageUrl,qrDecoded);

@override
String toString() {
  return 'GameLocation(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, characters: $characters, imageUrl: $imageUrl, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class $GameLocationCopyWith<$Res>  {
  factory $GameLocationCopyWith(GameLocation value, $Res Function(GameLocation) _then) = _$GameLocationCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, double latitude, double longitude, List<int> characters,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded
});




}
/// @nodoc
class _$GameLocationCopyWithImpl<$Res>
    implements $GameLocationCopyWith<$Res> {
  _$GameLocationCopyWithImpl(this._self, this._then);

  final GameLocation _self;
  final $Res Function(GameLocation) _then;

/// Create a copy of GameLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? latitude = null,Object? longitude = null,Object? characters = null,Object? imageUrl = freezed,Object? qrDecoded = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameLocation].
extension GameLocationPatterns on GameLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameLocation value)  $default,){
final _that = this;
switch (_that) {
case _GameLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameLocation value)?  $default,){
final _that = this;
switch (_that) {
case _GameLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double latitude,  double longitude,  List<int> characters, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameLocation() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.characters,_that.imageUrl,_that.qrDecoded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double latitude,  double longitude,  List<int> characters, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)  $default,) {final _that = this;
switch (_that) {
case _GameLocation():
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.characters,_that.imageUrl,_that.qrDecoded);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  double latitude,  double longitude,  List<int> characters, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)?  $default,) {final _that = this;
switch (_that) {
case _GameLocation() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.characters,_that.imageUrl,_that.qrDecoded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameLocation extends GameLocation {
  const _GameLocation({required this.id, required this.name, required this.description, required this.latitude, required this.longitude, final  List<int> characters = const [], @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'qr_decoded') this.qrDecoded}): _characters = characters,super._();
  factory _GameLocation.fromJson(Map<String, dynamic> json) => _$GameLocationFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  double latitude;
@override final  double longitude;
 final  List<int> _characters;
@override@JsonKey() List<int> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'qr_decoded') final  String? qrDecoded;

/// Create a copy of GameLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameLocationCopyWith<_GameLocation> get copyWith => __$GameLocationCopyWithImpl<_GameLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,const DeepCollectionEquality().hash(_characters),imageUrl,qrDecoded);

@override
String toString() {
  return 'GameLocation(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, characters: $characters, imageUrl: $imageUrl, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class _$GameLocationCopyWith<$Res> implements $GameLocationCopyWith<$Res> {
  factory _$GameLocationCopyWith(_GameLocation value, $Res Function(_GameLocation) _then) = __$GameLocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, double latitude, double longitude, List<int> characters,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded
});




}
/// @nodoc
class __$GameLocationCopyWithImpl<$Res>
    implements _$GameLocationCopyWith<$Res> {
  __$GameLocationCopyWithImpl(this._self, this._then);

  final _GameLocation _self;
  final $Res Function(_GameLocation) _then;

/// Create a copy of GameLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? latitude = null,Object? longitude = null,Object? characters = null,Object? imageUrl = freezed,Object? qrDecoded = freezed,}) {
  return _then(_GameLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<int>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
