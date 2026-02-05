// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clue_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clue)
final clueProvider = ClueFamily._();

final class ClueProvider
    extends $FunctionalProvider<AsyncValue<Clue>, Clue, FutureOr<Clue>>
    with $FutureModifier<Clue>, $FutureProvider<Clue> {
  ClueProvider._({
    required ClueFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'clueProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clueHash();

  @override
  String toString() {
    return r'clueProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Clue> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Clue> create(Ref ref) {
    final argument = this.argument as (String, int);
    return clue(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ClueProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clueHash() => r'a11fc05b2eb7b074515d7e8130cbd2580acbab17';

final class ClueFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Clue>, (String, int)> {
  ClueFamily._()
    : super(
        retry: null,
        name: r'clueProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClueProvider call(String episodeId, int clueId) =>
      ClueProvider._(argument: (episodeId, clueId), from: this);

  @override
  String toString() => r'clueProvider';
}

@ProviderFor(unlockedCluesList)
final unlockedCluesListProvider = UnlockedCluesListFamily._();

final class UnlockedCluesListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Clue>>,
          List<Clue>,
          FutureOr<List<Clue>>
        >
    with $FutureModifier<List<Clue>>, $FutureProvider<List<Clue>> {
  UnlockedCluesListProvider._({
    required UnlockedCluesListFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedCluesListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedCluesListHash();

  @override
  String toString() {
    return r'unlockedCluesListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Clue>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Clue>> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedCluesList(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedCluesListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedCluesListHash() => r'89aa43f1befe55d4e4afbd7d3a009e886a996019';

final class UnlockedCluesListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Clue>>, String> {
  UnlockedCluesListFamily._()
    : super(
        retry: null,
        name: r'unlockedCluesListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedCluesListProvider call(String episodeId) =>
      UnlockedCluesListProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedCluesListProvider';
}

@ProviderFor(locationClues)
final locationCluesProvider = LocationCluesFamily._();

final class LocationCluesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Clue>>,
          List<Clue>,
          FutureOr<List<Clue>>
        >
    with $FutureModifier<List<Clue>>, $FutureProvider<List<Clue>> {
  LocationCluesProvider._({
    required LocationCluesFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'locationCluesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationCluesHash();

  @override
  String toString() {
    return r'locationCluesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Clue>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Clue>> create(Ref ref) {
    final argument = this.argument as (String, String);
    return locationClues(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationCluesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationCluesHash() => r'82dfe1052ed8b1eb99d9c462b956ae6062d88442';

final class LocationCluesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Clue>>, (String, String)> {
  LocationCluesFamily._()
    : super(
        retry: null,
        name: r'locationCluesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationCluesProvider call(String episodeId, String locationId) =>
      LocationCluesProvider._(argument: (episodeId, locationId), from: this);

  @override
  String toString() => r'locationCluesProvider';
}
