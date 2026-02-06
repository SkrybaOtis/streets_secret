// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Episode {

 String get id; int get version; Localization get localization; List<Point> get points; String get name; String get description; String get author;// required String sha256,
// required int sizeBytes,
// required String downloadUrl,
// required DateTime createdAt,
// required DateTime updatedAt,
// required List<String> tags,
// required String thumbnailUrl,
 String get difficulty; int get estimatedMinutes; Bases get bases; DialogMatrices get dialogsMatrices; ItemsDialogs get itemsDialogs; Switches get switches; UnlockedItems get unlocked;
/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeCopyWith<Episode> get copyWith => _$EpisodeCopyWithImpl<Episode>(this as Episode, _$identity);

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Episode&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.localization, localization) || other.localization == localization)&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.author, author) || other.author == author)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.estimatedMinutes, estimatedMinutes) || other.estimatedMinutes == estimatedMinutes)&&(identical(other.bases, bases) || other.bases == bases)&&(identical(other.dialogsMatrices, dialogsMatrices) || other.dialogsMatrices == dialogsMatrices)&&(identical(other.itemsDialogs, itemsDialogs) || other.itemsDialogs == itemsDialogs)&&(identical(other.switches, switches) || other.switches == switches)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,localization,const DeepCollectionEquality().hash(points),name,description,author,difficulty,estimatedMinutes,bases,dialogsMatrices,itemsDialogs,switches,unlocked);

@override
String toString() {
  return 'Episode(id: $id, version: $version, localization: $localization, points: $points, name: $name, description: $description, author: $author, difficulty: $difficulty, estimatedMinutes: $estimatedMinutes, bases: $bases, dialogsMatrices: $dialogsMatrices, itemsDialogs: $itemsDialogs, switches: $switches, unlocked: $unlocked)';
}


}

/// @nodoc
abstract mixin class $EpisodeCopyWith<$Res>  {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) _then) = _$EpisodeCopyWithImpl;
@useResult
$Res call({
 String id, int version, Localization localization, List<Point> points, String name, String description, String author, String difficulty, int estimatedMinutes, Bases bases, DialogMatrices dialogsMatrices, ItemsDialogs itemsDialogs, Switches switches, UnlockedItems unlocked
});


$LocalizationCopyWith<$Res> get localization;$BasesCopyWith<$Res> get bases;$DialogMatricesCopyWith<$Res> get dialogsMatrices;$ItemsDialogsCopyWith<$Res> get itemsDialogs;$SwitchesCopyWith<$Res> get switches;$UnlockedItemsCopyWith<$Res> get unlocked;

}
/// @nodoc
class _$EpisodeCopyWithImpl<$Res>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._self, this._then);

  final Episode _self;
  final $Res Function(Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? version = null,Object? localization = null,Object? points = null,Object? name = null,Object? description = null,Object? author = null,Object? difficulty = null,Object? estimatedMinutes = null,Object? bases = null,Object? dialogsMatrices = null,Object? itemsDialogs = null,Object? switches = null,Object? unlocked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as Localization,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<Point>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,estimatedMinutes: null == estimatedMinutes ? _self.estimatedMinutes : estimatedMinutes // ignore: cast_nullable_to_non_nullable
as int,bases: null == bases ? _self.bases : bases // ignore: cast_nullable_to_non_nullable
as Bases,dialogsMatrices: null == dialogsMatrices ? _self.dialogsMatrices : dialogsMatrices // ignore: cast_nullable_to_non_nullable
as DialogMatrices,itemsDialogs: null == itemsDialogs ? _self.itemsDialogs : itemsDialogs // ignore: cast_nullable_to_non_nullable
as ItemsDialogs,switches: null == switches ? _self.switches : switches // ignore: cast_nullable_to_non_nullable
as Switches,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as UnlockedItems,
  ));
}
/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizationCopyWith<$Res> get localization {
  
  return $LocalizationCopyWith<$Res>(_self.localization, (value) {
    return _then(_self.copyWith(localization: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasesCopyWith<$Res> get bases {
  
  return $BasesCopyWith<$Res>(_self.bases, (value) {
    return _then(_self.copyWith(bases: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DialogMatricesCopyWith<$Res> get dialogsMatrices {
  
  return $DialogMatricesCopyWith<$Res>(_self.dialogsMatrices, (value) {
    return _then(_self.copyWith(dialogsMatrices: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDialogsCopyWith<$Res> get itemsDialogs {
  
  return $ItemsDialogsCopyWith<$Res>(_self.itemsDialogs, (value) {
    return _then(_self.copyWith(itemsDialogs: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SwitchesCopyWith<$Res> get switches {
  
  return $SwitchesCopyWith<$Res>(_self.switches, (value) {
    return _then(_self.copyWith(switches: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnlockedItemsCopyWith<$Res> get unlocked {
  
  return $UnlockedItemsCopyWith<$Res>(_self.unlocked, (value) {
    return _then(_self.copyWith(unlocked: value));
  });
}
}


/// Adds pattern-matching-related methods to [Episode].
extension EpisodePatterns on Episode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Episode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Episode value)  $default,){
final _that = this;
switch (_that) {
case _Episode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Episode value)?  $default,){
final _that = this;
switch (_that) {
case _Episode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int version,  Localization localization,  List<Point> points,  String name,  String description,  String author,  String difficulty,  int estimatedMinutes,  Bases bases,  DialogMatrices dialogsMatrices,  ItemsDialogs itemsDialogs,  Switches switches,  UnlockedItems unlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.id,_that.version,_that.localization,_that.points,_that.name,_that.description,_that.author,_that.difficulty,_that.estimatedMinutes,_that.bases,_that.dialogsMatrices,_that.itemsDialogs,_that.switches,_that.unlocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int version,  Localization localization,  List<Point> points,  String name,  String description,  String author,  String difficulty,  int estimatedMinutes,  Bases bases,  DialogMatrices dialogsMatrices,  ItemsDialogs itemsDialogs,  Switches switches,  UnlockedItems unlocked)  $default,) {final _that = this;
switch (_that) {
case _Episode():
return $default(_that.id,_that.version,_that.localization,_that.points,_that.name,_that.description,_that.author,_that.difficulty,_that.estimatedMinutes,_that.bases,_that.dialogsMatrices,_that.itemsDialogs,_that.switches,_that.unlocked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int version,  Localization localization,  List<Point> points,  String name,  String description,  String author,  String difficulty,  int estimatedMinutes,  Bases bases,  DialogMatrices dialogsMatrices,  ItemsDialogs itemsDialogs,  Switches switches,  UnlockedItems unlocked)?  $default,) {final _that = this;
switch (_that) {
case _Episode() when $default != null:
return $default(_that.id,_that.version,_that.localization,_that.points,_that.name,_that.description,_that.author,_that.difficulty,_that.estimatedMinutes,_that.bases,_that.dialogsMatrices,_that.itemsDialogs,_that.switches,_that.unlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Episode extends Episode {
  const _Episode({required this.id, required this.version, required this.localization, required final  List<Point> points, required this.name, required this.description, required this.author, required this.difficulty, required this.estimatedMinutes, required this.bases, required this.dialogsMatrices, required this.itemsDialogs, required this.switches, required this.unlocked}): _points = points,super._();
  factory _Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);

@override final  String id;
@override final  int version;
@override final  Localization localization;
 final  List<Point> _points;
@override List<Point> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  String name;
@override final  String description;
@override final  String author;
// required String sha256,
// required int sizeBytes,
// required String downloadUrl,
// required DateTime createdAt,
// required DateTime updatedAt,
// required List<String> tags,
// required String thumbnailUrl,
@override final  String difficulty;
@override final  int estimatedMinutes;
@override final  Bases bases;
@override final  DialogMatrices dialogsMatrices;
@override final  ItemsDialogs itemsDialogs;
@override final  Switches switches;
@override final  UnlockedItems unlocked;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeCopyWith<_Episode> get copyWith => __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpisodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Episode&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.localization, localization) || other.localization == localization)&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.author, author) || other.author == author)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.estimatedMinutes, estimatedMinutes) || other.estimatedMinutes == estimatedMinutes)&&(identical(other.bases, bases) || other.bases == bases)&&(identical(other.dialogsMatrices, dialogsMatrices) || other.dialogsMatrices == dialogsMatrices)&&(identical(other.itemsDialogs, itemsDialogs) || other.itemsDialogs == itemsDialogs)&&(identical(other.switches, switches) || other.switches == switches)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,localization,const DeepCollectionEquality().hash(_points),name,description,author,difficulty,estimatedMinutes,bases,dialogsMatrices,itemsDialogs,switches,unlocked);

@override
String toString() {
  return 'Episode(id: $id, version: $version, localization: $localization, points: $points, name: $name, description: $description, author: $author, difficulty: $difficulty, estimatedMinutes: $estimatedMinutes, bases: $bases, dialogsMatrices: $dialogsMatrices, itemsDialogs: $itemsDialogs, switches: $switches, unlocked: $unlocked)';
}


}

/// @nodoc
abstract mixin class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) _then) = __$EpisodeCopyWithImpl;
@override @useResult
$Res call({
 String id, int version, Localization localization, List<Point> points, String name, String description, String author, String difficulty, int estimatedMinutes, Bases bases, DialogMatrices dialogsMatrices, ItemsDialogs itemsDialogs, Switches switches, UnlockedItems unlocked
});


@override $LocalizationCopyWith<$Res> get localization;@override $BasesCopyWith<$Res> get bases;@override $DialogMatricesCopyWith<$Res> get dialogsMatrices;@override $ItemsDialogsCopyWith<$Res> get itemsDialogs;@override $SwitchesCopyWith<$Res> get switches;@override $UnlockedItemsCopyWith<$Res> get unlocked;

}
/// @nodoc
class __$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(this._self, this._then);

  final _Episode _self;
  final $Res Function(_Episode) _then;

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? version = null,Object? localization = null,Object? points = null,Object? name = null,Object? description = null,Object? author = null,Object? difficulty = null,Object? estimatedMinutes = null,Object? bases = null,Object? dialogsMatrices = null,Object? itemsDialogs = null,Object? switches = null,Object? unlocked = null,}) {
  return _then(_Episode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,localization: null == localization ? _self.localization : localization // ignore: cast_nullable_to_non_nullable
as Localization,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<Point>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,estimatedMinutes: null == estimatedMinutes ? _self.estimatedMinutes : estimatedMinutes // ignore: cast_nullable_to_non_nullable
as int,bases: null == bases ? _self.bases : bases // ignore: cast_nullable_to_non_nullable
as Bases,dialogsMatrices: null == dialogsMatrices ? _self.dialogsMatrices : dialogsMatrices // ignore: cast_nullable_to_non_nullable
as DialogMatrices,itemsDialogs: null == itemsDialogs ? _self.itemsDialogs : itemsDialogs // ignore: cast_nullable_to_non_nullable
as ItemsDialogs,switches: null == switches ? _self.switches : switches // ignore: cast_nullable_to_non_nullable
as Switches,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as UnlockedItems,
  ));
}

/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizationCopyWith<$Res> get localization {
  
  return $LocalizationCopyWith<$Res>(_self.localization, (value) {
    return _then(_self.copyWith(localization: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasesCopyWith<$Res> get bases {
  
  return $BasesCopyWith<$Res>(_self.bases, (value) {
    return _then(_self.copyWith(bases: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DialogMatricesCopyWith<$Res> get dialogsMatrices {
  
  return $DialogMatricesCopyWith<$Res>(_self.dialogsMatrices, (value) {
    return _then(_self.copyWith(dialogsMatrices: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemsDialogsCopyWith<$Res> get itemsDialogs {
  
  return $ItemsDialogsCopyWith<$Res>(_self.itemsDialogs, (value) {
    return _then(_self.copyWith(itemsDialogs: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SwitchesCopyWith<$Res> get switches {
  
  return $SwitchesCopyWith<$Res>(_self.switches, (value) {
    return _then(_self.copyWith(switches: value));
  });
}/// Create a copy of Episode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnlockedItemsCopyWith<$Res> get unlocked {
  
  return $UnlockedItemsCopyWith<$Res>(_self.unlocked, (value) {
    return _then(_self.copyWith(unlocked: value));
  });
}
}

// dart format on
