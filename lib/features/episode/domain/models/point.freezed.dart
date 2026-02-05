// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Point {

 String get id; String get name; String get description; double get latitude; double get longitude; bool get isMainPoint; int get order; String? get imagePath; String? get qrDecoded;
/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointCopyWith<Point> get copyWith => _$PointCopyWithImpl<Point>(this as Point, _$identity);

  /// Serializes this Point to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Point&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isMainPoint, isMainPoint) || other.isMainPoint == isMainPoint)&&(identical(other.order, order) || other.order == order)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isMainPoint,order,imagePath,qrDecoded);

@override
String toString() {
  return 'Point(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isMainPoint: $isMainPoint, order: $order, imagePath: $imagePath, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class $PointCopyWith<$Res>  {
  factory $PointCopyWith(Point value, $Res Function(Point) _then) = _$PointCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, double latitude, double longitude, bool isMainPoint, int order, String? imagePath, String? qrDecoded
});




}
/// @nodoc
class _$PointCopyWithImpl<$Res>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._self, this._then);

  final Point _self;
  final $Res Function(Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? latitude = null,Object? longitude = null,Object? isMainPoint = null,Object? order = null,Object? imagePath = freezed,Object? qrDecoded = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isMainPoint: null == isMainPoint ? _self.isMainPoint : isMainPoint // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Point].
extension PointPatterns on Point {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Point value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Point() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Point value)  $default,){
final _that = this;
switch (_that) {
case _Point():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Point value)?  $default,){
final _that = this;
switch (_that) {
case _Point() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double latitude,  double longitude,  bool isMainPoint,  int order,  String? imagePath,  String? qrDecoded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isMainPoint,_that.order,_that.imagePath,_that.qrDecoded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double latitude,  double longitude,  bool isMainPoint,  int order,  String? imagePath,  String? qrDecoded)  $default,) {final _that = this;
switch (_that) {
case _Point():
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isMainPoint,_that.order,_that.imagePath,_that.qrDecoded);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  double latitude,  double longitude,  bool isMainPoint,  int order,  String? imagePath,  String? qrDecoded)?  $default,) {final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isMainPoint,_that.order,_that.imagePath,_that.qrDecoded);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Point implements Point {
  const _Point({required this.id, required this.name, required this.description, required this.latitude, required this.longitude, required this.isMainPoint, required this.order, this.imagePath, this.qrDecoded});
  factory _Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  double latitude;
@override final  double longitude;
@override final  bool isMainPoint;
@override final  int order;
@override final  String? imagePath;
@override final  String? qrDecoded;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointCopyWith<_Point> get copyWith => __$PointCopyWithImpl<_Point>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Point&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isMainPoint, isMainPoint) || other.isMainPoint == isMainPoint)&&(identical(other.order, order) || other.order == order)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isMainPoint,order,imagePath,qrDecoded);

@override
String toString() {
  return 'Point(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isMainPoint: $isMainPoint, order: $order, imagePath: $imagePath, qrDecoded: $qrDecoded)';
}


}

/// @nodoc
abstract mixin class _$PointCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$PointCopyWith(_Point value, $Res Function(_Point) _then) = __$PointCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, double latitude, double longitude, bool isMainPoint, int order, String? imagePath, String? qrDecoded
});




}
/// @nodoc
class __$PointCopyWithImpl<$Res>
    implements _$PointCopyWith<$Res> {
  __$PointCopyWithImpl(this._self, this._then);

  final _Point _self;
  final $Res Function(_Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? latitude = null,Object? longitude = null,Object? isMainPoint = null,Object? order = null,Object? imagePath = freezed,Object? qrDecoded = freezed,}) {
  return _then(_Point(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isMainPoint: null == isMainPoint ? _self.isMainPoint : isMainPoint // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
