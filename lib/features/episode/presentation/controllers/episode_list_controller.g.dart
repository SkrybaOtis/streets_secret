// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EpisodeListController)
final episodeListControllerProvider = EpisodeListControllerProvider._();

final class EpisodeListControllerProvider
    extends $AsyncNotifierProvider<EpisodeListController, List<String>> {
  EpisodeListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodeListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodeListControllerHash();

  @$internal
  @override
  EpisodeListController create() => EpisodeListController();
}

String _$episodeListControllerHash() =>
    r'39d12d8359db04b0a2c75048bea5eca115c42cfd';

abstract class _$EpisodeListController extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(episode)
final episodeProvider = EpisodeFamily._();

final class EpisodeProvider
    extends $FunctionalProvider<AsyncValue<Episode>, Episode, FutureOr<Episode>>
    with $FutureModifier<Episode>, $FutureProvider<Episode> {
  EpisodeProvider._({
    required EpisodeFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'episodeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$episodeHash();

  @override
  String toString() {
    return r'episodeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Episode> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Episode> create(Ref ref) {
    final argument = this.argument as String;
    return episode(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is EpisodeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$episodeHash() => r'eb2972c1333c6e93b7e30c61fc88cbe291fc5d03';

final class EpisodeFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Episode>, String> {
  EpisodeFamily._()
    : super(
        retry: null,
        name: r'episodeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EpisodeProvider call(String episodeId) =>
      EpisodeProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'episodeProvider';
}

/// Family provider for loading episodes - auto disposes when not in use

@ProviderFor(EpisodeController)
final episodeControllerProvider = EpisodeControllerFamily._();

/// Family provider for loading episodes - auto disposes when not in use
final class EpisodeControllerProvider
    extends $AsyncNotifierProvider<EpisodeController, Episode> {
  /// Family provider for loading episodes - auto disposes when not in use
  EpisodeControllerProvider._({
    required EpisodeControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'episodeControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$episodeControllerHash();

  @override
  String toString() {
    return r'episodeControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EpisodeController create() => EpisodeController();

  @override
  bool operator ==(Object other) {
    return other is EpisodeControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$episodeControllerHash() => r'65c276044ad3e7653ce59caae8a5ba8679ba347f';

/// Family provider for loading episodes - auto disposes when not in use

final class EpisodeControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          EpisodeController,
          AsyncValue<Episode>,
          Episode,
          FutureOr<Episode>,
          String
        > {
  EpisodeControllerFamily._()
    : super(
        retry: null,
        name: r'episodeControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Family provider for loading episodes - auto disposes when not in use

  EpisodeControllerProvider call(String episodeId) =>
      EpisodeControllerProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'episodeControllerProvider';
}

/// Family provider for loading episodes - auto disposes when not in use

abstract class _$EpisodeController extends $AsyncNotifier<Episode> {
  late final _$args = ref.$arg as String;
  String get episodeId => _$args;

  FutureOr<Episode> build(String episodeId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Episode>, Episode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Episode>, Episode>,
              AsyncValue<Episode>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
