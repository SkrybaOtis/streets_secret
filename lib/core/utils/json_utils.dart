import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

import '../errors/app_exceptions.dart';
import 'logger_utils.dart';

abstract class JsonUtils {
  /// Loads JSON from assets
  static Future<Map<String, dynamic>> loadFromAssets(String path) async {
    try {
      final jsonString = await rootBundle.loadString(path);
      return json.decode(jsonString) as Map<String, dynamic>;
    } on FormatException catch (e, stackTrace) {
      AppLogger.error('Invalid JSON format in asset: $path', e, stackTrace);
      throw AppException.invalidJson(path);
    } catch (e, stackTrace) {
      AppLogger.error('Failed to load JSON from asset: $path', e, stackTrace);
      throw AppException.fileNotFound(path);
    }
  }

  /// Loads JSON from file system
  static Future<Map<String, dynamic>> loadFromFile(File file) async {
    try {
      if (!await file.exists()) {
        throw AppException.fileNotFound(file.path);
      }
      final jsonString = await file.readAsString();
      return json.decode(jsonString) as Map<String, dynamic>;
    } on FormatException catch (e, stackTrace) {
      AppLogger.error('Invalid JSON format in file: ${file.path}', e, stackTrace);
      throw AppException.invalidJson(file.path);
    } catch (e) {
      if (e is AppException) rethrow;
      AppLogger.error('Failed to load JSON from file: ${file.path}');
      throw AppException.fileReadError(file.path);
    }
  }

  /// Saves JSON to file system
  static Future<void> saveToFile(File file, Map<String, dynamic> data) async {
    try {
      final directory = file.parent;
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }
      final jsonString = const JsonEncoder.withIndent('  ').convert(data);
      await file.writeAsString(jsonString);
    } catch (e, stackTrace) {
      AppLogger.error('Failed to save JSON to file: ${file.path}', e, stackTrace);
      throw AppException.fileWriteError(file.path);
    }
  }

  /// Safely parses JSON with type checking
  static T? safeParse<T>(
    Map<String, dynamic> json,
    String key, {
    T? defaultValue,
  }) {
    try {
      final value = json[key];
      if (value == null) return defaultValue;
      if (value is T) return value;
      return defaultValue;
    } catch (e) {
      AppLogger.warning('Failed to parse key "$key" as ${T.runtimeType}');
      return defaultValue;
    }
  }

  /// Safely parses a list from JSON
  static List<T> safeParseList<T>(
    Map<String, dynamic> json,
    String key,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    try {
      final value = json[key];
      if (value == null) return <T>[];
      if (value is! List) return <T>[];
      return value
          .whereType<Map<String, dynamic>>()
          .map((item) => fromJson(item))
          .toList();
    } catch (e, stackTrace) {
      AppLogger.warning('Failed to parse list for key "$key"', e, stackTrace);
      return <T>[];
    }
  }
}