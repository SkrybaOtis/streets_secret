// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notepad_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferences(ref);
  }
}

String _$sharedPreferencesHash() => r'6c03b929f567eb6f97608f6208b95744ffee3bfd';

@ProviderFor(notepadRepository)
final notepadRepositoryProvider = NotepadRepositoryProvider._();

final class NotepadRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotepadRepository>,
          NotepadRepository,
          FutureOr<NotepadRepository>
        >
    with
        $FutureModifier<NotepadRepository>,
        $FutureProvider<NotepadRepository> {
  NotepadRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notepadRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notepadRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<NotepadRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotepadRepository> create(Ref ref) {
    return notepadRepository(ref);
  }
}

String _$notepadRepositoryHash() => r'70e7ce17653b4d7608584af4ec642fea51578b35';
