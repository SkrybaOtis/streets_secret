// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Clue {

 int get id; String get name; String get description;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'qr_decoded') String? get qrDecoded;
/// Create a copy of Clue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClueCopyWith<Clue> get copyWith => _$ClueCopyWithImpl<Clue>(this as Clue, _$identity);

  /// Serializes this Clue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Clue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,qrDecoded);

@override
String toString() {
  return 'Clue(id: $id, name: $name, description: $description, imageUrl: $imageUrl, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class $ClueCopyWith<$Res>  {
  factory $ClueCopyWith(Clue value, $Res Function(Clue) _then) = _$ClueCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded
});




}
/// @nodoc
class _$ClueCopyWithImpl<$Res>
    implements $ClueCopyWith<$Res> {
  _$ClueCopyWithImpl(this._self, this._then);

  final Clue _self;
  final $Res Function(Clue) _then;

/// Create a copy of Clue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? qrDecoded = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Clue].
extension CluePatterns on Clue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Clue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Clue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Clue value)  $default,){
final _that = this;
switch (_that) {
case _Clue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Clue value)?  $default,){
final _that = this;
switch (_that) {
case _Clue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Clue() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)  $default,) {final _that = this;
switch (_that) {
case _Clue():
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded)?  $default,) {final _that = this;
switch (_that) {
case _Clue() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Clue implements Clue {
  const _Clue({required this.id, required this.name, required this.description, @JsonKey(name: 'image_url') required this.imageUrl, @JsonKey(name: 'qr_decoded') this.qrDecoded});
  factory _Clue.fromJson(Map<String, dynamic> json) => _$ClueFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'qr_decoded') final  String? qrDecoded;

/// Create a copy of Clue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClueCopyWith<_Clue> get copyWith => __$ClueCopyWithImpl<_Clue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Clue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,qrDecoded);

@override
String toString() {
  return 'Clue(id: $id, name: $name, description: $description, imageUrl: $imageUrl, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class _$ClueCopyWith<$Res> implements $ClueCopyWith<$Res> {
  factory _$ClueCopyWith(_Clue value, $Res Function(_Clue) _then) = __$ClueCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded
});




}
/// @nodoc
class __$ClueCopyWithImpl<$Res>
    implements _$ClueCopyWith<$Res> {
  __$ClueCopyWithImpl(this._self, this._then);

  final _Clue _self;
  final $Res Function(_Clue) _then;

/// Create a copy of Clue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? qrDecoded = freezed,}) {
  return _then(_Clue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
