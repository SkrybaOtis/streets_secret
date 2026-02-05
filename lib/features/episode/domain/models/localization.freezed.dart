// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Localization {

 String get city; String? get region; String get country; String get countryCode; double get centerLatitude; double get centerLongitude;
/// Create a copy of Localization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizationCopyWith<Localization> get copyWith => _$LocalizationCopyWithImpl<Localization>(this as Localization, _$identity);

  /// Serializes this Localization to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Localization&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.centerLatitude, centerLatitude) || other.centerLatitude == centerLatitude)&&(identical(other.centerLongitude, centerLongitude) || other.centerLongitude == centerLongitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,region,country,countryCode,centerLatitude,centerLongitude);

@override
String toString() {
  return 'Localization(city: $city, region: $region, country: $country, countryCode: $countryCode, centerLatitude: $centerLatitude, centerLongitude: $centerLongitude)';
}


}

/// @nodoc
abstract mixin class $LocalizationCopyWith<$Res>  {
  factory $LocalizationCopyWith(Localization value, $Res Function(Localization) _then) = _$LocalizationCopyWithImpl;
@useResult
$Res call({
 String city, String? region, String country, String countryCode, double centerLatitude, double centerLongitude
});




}
/// @nodoc
class _$LocalizationCopyWithImpl<$Res>
    implements $LocalizationCopyWith<$Res> {
  _$LocalizationCopyWithImpl(this._self, this._then);

  final Localization _self;
  final $Res Function(Localization) _then;

/// Create a copy of Localization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? region = freezed,Object? country = null,Object? countryCode = null,Object? centerLatitude = null,Object? centerLongitude = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,centerLatitude: null == centerLatitude ? _self.centerLatitude : centerLatitude // ignore: cast_nullable_to_non_nullable
as double,centerLongitude: null == centerLongitude ? _self.centerLongitude : centerLongitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Localization].
extension LocalizationPatterns on Localization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Localization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Localization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Localization value)  $default,){
final _that = this;
switch (_that) {
case _Localization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Localization value)?  $default,){
final _that = this;
switch (_that) {
case _Localization() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  String? region,  String country,  String countryCode,  double centerLatitude,  double centerLongitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Localization() when $default != null:
return $default(_that.city,_that.region,_that.country,_that.countryCode,_that.centerLatitude,_that.centerLongitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  String? region,  String country,  String countryCode,  double centerLatitude,  double centerLongitude)  $default,) {final _that = this;
switch (_that) {
case _Localization():
return $default(_that.city,_that.region,_that.country,_that.countryCode,_that.centerLatitude,_that.centerLongitude);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  String? region,  String country,  String countryCode,  double centerLatitude,  double centerLongitude)?  $default,) {final _that = this;
switch (_that) {
case _Localization() when $default != null:
return $default(_that.city,_that.region,_that.country,_that.countryCode,_that.centerLatitude,_that.centerLongitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Localization implements Localization {
  const _Localization({required this.city, this.region, required this.country, required this.countryCode, required this.centerLatitude, required this.centerLongitude});
  factory _Localization.fromJson(Map<String, dynamic> json) => _$LocalizationFromJson(json);

@override final  String city;
@override final  String? region;
@override final  String country;
@override final  String countryCode;
@override final  double centerLatitude;
@override final  double centerLongitude;

/// Create a copy of Localization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizationCopyWith<_Localization> get copyWith => __$LocalizationCopyWithImpl<_Localization>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Localization&&(identical(other.city, city) || other.city == city)&&(identical(other.region, region) || other.region == region)&&(identical(other.country, country) || other.country == country)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.centerLatitude, centerLatitude) || other.centerLatitude == centerLatitude)&&(identical(other.centerLongitude, centerLongitude) || other.centerLongitude == centerLongitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,region,country,countryCode,centerLatitude,centerLongitude);

@override
String toString() {
  return 'Localization(city: $city, region: $region, country: $country, countryCode: $countryCode, centerLatitude: $centerLatitude, centerLongitude: $centerLongitude)';
}


}

/// @nodoc
abstract mixin class _$LocalizationCopyWith<$Res> implements $LocalizationCopyWith<$Res> {
  factory _$LocalizationCopyWith(_Localization value, $Res Function(_Localization) _then) = __$LocalizationCopyWithImpl;
@override @useResult
$Res call({
 String city, String? region, String country, String countryCode, double centerLatitude, double centerLongitude
});




}
/// @nodoc
class __$LocalizationCopyWithImpl<$Res>
    implements _$LocalizationCopyWith<$Res> {
  __$LocalizationCopyWithImpl(this._self, this._then);

  final _Localization _self;
  final $Res Function(_Localization) _then;

/// Create a copy of Localization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? region = freezed,Object? country = null,Object? countryCode = null,Object? centerLatitude = null,Object? centerLongitude = null,}) {
  return _then(_Localization(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,centerLatitude: null == centerLatitude ? _self.centerLatitude : centerLatitude // ignore: cast_nullable_to_non_nullable
as double,centerLongitude: null == centerLongitude ? _self.centerLongitude : centerLongitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
