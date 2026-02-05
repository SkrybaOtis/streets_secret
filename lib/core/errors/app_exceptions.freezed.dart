// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppException {

 Object? get originalError;
/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppExceptionCopyWith<AppException> get copyWith => _$AppExceptionCopyWithImpl<AppException>(this as AppException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppException&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $AppExceptionCopyWith<$Res>  {
  factory $AppExceptionCopyWith(AppException value, $Res Function(AppException) _then) = _$AppExceptionCopyWithImpl;
@useResult
$Res call({
 Object? originalError
});




}
/// @nodoc
class _$AppExceptionCopyWithImpl<$Res>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._self, this._then);

  final AppException _self;
  final $Res Function(AppException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalError = freezed,}) {
  return _then(_self.copyWith(
originalError: freezed == originalError ? _self.originalError : originalError ,
  ));
}

}


/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FileNotFoundException value)?  fileNotFound,TResult Function( FileReadErrorException value)?  fileReadError,TResult Function( FileWriteErrorException value)?  fileWriteError,TResult Function( InvalidJsonException value)?  invalidJson,TResult Function( EpisodeNotFoundException value)?  episodeNotFound,TResult Function( LocationNotFoundException value)?  locationNotFound,TResult Function( CharacterNotFoundException value)?  characterNotFound,TResult Function( ClueNotFoundException value)?  clueNotFound,TResult Function( EnigmaNotFoundException value)?  enigmaNotFound,TResult Function( InvalidQrCodeException value)?  invalidQrCode,TResult Function( PermissionDeniedException value)?  permissionDenied,TResult Function( NetworkException value)?  network,TResult Function( DownloadException value)?  download,TResult Function( VerificationException value)?  verification,TResult Function( ExtractionException value)?  extraction,TResult Function( StorageException value)?  storage,TResult Function( UnknownException value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FileNotFoundException() when fileNotFound != null:
return fileNotFound(_that);case FileReadErrorException() when fileReadError != null:
return fileReadError(_that);case FileWriteErrorException() when fileWriteError != null:
return fileWriteError(_that);case InvalidJsonException() when invalidJson != null:
return invalidJson(_that);case EpisodeNotFoundException() when episodeNotFound != null:
return episodeNotFound(_that);case LocationNotFoundException() when locationNotFound != null:
return locationNotFound(_that);case CharacterNotFoundException() when characterNotFound != null:
return characterNotFound(_that);case ClueNotFoundException() when clueNotFound != null:
return clueNotFound(_that);case EnigmaNotFoundException() when enigmaNotFound != null:
return enigmaNotFound(_that);case InvalidQrCodeException() when invalidQrCode != null:
return invalidQrCode(_that);case PermissionDeniedException() when permissionDenied != null:
return permissionDenied(_that);case NetworkException() when network != null:
return network(_that);case DownloadException() when download != null:
return download(_that);case VerificationException() when verification != null:
return verification(_that);case ExtractionException() when extraction != null:
return extraction(_that);case StorageException() when storage != null:
return storage(_that);case UnknownException() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FileNotFoundException value)  fileNotFound,required TResult Function( FileReadErrorException value)  fileReadError,required TResult Function( FileWriteErrorException value)  fileWriteError,required TResult Function( InvalidJsonException value)  invalidJson,required TResult Function( EpisodeNotFoundException value)  episodeNotFound,required TResult Function( LocationNotFoundException value)  locationNotFound,required TResult Function( CharacterNotFoundException value)  characterNotFound,required TResult Function( ClueNotFoundException value)  clueNotFound,required TResult Function( EnigmaNotFoundException value)  enigmaNotFound,required TResult Function( InvalidQrCodeException value)  invalidQrCode,required TResult Function( PermissionDeniedException value)  permissionDenied,required TResult Function( NetworkException value)  network,required TResult Function( DownloadException value)  download,required TResult Function( VerificationException value)  verification,required TResult Function( ExtractionException value)  extraction,required TResult Function( StorageException value)  storage,required TResult Function( UnknownException value)  unknown,}){
final _that = this;
switch (_that) {
case FileNotFoundException():
return fileNotFound(_that);case FileReadErrorException():
return fileReadError(_that);case FileWriteErrorException():
return fileWriteError(_that);case InvalidJsonException():
return invalidJson(_that);case EpisodeNotFoundException():
return episodeNotFound(_that);case LocationNotFoundException():
return locationNotFound(_that);case CharacterNotFoundException():
return characterNotFound(_that);case ClueNotFoundException():
return clueNotFound(_that);case EnigmaNotFoundException():
return enigmaNotFound(_that);case InvalidQrCodeException():
return invalidQrCode(_that);case PermissionDeniedException():
return permissionDenied(_that);case NetworkException():
return network(_that);case DownloadException():
return download(_that);case VerificationException():
return verification(_that);case ExtractionException():
return extraction(_that);case StorageException():
return storage(_that);case UnknownException():
return unknown(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FileNotFoundException value)?  fileNotFound,TResult? Function( FileReadErrorException value)?  fileReadError,TResult? Function( FileWriteErrorException value)?  fileWriteError,TResult? Function( InvalidJsonException value)?  invalidJson,TResult? Function( EpisodeNotFoundException value)?  episodeNotFound,TResult? Function( LocationNotFoundException value)?  locationNotFound,TResult? Function( CharacterNotFoundException value)?  characterNotFound,TResult? Function( ClueNotFoundException value)?  clueNotFound,TResult? Function( EnigmaNotFoundException value)?  enigmaNotFound,TResult? Function( InvalidQrCodeException value)?  invalidQrCode,TResult? Function( PermissionDeniedException value)?  permissionDenied,TResult? Function( NetworkException value)?  network,TResult? Function( DownloadException value)?  download,TResult? Function( VerificationException value)?  verification,TResult? Function( ExtractionException value)?  extraction,TResult? Function( StorageException value)?  storage,TResult? Function( UnknownException value)?  unknown,}){
final _that = this;
switch (_that) {
case FileNotFoundException() when fileNotFound != null:
return fileNotFound(_that);case FileReadErrorException() when fileReadError != null:
return fileReadError(_that);case FileWriteErrorException() when fileWriteError != null:
return fileWriteError(_that);case InvalidJsonException() when invalidJson != null:
return invalidJson(_that);case EpisodeNotFoundException() when episodeNotFound != null:
return episodeNotFound(_that);case LocationNotFoundException() when locationNotFound != null:
return locationNotFound(_that);case CharacterNotFoundException() when characterNotFound != null:
return characterNotFound(_that);case ClueNotFoundException() when clueNotFound != null:
return clueNotFound(_that);case EnigmaNotFoundException() when enigmaNotFound != null:
return enigmaNotFound(_that);case InvalidQrCodeException() when invalidQrCode != null:
return invalidQrCode(_that);case PermissionDeniedException() when permissionDenied != null:
return permissionDenied(_that);case NetworkException() when network != null:
return network(_that);case DownloadException() when download != null:
return download(_that);case VerificationException() when verification != null:
return verification(_that);case ExtractionException() when extraction != null:
return extraction(_that);case StorageException() when storage != null:
return storage(_that);case UnknownException() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String path,  Object? originalError)?  fileNotFound,TResult Function( String path,  Object? originalError)?  fileReadError,TResult Function( String path,  Object? originalError)?  fileWriteError,TResult Function( String path,  Object? originalError)?  invalidJson,TResult Function( String episodeId,  Object? originalError)?  episodeNotFound,TResult Function( String locationId,  Object? originalError)?  locationNotFound,TResult Function( int characterId,  Object? originalError)?  characterNotFound,TResult Function( int clueId,  Object? originalError)?  clueNotFound,TResult Function( int enigmaId,  Object? originalError)?  enigmaNotFound,TResult Function( String code,  Object? originalError)?  invalidQrCode,TResult Function( String permission,  Object? originalError)?  permissionDenied,TResult Function( String message,  int? statusCode,  Object? originalError)?  network,TResult Function( String message,  String? episodeId,  Object? originalError)?  download,TResult Function( String expectedHash,  String actualHash,  Object? originalError)?  verification,TResult Function( String message,  Object? originalError)?  extraction,TResult Function( String message,  Object? originalError)?  storage,TResult Function( String message,  Object? originalError)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FileNotFoundException() when fileNotFound != null:
return fileNotFound(_that.path,_that.originalError);case FileReadErrorException() when fileReadError != null:
return fileReadError(_that.path,_that.originalError);case FileWriteErrorException() when fileWriteError != null:
return fileWriteError(_that.path,_that.originalError);case InvalidJsonException() when invalidJson != null:
return invalidJson(_that.path,_that.originalError);case EpisodeNotFoundException() when episodeNotFound != null:
return episodeNotFound(_that.episodeId,_that.originalError);case LocationNotFoundException() when locationNotFound != null:
return locationNotFound(_that.locationId,_that.originalError);case CharacterNotFoundException() when characterNotFound != null:
return characterNotFound(_that.characterId,_that.originalError);case ClueNotFoundException() when clueNotFound != null:
return clueNotFound(_that.clueId,_that.originalError);case EnigmaNotFoundException() when enigmaNotFound != null:
return enigmaNotFound(_that.enigmaId,_that.originalError);case InvalidQrCodeException() when invalidQrCode != null:
return invalidQrCode(_that.code,_that.originalError);case PermissionDeniedException() when permissionDenied != null:
return permissionDenied(_that.permission,_that.originalError);case NetworkException() when network != null:
return network(_that.message,_that.statusCode,_that.originalError);case DownloadException() when download != null:
return download(_that.message,_that.episodeId,_that.originalError);case VerificationException() when verification != null:
return verification(_that.expectedHash,_that.actualHash,_that.originalError);case ExtractionException() when extraction != null:
return extraction(_that.message,_that.originalError);case StorageException() when storage != null:
return storage(_that.message,_that.originalError);case UnknownException() when unknown != null:
return unknown(_that.message,_that.originalError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String path,  Object? originalError)  fileNotFound,required TResult Function( String path,  Object? originalError)  fileReadError,required TResult Function( String path,  Object? originalError)  fileWriteError,required TResult Function( String path,  Object? originalError)  invalidJson,required TResult Function( String episodeId,  Object? originalError)  episodeNotFound,required TResult Function( String locationId,  Object? originalError)  locationNotFound,required TResult Function( int characterId,  Object? originalError)  characterNotFound,required TResult Function( int clueId,  Object? originalError)  clueNotFound,required TResult Function( int enigmaId,  Object? originalError)  enigmaNotFound,required TResult Function( String code,  Object? originalError)  invalidQrCode,required TResult Function( String permission,  Object? originalError)  permissionDenied,required TResult Function( String message,  int? statusCode,  Object? originalError)  network,required TResult Function( String message,  String? episodeId,  Object? originalError)  download,required TResult Function( String expectedHash,  String actualHash,  Object? originalError)  verification,required TResult Function( String message,  Object? originalError)  extraction,required TResult Function( String message,  Object? originalError)  storage,required TResult Function( String message,  Object? originalError)  unknown,}) {final _that = this;
switch (_that) {
case FileNotFoundException():
return fileNotFound(_that.path,_that.originalError);case FileReadErrorException():
return fileReadError(_that.path,_that.originalError);case FileWriteErrorException():
return fileWriteError(_that.path,_that.originalError);case InvalidJsonException():
return invalidJson(_that.path,_that.originalError);case EpisodeNotFoundException():
return episodeNotFound(_that.episodeId,_that.originalError);case LocationNotFoundException():
return locationNotFound(_that.locationId,_that.originalError);case CharacterNotFoundException():
return characterNotFound(_that.characterId,_that.originalError);case ClueNotFoundException():
return clueNotFound(_that.clueId,_that.originalError);case EnigmaNotFoundException():
return enigmaNotFound(_that.enigmaId,_that.originalError);case InvalidQrCodeException():
return invalidQrCode(_that.code,_that.originalError);case PermissionDeniedException():
return permissionDenied(_that.permission,_that.originalError);case NetworkException():
return network(_that.message,_that.statusCode,_that.originalError);case DownloadException():
return download(_that.message,_that.episodeId,_that.originalError);case VerificationException():
return verification(_that.expectedHash,_that.actualHash,_that.originalError);case ExtractionException():
return extraction(_that.message,_that.originalError);case StorageException():
return storage(_that.message,_that.originalError);case UnknownException():
return unknown(_that.message,_that.originalError);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String path,  Object? originalError)?  fileNotFound,TResult? Function( String path,  Object? originalError)?  fileReadError,TResult? Function( String path,  Object? originalError)?  fileWriteError,TResult? Function( String path,  Object? originalError)?  invalidJson,TResult? Function( String episodeId,  Object? originalError)?  episodeNotFound,TResult? Function( String locationId,  Object? originalError)?  locationNotFound,TResult? Function( int characterId,  Object? originalError)?  characterNotFound,TResult? Function( int clueId,  Object? originalError)?  clueNotFound,TResult? Function( int enigmaId,  Object? originalError)?  enigmaNotFound,TResult? Function( String code,  Object? originalError)?  invalidQrCode,TResult? Function( String permission,  Object? originalError)?  permissionDenied,TResult? Function( String message,  int? statusCode,  Object? originalError)?  network,TResult? Function( String message,  String? episodeId,  Object? originalError)?  download,TResult? Function( String expectedHash,  String actualHash,  Object? originalError)?  verification,TResult? Function( String message,  Object? originalError)?  extraction,TResult? Function( String message,  Object? originalError)?  storage,TResult? Function( String message,  Object? originalError)?  unknown,}) {final _that = this;
switch (_that) {
case FileNotFoundException() when fileNotFound != null:
return fileNotFound(_that.path,_that.originalError);case FileReadErrorException() when fileReadError != null:
return fileReadError(_that.path,_that.originalError);case FileWriteErrorException() when fileWriteError != null:
return fileWriteError(_that.path,_that.originalError);case InvalidJsonException() when invalidJson != null:
return invalidJson(_that.path,_that.originalError);case EpisodeNotFoundException() when episodeNotFound != null:
return episodeNotFound(_that.episodeId,_that.originalError);case LocationNotFoundException() when locationNotFound != null:
return locationNotFound(_that.locationId,_that.originalError);case CharacterNotFoundException() when characterNotFound != null:
return characterNotFound(_that.characterId,_that.originalError);case ClueNotFoundException() when clueNotFound != null:
return clueNotFound(_that.clueId,_that.originalError);case EnigmaNotFoundException() when enigmaNotFound != null:
return enigmaNotFound(_that.enigmaId,_that.originalError);case InvalidQrCodeException() when invalidQrCode != null:
return invalidQrCode(_that.code,_that.originalError);case PermissionDeniedException() when permissionDenied != null:
return permissionDenied(_that.permission,_that.originalError);case NetworkException() when network != null:
return network(_that.message,_that.statusCode,_that.originalError);case DownloadException() when download != null:
return download(_that.message,_that.episodeId,_that.originalError);case VerificationException() when verification != null:
return verification(_that.expectedHash,_that.actualHash,_that.originalError);case ExtractionException() when extraction != null:
return extraction(_that.message,_that.originalError);case StorageException() when storage != null:
return storage(_that.message,_that.originalError);case UnknownException() when unknown != null:
return unknown(_that.message,_that.originalError);case _:
  return null;

}
}

}

/// @nodoc


class FileNotFoundException extends AppException {
  const FileNotFoundException(this.path, [this.originalError]): super._();
  

 final  String path;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileNotFoundExceptionCopyWith<FileNotFoundException> get copyWith => _$FileNotFoundExceptionCopyWithImpl<FileNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileNotFoundException&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $FileNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $FileNotFoundExceptionCopyWith(FileNotFoundException value, $Res Function(FileNotFoundException) _then) = _$FileNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 String path, Object? originalError
});




}
/// @nodoc
class _$FileNotFoundExceptionCopyWithImpl<$Res>
    implements $FileNotFoundExceptionCopyWith<$Res> {
  _$FileNotFoundExceptionCopyWithImpl(this._self, this._then);

  final FileNotFoundException _self;
  final $Res Function(FileNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? originalError = freezed,}) {
  return _then(FileNotFoundException(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class FileReadErrorException extends AppException {
  const FileReadErrorException(this.path, [this.originalError]): super._();
  

 final  String path;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileReadErrorExceptionCopyWith<FileReadErrorException> get copyWith => _$FileReadErrorExceptionCopyWithImpl<FileReadErrorException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileReadErrorException&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $FileReadErrorExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $FileReadErrorExceptionCopyWith(FileReadErrorException value, $Res Function(FileReadErrorException) _then) = _$FileReadErrorExceptionCopyWithImpl;
@override @useResult
$Res call({
 String path, Object? originalError
});




}
/// @nodoc
class _$FileReadErrorExceptionCopyWithImpl<$Res>
    implements $FileReadErrorExceptionCopyWith<$Res> {
  _$FileReadErrorExceptionCopyWithImpl(this._self, this._then);

  final FileReadErrorException _self;
  final $Res Function(FileReadErrorException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? originalError = freezed,}) {
  return _then(FileReadErrorException(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class FileWriteErrorException extends AppException {
  const FileWriteErrorException(this.path, [this.originalError]): super._();
  

 final  String path;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileWriteErrorExceptionCopyWith<FileWriteErrorException> get copyWith => _$FileWriteErrorExceptionCopyWithImpl<FileWriteErrorException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileWriteErrorException&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $FileWriteErrorExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $FileWriteErrorExceptionCopyWith(FileWriteErrorException value, $Res Function(FileWriteErrorException) _then) = _$FileWriteErrorExceptionCopyWithImpl;
@override @useResult
$Res call({
 String path, Object? originalError
});




}
/// @nodoc
class _$FileWriteErrorExceptionCopyWithImpl<$Res>
    implements $FileWriteErrorExceptionCopyWith<$Res> {
  _$FileWriteErrorExceptionCopyWithImpl(this._self, this._then);

  final FileWriteErrorException _self;
  final $Res Function(FileWriteErrorException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? originalError = freezed,}) {
  return _then(FileWriteErrorException(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class InvalidJsonException extends AppException {
  const InvalidJsonException(this.path, [this.originalError]): super._();
  

 final  String path;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidJsonExceptionCopyWith<InvalidJsonException> get copyWith => _$InvalidJsonExceptionCopyWithImpl<InvalidJsonException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidJsonException&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $InvalidJsonExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $InvalidJsonExceptionCopyWith(InvalidJsonException value, $Res Function(InvalidJsonException) _then) = _$InvalidJsonExceptionCopyWithImpl;
@override @useResult
$Res call({
 String path, Object? originalError
});




}
/// @nodoc
class _$InvalidJsonExceptionCopyWithImpl<$Res>
    implements $InvalidJsonExceptionCopyWith<$Res> {
  _$InvalidJsonExceptionCopyWithImpl(this._self, this._then);

  final InvalidJsonException _self;
  final $Res Function(InvalidJsonException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? originalError = freezed,}) {
  return _then(InvalidJsonException(
null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class EpisodeNotFoundException extends AppException {
  const EpisodeNotFoundException(this.episodeId, [this.originalError]): super._();
  

 final  String episodeId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeNotFoundExceptionCopyWith<EpisodeNotFoundException> get copyWith => _$EpisodeNotFoundExceptionCopyWithImpl<EpisodeNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeNotFoundException&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,episodeId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $EpisodeNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $EpisodeNotFoundExceptionCopyWith(EpisodeNotFoundException value, $Res Function(EpisodeNotFoundException) _then) = _$EpisodeNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 String episodeId, Object? originalError
});




}
/// @nodoc
class _$EpisodeNotFoundExceptionCopyWithImpl<$Res>
    implements $EpisodeNotFoundExceptionCopyWith<$Res> {
  _$EpisodeNotFoundExceptionCopyWithImpl(this._self, this._then);

  final EpisodeNotFoundException _self;
  final $Res Function(EpisodeNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? episodeId = null,Object? originalError = freezed,}) {
  return _then(EpisodeNotFoundException(
null == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class LocationNotFoundException extends AppException {
  const LocationNotFoundException(this.locationId, [this.originalError]): super._();
  

 final  String locationId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationNotFoundExceptionCopyWith<LocationNotFoundException> get copyWith => _$LocationNotFoundExceptionCopyWithImpl<LocationNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationNotFoundException&&(identical(other.locationId, locationId) || other.locationId == locationId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $LocationNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $LocationNotFoundExceptionCopyWith(LocationNotFoundException value, $Res Function(LocationNotFoundException) _then) = _$LocationNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 String locationId, Object? originalError
});




}
/// @nodoc
class _$LocationNotFoundExceptionCopyWithImpl<$Res>
    implements $LocationNotFoundExceptionCopyWith<$Res> {
  _$LocationNotFoundExceptionCopyWithImpl(this._self, this._then);

  final LocationNotFoundException _self;
  final $Res Function(LocationNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? originalError = freezed,}) {
  return _then(LocationNotFoundException(
null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class CharacterNotFoundException extends AppException {
  const CharacterNotFoundException(this.characterId, [this.originalError]): super._();
  

 final  int characterId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterNotFoundExceptionCopyWith<CharacterNotFoundException> get copyWith => _$CharacterNotFoundExceptionCopyWithImpl<CharacterNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterNotFoundException&&(identical(other.characterId, characterId) || other.characterId == characterId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,characterId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $CharacterNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $CharacterNotFoundExceptionCopyWith(CharacterNotFoundException value, $Res Function(CharacterNotFoundException) _then) = _$CharacterNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 int characterId, Object? originalError
});




}
/// @nodoc
class _$CharacterNotFoundExceptionCopyWithImpl<$Res>
    implements $CharacterNotFoundExceptionCopyWith<$Res> {
  _$CharacterNotFoundExceptionCopyWithImpl(this._self, this._then);

  final CharacterNotFoundException _self;
  final $Res Function(CharacterNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characterId = null,Object? originalError = freezed,}) {
  return _then(CharacterNotFoundException(
null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class ClueNotFoundException extends AppException {
  const ClueNotFoundException(this.clueId, [this.originalError]): super._();
  

 final  int clueId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClueNotFoundExceptionCopyWith<ClueNotFoundException> get copyWith => _$ClueNotFoundExceptionCopyWithImpl<ClueNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClueNotFoundException&&(identical(other.clueId, clueId) || other.clueId == clueId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,clueId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $ClueNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $ClueNotFoundExceptionCopyWith(ClueNotFoundException value, $Res Function(ClueNotFoundException) _then) = _$ClueNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 int clueId, Object? originalError
});




}
/// @nodoc
class _$ClueNotFoundExceptionCopyWithImpl<$Res>
    implements $ClueNotFoundExceptionCopyWith<$Res> {
  _$ClueNotFoundExceptionCopyWithImpl(this._self, this._then);

  final ClueNotFoundException _self;
  final $Res Function(ClueNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clueId = null,Object? originalError = freezed,}) {
  return _then(ClueNotFoundException(
null == clueId ? _self.clueId : clueId // ignore: cast_nullable_to_non_nullable
as int,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class EnigmaNotFoundException extends AppException {
  const EnigmaNotFoundException(this.enigmaId, [this.originalError]): super._();
  

 final  int enigmaId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnigmaNotFoundExceptionCopyWith<EnigmaNotFoundException> get copyWith => _$EnigmaNotFoundExceptionCopyWithImpl<EnigmaNotFoundException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnigmaNotFoundException&&(identical(other.enigmaId, enigmaId) || other.enigmaId == enigmaId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,enigmaId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $EnigmaNotFoundExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $EnigmaNotFoundExceptionCopyWith(EnigmaNotFoundException value, $Res Function(EnigmaNotFoundException) _then) = _$EnigmaNotFoundExceptionCopyWithImpl;
@override @useResult
$Res call({
 int enigmaId, Object? originalError
});




}
/// @nodoc
class _$EnigmaNotFoundExceptionCopyWithImpl<$Res>
    implements $EnigmaNotFoundExceptionCopyWith<$Res> {
  _$EnigmaNotFoundExceptionCopyWithImpl(this._self, this._then);

  final EnigmaNotFoundException _self;
  final $Res Function(EnigmaNotFoundException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enigmaId = null,Object? originalError = freezed,}) {
  return _then(EnigmaNotFoundException(
null == enigmaId ? _self.enigmaId : enigmaId // ignore: cast_nullable_to_non_nullable
as int,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class InvalidQrCodeException extends AppException {
  const InvalidQrCodeException(this.code, [this.originalError]): super._();
  

 final  String code;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidQrCodeExceptionCopyWith<InvalidQrCodeException> get copyWith => _$InvalidQrCodeExceptionCopyWithImpl<InvalidQrCodeException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidQrCodeException&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,code,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $InvalidQrCodeExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $InvalidQrCodeExceptionCopyWith(InvalidQrCodeException value, $Res Function(InvalidQrCodeException) _then) = _$InvalidQrCodeExceptionCopyWithImpl;
@override @useResult
$Res call({
 String code, Object? originalError
});




}
/// @nodoc
class _$InvalidQrCodeExceptionCopyWithImpl<$Res>
    implements $InvalidQrCodeExceptionCopyWith<$Res> {
  _$InvalidQrCodeExceptionCopyWithImpl(this._self, this._then);

  final InvalidQrCodeException _self;
  final $Res Function(InvalidQrCodeException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? originalError = freezed,}) {
  return _then(InvalidQrCodeException(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class PermissionDeniedException extends AppException {
  const PermissionDeniedException(this.permission, [this.originalError]): super._();
  

 final  String permission;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionDeniedExceptionCopyWith<PermissionDeniedException> get copyWith => _$PermissionDeniedExceptionCopyWithImpl<PermissionDeniedException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDeniedException&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,permission,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $PermissionDeniedExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $PermissionDeniedExceptionCopyWith(PermissionDeniedException value, $Res Function(PermissionDeniedException) _then) = _$PermissionDeniedExceptionCopyWithImpl;
@override @useResult
$Res call({
 String permission, Object? originalError
});




}
/// @nodoc
class _$PermissionDeniedExceptionCopyWithImpl<$Res>
    implements $PermissionDeniedExceptionCopyWith<$Res> {
  _$PermissionDeniedExceptionCopyWithImpl(this._self, this._then);

  final PermissionDeniedException _self;
  final $Res Function(PermissionDeniedException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? originalError = freezed,}) {
  return _then(PermissionDeniedException(
null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class NetworkException extends AppException {
  const NetworkException({required this.message, this.statusCode, this.originalError}): super._();
  

 final  String message;
 final  int? statusCode;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkExceptionCopyWith<NetworkException> get copyWith => _$NetworkExceptionCopyWithImpl<NetworkException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkException&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $NetworkExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(NetworkException value, $Res Function(NetworkException) _then) = _$NetworkExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, int? statusCode, Object? originalError
});




}
/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._self, this._then);

  final NetworkException _self;
  final $Res Function(NetworkException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = freezed,Object? originalError = freezed,}) {
  return _then(NetworkException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,originalError: freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class DownloadException extends AppException {
  const DownloadException({required this.message, this.episodeId, this.originalError}): super._();
  

 final  String message;
 final  String? episodeId;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadExceptionCopyWith<DownloadException> get copyWith => _$DownloadExceptionCopyWithImpl<DownloadException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadException&&(identical(other.message, message) || other.message == message)&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,message,episodeId,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $DownloadExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $DownloadExceptionCopyWith(DownloadException value, $Res Function(DownloadException) _then) = _$DownloadExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, String? episodeId, Object? originalError
});




}
/// @nodoc
class _$DownloadExceptionCopyWithImpl<$Res>
    implements $DownloadExceptionCopyWith<$Res> {
  _$DownloadExceptionCopyWithImpl(this._self, this._then);

  final DownloadException _self;
  final $Res Function(DownloadException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? episodeId = freezed,Object? originalError = freezed,}) {
  return _then(DownloadException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,episodeId: freezed == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String?,originalError: freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class VerificationException extends AppException {
  const VerificationException({required this.expectedHash, required this.actualHash, this.originalError}): super._();
  

 final  String expectedHash;
 final  String actualHash;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationExceptionCopyWith<VerificationException> get copyWith => _$VerificationExceptionCopyWithImpl<VerificationException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationException&&(identical(other.expectedHash, expectedHash) || other.expectedHash == expectedHash)&&(identical(other.actualHash, actualHash) || other.actualHash == actualHash)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,expectedHash,actualHash,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $VerificationExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $VerificationExceptionCopyWith(VerificationException value, $Res Function(VerificationException) _then) = _$VerificationExceptionCopyWithImpl;
@override @useResult
$Res call({
 String expectedHash, String actualHash, Object? originalError
});




}
/// @nodoc
class _$VerificationExceptionCopyWithImpl<$Res>
    implements $VerificationExceptionCopyWith<$Res> {
  _$VerificationExceptionCopyWithImpl(this._self, this._then);

  final VerificationException _self;
  final $Res Function(VerificationException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expectedHash = null,Object? actualHash = null,Object? originalError = freezed,}) {
  return _then(VerificationException(
expectedHash: null == expectedHash ? _self.expectedHash : expectedHash // ignore: cast_nullable_to_non_nullable
as String,actualHash: null == actualHash ? _self.actualHash : actualHash // ignore: cast_nullable_to_non_nullable
as String,originalError: freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class ExtractionException extends AppException {
  const ExtractionException(this.message, [this.originalError]): super._();
  

 final  String message;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionExceptionCopyWith<ExtractionException> get copyWith => _$ExtractionExceptionCopyWithImpl<ExtractionException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionException&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $ExtractionExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $ExtractionExceptionCopyWith(ExtractionException value, $Res Function(ExtractionException) _then) = _$ExtractionExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? originalError
});




}
/// @nodoc
class _$ExtractionExceptionCopyWithImpl<$Res>
    implements $ExtractionExceptionCopyWith<$Res> {
  _$ExtractionExceptionCopyWithImpl(this._self, this._then);

  final ExtractionException _self;
  final $Res Function(ExtractionException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? originalError = freezed,}) {
  return _then(ExtractionException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class StorageException extends AppException {
  const StorageException(this.message, [this.originalError]): super._();
  

 final  String message;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageExceptionCopyWith<StorageException> get copyWith => _$StorageExceptionCopyWithImpl<StorageException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageException&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $StorageExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $StorageExceptionCopyWith(StorageException value, $Res Function(StorageException) _then) = _$StorageExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? originalError
});




}
/// @nodoc
class _$StorageExceptionCopyWithImpl<$Res>
    implements $StorageExceptionCopyWith<$Res> {
  _$StorageExceptionCopyWithImpl(this._self, this._then);

  final StorageException _self;
  final $Res Function(StorageException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? originalError = freezed,}) {
  return _then(StorageException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

/// @nodoc


class UnknownException extends AppException {
  const UnknownException(this.message, [this.originalError]): super._();
  

 final  String message;
@override final  Object? originalError;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownExceptionCopyWith<UnknownException> get copyWith => _$UnknownExceptionCopyWithImpl<UnknownException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownException&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.originalError, originalError));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(originalError));



}

/// @nodoc
abstract mixin class $UnknownExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $UnknownExceptionCopyWith(UnknownException value, $Res Function(UnknownException) _then) = _$UnknownExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? originalError
});




}
/// @nodoc
class _$UnknownExceptionCopyWithImpl<$Res>
    implements $UnknownExceptionCopyWith<$Res> {
  _$UnknownExceptionCopyWithImpl(this._self, this._then);

  final UnknownException _self;
  final $Res Function(UnknownException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? originalError = freezed,}) {
  return _then(UnknownException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == originalError ? _self.originalError : originalError ,
  ));
}


}

// dart format on
