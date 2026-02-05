// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gameStateLocalDataSource)
final gameStateLocalDataSourceProvider = GameStateLocalDataSourceProvider._();

final class GameStateLocalDataSourceProvider
    extends
        $FunctionalProvider<
          GameStateLocalDataSource,
          GameStateLocalDataSource,
          GameStateLocalDataSource
        >
    with $Provider<GameStateLocalDataSource> {
  GameStateLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameStateLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameStateLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<GameStateLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GameStateLocalDataSource create(Ref ref) {
    return gameStateLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameStateLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameStateLocalDataSource>(value),
    );
  }
}

String _$gameStateLocalDataSourceHash() =>
    r'073053421950eb97a509fba24ce9bd99a8611a69';

@ProviderFor(gameStateRepository)
final gameStateRepositoryProvider = GameStateRepositoryProvider._();

final class GameStateRepositoryProvider
    extends
        $FunctionalProvider<
          GameStateRepository,
          GameStateRepository,
          GameStateRepository
        >
    with $Provider<GameStateRepository> {
  GameStateRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameStateRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameStateRepositoryHash();

  @$internal
  @override
  $ProviderElement<GameStateRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GameStateRepository create(Ref ref) {
    return gameStateRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameStateRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameStateRepository>(value),
    );
  }
}

String _$gameStateRepositoryHash() =>
    r'34afb88042247535d424d423903547df3fff949e';
