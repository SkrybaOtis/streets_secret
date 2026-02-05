// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(episodeService)
final episodeServiceProvider = EpisodeServiceProvider._();

final class EpisodeServiceProvider
    extends $FunctionalProvider<EpisodeService, EpisodeService, EpisodeService>
    with $Provider<EpisodeService> {
  EpisodeServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodeServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodeServiceHash();

  @$internal
  @override
  $ProviderElement<EpisodeService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EpisodeService create(Ref ref) {
    return episodeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EpisodeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EpisodeService>(value),
    );
  }
}

String _$episodeServiceHash() => r'f2e299009746e6d30e4b2564b5e39ffe7ccf94c0';
