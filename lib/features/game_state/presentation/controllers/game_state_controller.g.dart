// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GameStateController)
final gameStateControllerProvider = GameStateControllerFamily._();

final class GameStateControllerProvider
    extends $AsyncNotifierProvider<GameStateController, GameState> {
  GameStateControllerProvider._({
    required GameStateControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'gameStateControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$gameStateControllerHash();

  @override
  String toString() {
    return r'gameStateControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GameStateController create() => GameStateController();

  @override
  bool operator ==(Object other) {
    return other is GameStateControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gameStateControllerHash() =>
    r'a7af723e77c91ea7bcd7ad41dae1ed6569d364a7';

final class GameStateControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          GameStateController,
          AsyncValue<GameState>,
          GameState,
          FutureOr<GameState>,
          String
        > {
  GameStateControllerFamily._()
    : super(
        retry: null,
        name: r'gameStateControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GameStateControllerProvider call(String episodeId) =>
      GameStateControllerProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'gameStateControllerProvider';
}

abstract class _$GameStateController extends $AsyncNotifier<GameState> {
  late final _$args = ref.$arg as String;
  String get episodeId => _$args;

  FutureOr<GameState> build(String episodeId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<GameState>, GameState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameState>, GameState>,
              AsyncValue<GameState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

/// Convenience providers for accessing specific game state properties

@ProviderFor(unlockedCharacters)
final unlockedCharactersProvider = UnlockedCharactersFamily._();

/// Convenience providers for accessing specific game state properties

final class UnlockedCharactersProvider
    extends $FunctionalProvider<List<int>, List<int>, List<int>>
    with $Provider<List<int>> {
  /// Convenience providers for accessing specific game state properties
  UnlockedCharactersProvider._({
    required UnlockedCharactersFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedCharactersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedCharactersHash();

  @override
  String toString() {
    return r'unlockedCharactersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<List<int>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<int> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedCharacters(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedCharactersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedCharactersHash() =>
    r'e75d5d4a5b9a059b45c6bbb70cddd8fa1e62f1fa';

/// Convenience providers for accessing specific game state properties

final class UnlockedCharactersFamily extends $Family
    with $FunctionalFamilyOverride<List<int>, String> {
  UnlockedCharactersFamily._()
    : super(
        retry: null,
        name: r'unlockedCharactersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Convenience providers for accessing specific game state properties

  UnlockedCharactersProvider call(String episodeId) =>
      UnlockedCharactersProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedCharactersProvider';
}

@ProviderFor(unlockedClues)
final unlockedCluesProvider = UnlockedCluesFamily._();

final class UnlockedCluesProvider
    extends $FunctionalProvider<List<int>, List<int>, List<int>>
    with $Provider<List<int>> {
  UnlockedCluesProvider._({
    required UnlockedCluesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedCluesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedCluesHash();

  @override
  String toString() {
    return r'unlockedCluesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<List<int>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<int> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedClues(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedCluesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedCluesHash() => r'260f872d4afaee3f06566849bf9e061c2cd21cb5';

final class UnlockedCluesFamily extends $Family
    with $FunctionalFamilyOverride<List<int>, String> {
  UnlockedCluesFamily._()
    : super(
        retry: null,
        name: r'unlockedCluesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedCluesProvider call(String episodeId) =>
      UnlockedCluesProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedCluesProvider';
}

@ProviderFor(unlockedEnigmas)
final unlockedEnigmasProvider = UnlockedEnigmasFamily._();

final class UnlockedEnigmasProvider
    extends $FunctionalProvider<List<int>, List<int>, List<int>>
    with $Provider<List<int>> {
  UnlockedEnigmasProvider._({
    required UnlockedEnigmasFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedEnigmasProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedEnigmasHash();

  @override
  String toString() {
    return r'unlockedEnigmasProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<List<int>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<int> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedEnigmas(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedEnigmasProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedEnigmasHash() => r'5a35d3972b9dfa1951ef5a5348b97c4cc960793a';

final class UnlockedEnigmasFamily extends $Family
    with $FunctionalFamilyOverride<List<int>, String> {
  UnlockedEnigmasFamily._()
    : super(
        retry: null,
        name: r'unlockedEnigmasProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedEnigmasProvider call(String episodeId) =>
      UnlockedEnigmasProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedEnigmasProvider';
}

@ProviderFor(unlockedLocations)
final unlockedLocationsProvider = UnlockedLocationsFamily._();

final class UnlockedLocationsProvider
    extends $FunctionalProvider<List<String>, List<String>, List<String>>
    with $Provider<List<String>> {
  UnlockedLocationsProvider._({
    required UnlockedLocationsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedLocationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedLocationsHash();

  @override
  String toString() {
    return r'unlockedLocationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<List<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<String> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedLocations(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedLocationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedLocationsHash() => r'307cd933b2d0491a08c7a428da98672827a53db8';

final class UnlockedLocationsFamily extends $Family
    with $FunctionalFamilyOverride<List<String>, String> {
  UnlockedLocationsFamily._()
    : super(
        retry: null,
        name: r'unlockedLocationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedLocationsProvider call(String episodeId) =>
      UnlockedLocationsProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedLocationsProvider';
}
