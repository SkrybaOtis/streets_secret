// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameState {

 String get episodeId; UnlockedItems get unlocked; Map<int, int> get enigmaAttempts; Map<int, bool> get enigmaSolvedStatus; Map<int, int> get activeSwitches; String get userNotes; DateTime? get lastPlayedAt;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked)&&const DeepCollectionEquality().equals(other.enigmaAttempts, enigmaAttempts)&&const DeepCollectionEquality().equals(other.enigmaSolvedStatus, enigmaSolvedStatus)&&const DeepCollectionEquality().equals(other.activeSwitches, activeSwitches)&&(identical(other.userNotes, userNotes) || other.userNotes == userNotes)&&(identical(other.lastPlayedAt, lastPlayedAt) || other.lastPlayedAt == lastPlayedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,episodeId,unlocked,const DeepCollectionEquality().hash(enigmaAttempts),const DeepCollectionEquality().hash(enigmaSolvedStatus),const DeepCollectionEquality().hash(activeSwitches),userNotes,lastPlayedAt);

@override
String toString() {
  return 'GameState(episodeId: $episodeId, unlocked: $unlocked, enigmaAttempts: $enigmaAttempts, enigmaSolvedStatus: $enigmaSolvedStatus, activeSwitches: $activeSwitches, userNotes: $userNotes, lastPlayedAt: $lastPlayedAt)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 String episodeId, UnlockedItems unlocked, Map<int, int> enigmaAttempts, Map<int, bool> enigmaSolvedStatus, Map<int, int> activeSwitches, String userNotes, DateTime? lastPlayedAt
});


$UnlockedItemsCopyWith<$Res> get unlocked;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? episodeId = null,Object? unlocked = null,Object? enigmaAttempts = null,Object? enigmaSolvedStatus = null,Object? activeSwitches = null,Object? userNotes = null,Object? lastPlayedAt = freezed,}) {
  return _then(_self.copyWith(
episodeId: null == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as UnlockedItems,enigmaAttempts: null == enigmaAttempts ? _self.enigmaAttempts : enigmaAttempts // ignore: cast_nullable_to_non_nullable
as Map<int, int>,enigmaSolvedStatus: null == enigmaSolvedStatus ? _self.enigmaSolvedStatus : enigmaSolvedStatus // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,activeSwitches: null == activeSwitches ? _self.activeSwitches : activeSwitches // ignore: cast_nullable_to_non_nullable
as Map<int, int>,userNotes: null == userNotes ? _self.userNotes : userNotes // ignore: cast_nullable_to_non_nullable
as String,lastPlayedAt: freezed == lastPlayedAt ? _self.lastPlayedAt : lastPlayedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnlockedItemsCopyWith<$Res> get unlocked {
  
  return $UnlockedItemsCopyWith<$Res>(_self.unlocked, (value) {
    return _then(_self.copyWith(unlocked: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String episodeId,  UnlockedItems unlocked,  Map<int, int> enigmaAttempts,  Map<int, bool> enigmaSolvedStatus,  Map<int, int> activeSwitches,  String userNotes,  DateTime? lastPlayedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.episodeId,_that.unlocked,_that.enigmaAttempts,_that.enigmaSolvedStatus,_that.activeSwitches,_that.userNotes,_that.lastPlayedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String episodeId,  UnlockedItems unlocked,  Map<int, int> enigmaAttempts,  Map<int, bool> enigmaSolvedStatus,  Map<int, int> activeSwitches,  String userNotes,  DateTime? lastPlayedAt)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.episodeId,_that.unlocked,_that.enigmaAttempts,_that.enigmaSolvedStatus,_that.activeSwitches,_that.userNotes,_that.lastPlayedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String episodeId,  UnlockedItems unlocked,  Map<int, int> enigmaAttempts,  Map<int, bool> enigmaSolvedStatus,  Map<int, int> activeSwitches,  String userNotes,  DateTime? lastPlayedAt)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.episodeId,_that.unlocked,_that.enigmaAttempts,_that.enigmaSolvedStatus,_that.activeSwitches,_that.userNotes,_that.lastPlayedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameState extends GameState {
  const _GameState({required this.episodeId, required this.unlocked, final  Map<int, int> enigmaAttempts = const {}, final  Map<int, bool> enigmaSolvedStatus = const {}, final  Map<int, int> activeSwitches = const {}, this.userNotes = '', this.lastPlayedAt}): _enigmaAttempts = enigmaAttempts,_enigmaSolvedStatus = enigmaSolvedStatus,_activeSwitches = activeSwitches,super._();
  factory _GameState.fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);

@override final  String episodeId;
@override final  UnlockedItems unlocked;
 final  Map<int, int> _enigmaAttempts;
@override@JsonKey() Map<int, int> get enigmaAttempts {
  if (_enigmaAttempts is EqualUnmodifiableMapView) return _enigmaAttempts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_enigmaAttempts);
}

 final  Map<int, bool> _enigmaSolvedStatus;
@override@JsonKey() Map<int, bool> get enigmaSolvedStatus {
  if (_enigmaSolvedStatus is EqualUnmodifiableMapView) return _enigmaSolvedStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_enigmaSolvedStatus);
}

 final  Map<int, int> _activeSwitches;
@override@JsonKey() Map<int, int> get activeSwitches {
  if (_activeSwitches is EqualUnmodifiableMapView) return _activeSwitches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_activeSwitches);
}

@override@JsonKey() final  String userNotes;
@override final  DateTime? lastPlayedAt;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId)&&(identical(other.unlocked, unlocked) || other.unlocked == unlocked)&&const DeepCollectionEquality().equals(other._enigmaAttempts, _enigmaAttempts)&&const DeepCollectionEquality().equals(other._enigmaSolvedStatus, _enigmaSolvedStatus)&&const DeepCollectionEquality().equals(other._activeSwitches, _activeSwitches)&&(identical(other.userNotes, userNotes) || other.userNotes == userNotes)&&(identical(other.lastPlayedAt, lastPlayedAt) || other.lastPlayedAt == lastPlayedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,episodeId,unlocked,const DeepCollectionEquality().hash(_enigmaAttempts),const DeepCollectionEquality().hash(_enigmaSolvedStatus),const DeepCollectionEquality().hash(_activeSwitches),userNotes,lastPlayedAt);

@override
String toString() {
  return 'GameState(episodeId: $episodeId, unlocked: $unlocked, enigmaAttempts: $enigmaAttempts, enigmaSolvedStatus: $enigmaSolvedStatus, activeSwitches: $activeSwitches, userNotes: $userNotes, lastPlayedAt: $lastPlayedAt)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 String episodeId, UnlockedItems unlocked, Map<int, int> enigmaAttempts, Map<int, bool> enigmaSolvedStatus, Map<int, int> activeSwitches, String userNotes, DateTime? lastPlayedAt
});


@override $UnlockedItemsCopyWith<$Res> get unlocked;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? episodeId = null,Object? unlocked = null,Object? enigmaAttempts = null,Object? enigmaSolvedStatus = null,Object? activeSwitches = null,Object? userNotes = null,Object? lastPlayedAt = freezed,}) {
  return _then(_GameState(
episodeId: null == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String,unlocked: null == unlocked ? _self.unlocked : unlocked // ignore: cast_nullable_to_non_nullable
as UnlockedItems,enigmaAttempts: null == enigmaAttempts ? _self._enigmaAttempts : enigmaAttempts // ignore: cast_nullable_to_non_nullable
as Map<int, int>,enigmaSolvedStatus: null == enigmaSolvedStatus ? _self._enigmaSolvedStatus : enigmaSolvedStatus // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,activeSwitches: null == activeSwitches ? _self._activeSwitches : activeSwitches // ignore: cast_nullable_to_non_nullable
as Map<int, int>,userNotes: null == userNotes ? _self.userNotes : userNotes // ignore: cast_nullable_to_non_nullable
as String,lastPlayedAt: freezed == lastPlayedAt ? _self.lastPlayedAt : lastPlayedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of GameState
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
