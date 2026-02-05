// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enigma.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Enigma {

 int get id; String get name; String get description;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'qr_decoded') String? get qrDecoded; int get maxAttempts; bool get isSolved; String? get correctAnswer; List<int>? get validAnswerCharacterIds; List<int>? get validAnswerClueIds;
/// Create a copy of Enigma
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnigmaCopyWith<Enigma> get copyWith => _$EnigmaCopyWithImpl<Enigma>(this as Enigma, _$identity);

  /// Serializes this Enigma to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Enigma&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded)&&(identical(other.maxAttempts, maxAttempts) || other.maxAttempts == maxAttempts)&&(identical(other.isSolved, isSolved) || other.isSolved == isSolved)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other.validAnswerCharacterIds, validAnswerCharacterIds)&&const DeepCollectionEquality().equals(other.validAnswerClueIds, validAnswerClueIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,qrDecoded,maxAttempts,isSolved,correctAnswer,const DeepCollectionEquality().hash(validAnswerCharacterIds),const DeepCollectionEquality().hash(validAnswerClueIds));

@override
String toString() {
  return 'Enigma(id: $id, name: $name, description: $description, imageUrl: $imageUrl, qrDecoded: $qrDecoded, maxAttempts: $maxAttempts, isSolved: $isSolved, correctAnswer: $correctAnswer, validAnswerCharacterIds: $validAnswerCharacterIds, validAnswerClueIds: $validAnswerClueIds)';
}


}

/// @nodoc
abstract mixin class $EnigmaCopyWith<$Res>  {
  factory $EnigmaCopyWith(Enigma value, $Res Function(Enigma) _then) = _$EnigmaCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded, int maxAttempts, bool isSolved, String? correctAnswer, List<int>? validAnswerCharacterIds, List<int>? validAnswerClueIds
});




}
/// @nodoc
class _$EnigmaCopyWithImpl<$Res>
    implements $EnigmaCopyWith<$Res> {
  _$EnigmaCopyWithImpl(this._self, this._then);

  final Enigma _self;
  final $Res Function(Enigma) _then;

/// Create a copy of Enigma
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? qrDecoded = freezed,Object? maxAttempts = null,Object? isSolved = null,Object? correctAnswer = freezed,Object? validAnswerCharacterIds = freezed,Object? validAnswerClueIds = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,maxAttempts: null == maxAttempts ? _self.maxAttempts : maxAttempts // ignore: cast_nullable_to_non_nullable
as int,isSolved: null == isSolved ? _self.isSolved : isSolved // ignore: cast_nullable_to_non_nullable
as bool,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,validAnswerCharacterIds: freezed == validAnswerCharacterIds ? _self.validAnswerCharacterIds : validAnswerCharacterIds // ignore: cast_nullable_to_non_nullable
as List<int>?,validAnswerClueIds: freezed == validAnswerClueIds ? _self.validAnswerClueIds : validAnswerClueIds // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Enigma].
extension EnigmaPatterns on Enigma {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Enigma value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Enigma() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Enigma value)  $default,){
final _that = this;
switch (_that) {
case _Enigma():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Enigma value)?  $default,){
final _that = this;
switch (_that) {
case _Enigma() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded,  int maxAttempts,  bool isSolved,  String? correctAnswer,  List<int>? validAnswerCharacterIds,  List<int>? validAnswerClueIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Enigma() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded,_that.maxAttempts,_that.isSolved,_that.correctAnswer,_that.validAnswerCharacterIds,_that.validAnswerClueIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded,  int maxAttempts,  bool isSolved,  String? correctAnswer,  List<int>? validAnswerCharacterIds,  List<int>? validAnswerClueIds)  $default,) {final _that = this;
switch (_that) {
case _Enigma():
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded,_that.maxAttempts,_that.isSolved,_that.correctAnswer,_that.validAnswerCharacterIds,_that.validAnswerClueIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description, @JsonKey(name: 'image_url')  String imageUrl, @JsonKey(name: 'qr_decoded')  String? qrDecoded,  int maxAttempts,  bool isSolved,  String? correctAnswer,  List<int>? validAnswerCharacterIds,  List<int>? validAnswerClueIds)?  $default,) {final _that = this;
switch (_that) {
case _Enigma() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.qrDecoded,_that.maxAttempts,_that.isSolved,_that.correctAnswer,_that.validAnswerCharacterIds,_that.validAnswerClueIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Enigma implements Enigma {
  const _Enigma({required this.id, required this.name, required this.description, @JsonKey(name: 'image_url') required this.imageUrl, @JsonKey(name: 'qr_decoded') this.qrDecoded, this.maxAttempts = 3, this.isSolved = false, this.correctAnswer, final  List<int>? validAnswerCharacterIds, final  List<int>? validAnswerClueIds}): _validAnswerCharacterIds = validAnswerCharacterIds,_validAnswerClueIds = validAnswerClueIds;
  factory _Enigma.fromJson(Map<String, dynamic> json) => _$EnigmaFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'qr_decoded') final  String? qrDecoded;
@override@JsonKey() final  int maxAttempts;
@override@JsonKey() final  bool isSolved;
@override final  String? correctAnswer;
 final  List<int>? _validAnswerCharacterIds;
@override List<int>? get validAnswerCharacterIds {
  final value = _validAnswerCharacterIds;
  if (value == null) return null;
  if (_validAnswerCharacterIds is EqualUnmodifiableListView) return _validAnswerCharacterIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _validAnswerClueIds;
@override List<int>? get validAnswerClueIds {
  final value = _validAnswerClueIds;
  if (value == null) return null;
  if (_validAnswerClueIds is EqualUnmodifiableListView) return _validAnswerClueIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Enigma
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnigmaCopyWith<_Enigma> get copyWith => __$EnigmaCopyWithImpl<_Enigma>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnigmaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Enigma&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.qrDecoded, qrDecoded) || other.qrDecoded == qrDecoded)&&(identical(other.maxAttempts, maxAttempts) || other.maxAttempts == maxAttempts)&&(identical(other.isSolved, isSolved) || other.isSolved == isSolved)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other._validAnswerCharacterIds, _validAnswerCharacterIds)&&const DeepCollectionEquality().equals(other._validAnswerClueIds, _validAnswerClueIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,qrDecoded,maxAttempts,isSolved,correctAnswer,const DeepCollectionEquality().hash(_validAnswerCharacterIds),const DeepCollectionEquality().hash(_validAnswerClueIds));

@override
String toString() {
  return 'Enigma(id: $id, name: $name, description: $description, imageUrl: $imageUrl, qrDecoded: $qrDecoded, maxAttempts: $maxAttempts, isSolved: $isSolved, correctAnswer: $correctAnswer, validAnswerCharacterIds: $validAnswerCharacterIds, validAnswerClueIds: $validAnswerClueIds)';
}


}

/// @nodoc
abstract mixin class _$EnigmaCopyWith<$Res> implements $EnigmaCopyWith<$Res> {
  factory _$EnigmaCopyWith(_Enigma value, $Res Function(_Enigma) _then) = __$EnigmaCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'qr_decoded') String? qrDecoded, int maxAttempts, bool isSolved, String? correctAnswer, List<int>? validAnswerCharacterIds, List<int>? validAnswerClueIds
});




}
/// @nodoc
class __$EnigmaCopyWithImpl<$Res>
    implements _$EnigmaCopyWith<$Res> {
  __$EnigmaCopyWithImpl(this._self, this._then);

  final _Enigma _self;
  final $Res Function(_Enigma) _then;

/// Create a copy of Enigma
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? qrDecoded = freezed,Object? maxAttempts = null,Object? isSolved = null,Object? correctAnswer = freezed,Object? validAnswerCharacterIds = freezed,Object? validAnswerClueIds = freezed,}) {
  return _then(_Enigma(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,qrDecoded: freezed == qrDecoded ? _self.qrDecoded : qrDecoded // ignore: cast_nullable_to_non_nullable
as String?,maxAttempts: null == maxAttempts ? _self.maxAttempts : maxAttempts // ignore: cast_nullable_to_non_nullable
as int,isSolved: null == isSolved ? _self.isSolved : isSolved // ignore: cast_nullable_to_non_nullable
as bool,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,validAnswerCharacterIds: freezed == validAnswerCharacterIds ? _self._validAnswerCharacterIds : validAnswerCharacterIds // ignore: cast_nullable_to_non_nullable
as List<int>?,validAnswerClueIds: freezed == validAnswerClueIds ? _self._validAnswerClueIds : validAnswerClueIds // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
