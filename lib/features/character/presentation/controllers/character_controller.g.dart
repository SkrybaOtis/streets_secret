// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(character)
final characterProvider = CharacterFamily._();

final class CharacterProvider
    extends
        $FunctionalProvider<
          AsyncValue<Character>,
          Character,
          FutureOr<Character>
        >
    with $FutureModifier<Character>, $FutureProvider<Character> {
  CharacterProvider._({
    required CharacterFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'characterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$characterHash();

  @override
  String toString() {
    return r'characterProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Character> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Character> create(Ref ref) {
    final argument = this.argument as (String, int);
    return character(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is CharacterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$characterHash() => r'9a9f731326783f4d6ee9708bb98392727468174d';

final class CharacterFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Character>, (String, int)> {
  CharacterFamily._()
    : super(
        retry: null,
        name: r'characterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CharacterProvider call(String episodeId, int characterId) =>
      CharacterProvider._(argument: (episodeId, characterId), from: this);

  @override
  String toString() => r'characterProvider';
}

@ProviderFor(unlockedCharactersList)
final unlockedCharactersListProvider = UnlockedCharactersListFamily._();

final class UnlockedCharactersListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Character>>,
          List<Character>,
          FutureOr<List<Character>>
        >
    with $FutureModifier<List<Character>>, $FutureProvider<List<Character>> {
  UnlockedCharactersListProvider._({
    required UnlockedCharactersListFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedCharactersListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedCharactersListHash();

  @override
  String toString() {
    return r'unlockedCharactersListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Character>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Character>> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedCharactersList(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedCharactersListProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedCharactersListHash() =>
    r'55992c001ad6fa622d26621c42111afcae758633';

final class UnlockedCharactersListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Character>>, String> {
  UnlockedCharactersListFamily._()
    : super(
        retry: null,
        name: r'unlockedCharactersListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedCharactersListProvider call(String episodeId) =>
      UnlockedCharactersListProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedCharactersListProvider';
}

@ProviderFor(locationCharacters)
final locationCharactersProvider = LocationCharactersFamily._();

final class LocationCharactersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Character>>,
          List<Character>,
          FutureOr<List<Character>>
        >
    with $FutureModifier<List<Character>>, $FutureProvider<List<Character>> {
  LocationCharactersProvider._({
    required LocationCharactersFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'locationCharactersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationCharactersHash();

  @override
  String toString() {
    return r'locationCharactersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Character>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Character>> create(Ref ref) {
    final argument = this.argument as (String, String);
    return locationCharacters(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationCharactersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationCharactersHash() =>
    r'9fafef5ccefe30408a4de2d1e584822befec4d1a';

final class LocationCharactersFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<List<Character>>, (String, String)> {
  LocationCharactersFamily._()
    : super(
        retry: null,
        name: r'locationCharactersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationCharactersProvider call(String episodeId, String locationId) =>
      LocationCharactersProvider._(
        argument: (episodeId, locationId),
        from: this,
      );

  @override
  String toString() => r'locationCharactersProvider';
}

@ProviderFor(CharacterDialogController)
final characterDialogControllerProvider = CharacterDialogControllerFamily._();

final class CharacterDialogControllerProvider
    extends $NotifierProvider<CharacterDialogController, String> {
  CharacterDialogControllerProvider._({
    required CharacterDialogControllerFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'characterDialogControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$characterDialogControllerHash();

  @override
  String toString() {
    return r'characterDialogControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  CharacterDialogController create() => CharacterDialogController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CharacterDialogControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$characterDialogControllerHash() =>
    r'446ebce01d9afbd34a196157b185a0b4d652ced4';

final class CharacterDialogControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CharacterDialogController,
          String,
          String,
          String,
          (String, int)
        > {
  CharacterDialogControllerFamily._()
    : super(
        retry: null,
        name: r'characterDialogControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CharacterDialogControllerProvider call(String episodeId, int characterId) =>
      CharacterDialogControllerProvider._(
        argument: (episodeId, characterId),
        from: this,
      );

  @override
  String toString() => r'characterDialogControllerProvider';
}

abstract class _$CharacterDialogController extends $Notifier<String> {
  late final _$args = ref.$arg as (String, int);
  String get episodeId => _$args.$1;
  int get characterId => _$args.$2;

  String build(String episodeId, int characterId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
