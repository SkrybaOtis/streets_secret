// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gameStateService)
final gameStateServiceProvider = GameStateServiceProvider._();

final class GameStateServiceProvider
    extends
        $FunctionalProvider<
          GameStateService,
          GameStateService,
          GameStateService
        >
    with $Provider<GameStateService> {
  GameStateServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameStateServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameStateServiceHash();

  @$internal
  @override
  $ProviderElement<GameStateService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GameStateService create(Ref ref) {
    return gameStateService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameStateService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameStateService>(value),
    );
  }
}

String _$gameStateServiceHash() => r'155cb73cd4dee63b97a695ffe40dc9db15f2ac5a';
