import 'package:freezed_annotation/freezed_annotation.dart';


part 'app_exceptions.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const AppException._();

  // ══════════════════════════════════════════════════════════════════════════
  // FILE-RELATED EXCEPTIONS
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.fileNotFound(String path, [Object? originalError]) = 
      FileNotFoundException;
  const factory AppException.fileReadError(String path, [Object? originalError]) = 
      FileReadErrorException;
  const factory AppException.fileWriteError(String path, [Object? originalError]) = 
      FileWriteErrorException;
  const factory AppException.invalidJson(String path, [Object? originalError]) = 
      InvalidJsonException;

  // ══════════════════════════════════════════════════════════════════════════
  // ENTITY NOT FOUND EXCEPTIONS
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.episodeNotFound(String episodeId, [Object? originalError]) = 
      EpisodeNotFoundException;
  const factory AppException.locationNotFound(String locationId, [Object? originalError]) = 
      LocationNotFoundException;
  const factory AppException.characterNotFound(int characterId, [Object? originalError]) = 
      CharacterNotFoundException;
  const factory AppException.clueNotFound(int clueId, [Object? originalError]) = 
      ClueNotFoundException;
  const factory AppException.enigmaNotFound(int enigmaId, [Object? originalError]) = 
      EnigmaNotFoundException;

  // ══════════════════════════════════════════════════════════════════════════
  // QR CODE & PERMISSION EXCEPTIONS
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.invalidQrCode(String code, [Object? originalError]) = 
      InvalidQrCodeException;
  const factory AppException.permissionDenied(String permission, [Object? originalError]) = 
      PermissionDeniedException;

  // ══════════════════════════════════════════════════════════════════════════
  // NETWORK & DOWNLOAD EXCEPTIONS (from second file)
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.network({
    required String message,
    int? statusCode,
    Object? originalError,
  }) = NetworkException;

  const factory AppException.download({
    required String message,
    String? episodeId,
    Object? originalError,
  }) = DownloadException;

  // ══════════════════════════════════════════════════════════════════════════
  // VERIFICATION EXCEPTION (from second file)
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.verification({
    required String expectedHash,
    required String actualHash,
    Object? originalError,
  }) = VerificationException;

  // ══════════════════════════════════════════════════════════════════════════
  // EXTRACTION & STORAGE EXCEPTIONS (from second file)
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.extraction(String message, [Object? originalError]) = 
      ExtractionException;
  const factory AppException.storage(String message, [Object? originalError]) = 
      StorageException;

  // ══════════════════════════════════════════════════════════════════════════
  // UNKNOWN EXCEPTION
  // ══════════════════════════════════════════════════════════════════════════
  const factory AppException.unknown(String message, [Object? originalError]) = 
      UnknownException;

  /// Returns a human-readable error message
  String get message => when(
        // File-related
        fileNotFound: (path, _) => 'File not found: $path',
        fileReadError: (path, _) => 'Failed to read file: $path',
        fileWriteError: (path, _) => 'Failed to write file: $path',
        invalidJson: (path, _) => 'Invalid JSON format in: $path',
        // Entity not found
        episodeNotFound: (id, _) => 'Episode not found: $id',
        locationNotFound: (id, _) => 'Location not found: $id',
        characterNotFound: (id, _) => 'Character not found: $id',
        clueNotFound: (id, _) => 'Clue not found: $id',
        enigmaNotFound: (id, _) => 'Enigma not found: $id',
        // QR Code & Permission
        invalidQrCode: (code, _) => 'Invalid QR code: $code',
        permissionDenied: (permission, _) => 'Permission denied: $permission',
        // Network & Download
        network: (msg, statusCode, _) => statusCode != null 
            ? 'Network error ($statusCode): $msg' 
            : 'Network error: $msg',
        download: (msg, episodeId, _) => episodeId != null 
            ? 'Download error for episode $episodeId: $msg' 
            : 'Download error: $msg',
        // Verification
        verification: (expected, actual, _) =>
            'Hash verification failed. Expected: $expected, Actual: $actual',
        // Extraction & Storage
        extraction: (msg, _) => 'Extraction error: $msg',
        storage: (msg, _) => 'Storage error: $msg',
        // Unknown
        unknown: (msg, _) => 'Unknown error: $msg',
      );

  /// Returns the original error if any
  @override
  Object? get originalError => whenOrNull(
        fileNotFound: (_, error) => error,
        fileReadError: (_, error) => error,
        fileWriteError: (_, error) => error,
        invalidJson: (_, error) => error,
        episodeNotFound: (_, error) => error,
        locationNotFound: (_, error) => error,
        characterNotFound: (_, error) => error,
        clueNotFound: (_, error) => error,
        enigmaNotFound: (_, error) => error,
        invalidQrCode: (_, error) => error,
        permissionDenied: (_, error) => error,
        network: (_, __, error) => error,
        download: (_, __, error) => error,
        verification: (_, __, error) => error,
        extraction: (_, error) => error,
        storage: (_, error) => error,
        unknown: (_, error) => error,
      );

  @override
  String toString() => 'AppException: $message';
}