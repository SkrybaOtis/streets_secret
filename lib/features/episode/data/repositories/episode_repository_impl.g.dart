// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(episodeLocalDataSource)
final episodeLocalDataSourceProvider = EpisodeLocalDataSourceProvider._();

final class EpisodeLocalDataSourceProvider
    extends
        $FunctionalProvider<
          EpisodeLocalDataSource,
          EpisodeLocalDataSource,
          EpisodeLocalDataSource
        >
    with $Provider<EpisodeLocalDataSource> {
  EpisodeLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodeLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodeLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<EpisodeLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EpisodeLocalDataSource create(Ref ref) {
    return episodeLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EpisodeLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EpisodeLocalDataSource>(value),
    );
  }
}

String _$episodeLocalDataSourceHash() =>
    r'7a92f3eee0f9f0964439a60db6d0a9c60fcb4f19';

@ProviderFor(episodeRepository)
final episodeRepositoryProvider = EpisodeRepositoryProvider._();

final class EpisodeRepositoryProvider
    extends
        $FunctionalProvider<
          EpisodeRepository,
          EpisodeRepository,
          EpisodeRepository
        >
    with $Provider<EpisodeRepository> {
  EpisodeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodeRepositoryHash();

  @$internal
  @override
  $ProviderElement<EpisodeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EpisodeRepository create(Ref ref) {
    return episodeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EpisodeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EpisodeRepository>(value),
    );
  }
}

String _$episodeRepositoryHash() => r'e6f22c0ebb85b896e9564fb014c9375e20a404ec';
