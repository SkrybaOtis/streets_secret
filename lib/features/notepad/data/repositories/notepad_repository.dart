import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notepad_repository.g.dart';

abstract class NotepadRepository {
  Future<String> getNotes(String episodeId);
  Future<void> saveNotes(String episodeId, String notes);
  Future<void> clearNotes(String episodeId);
}

class NotepadRepositoryImpl implements NotepadRepository {
  final SharedPreferences _prefs;
  
  static const String _notesKeyPrefix = 'notes_';

  NotepadRepositoryImpl(this._prefs);

  String _getKey(String episodeId) => '$_notesKeyPrefix$episodeId';

  @override
  Future<String> getNotes(String episodeId) async {
    return _prefs.getString(_getKey(episodeId)) ?? '';
  }

  @override
  Future<void> saveNotes(String episodeId, String notes) async {
    await _prefs.setString(_getKey(episodeId), notes);
  }

  @override
  Future<void> clearNotes(String episodeId) async {
    await _prefs.remove(_getKey(episodeId));
  }
}

@riverpod
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return SharedPreferences.getInstance();
}

@riverpod
Future<NotepadRepository> notepadRepository(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return NotepadRepositoryImpl(prefs);
}