// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(availableLocations)
final availableLocationsProvider = AvailableLocationsFamily._();

final class AvailableLocationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GameLocation>>,
          List<GameLocation>,
          FutureOr<List<GameLocation>>
        >
    with
        $FutureModifier<List<GameLocation>>,
        $FutureProvider<List<GameLocation>> {
  AvailableLocationsProvider._({
    required AvailableLocationsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'availableLocationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$availableLocationsHash();

  @override
  String toString() {
    return r'availableLocationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<GameLocation>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<GameLocation>> create(Ref ref) {
    final argument = this.argument as String;
    return availableLocations(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AvailableLocationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$availableLocationsHash() =>
    r'3b572bbdb2a65283970bcf13c161ebe83e945407';

final class AvailableLocationsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<GameLocation>>, String> {
  AvailableLocationsFamily._()
    : super(
        retry: null,
        name: r'availableLocationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AvailableLocationsProvider call(String episodeId) =>
      AvailableLocationsProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'availableLocationsProvider';
}

@ProviderFor(location)
final locationProvider = LocationFamily._();

final class LocationProvider
    extends
        $FunctionalProvider<
          AsyncValue<GameLocation>,
          GameLocation,
          FutureOr<GameLocation>
        >
    with $FutureModifier<GameLocation>, $FutureProvider<GameLocation> {
  LocationProvider._({
    required LocationFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'locationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationHash();

  @override
  String toString() {
    return r'locationProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GameLocation> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GameLocation> create(Ref ref) {
    final argument = this.argument as (String, String);
    return location(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LocationProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationHash() => r'5b938a53540e901bc2f5993005b4120f11566a42';

final class LocationFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<GameLocation>, (String, String)> {
  LocationFamily._()
    : super(
        retry: null,
        name: r'locationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationProvider call(String episodeId, String locationId) =>
      LocationProvider._(argument: (episodeId, locationId), from: this);

  @override
  String toString() => r'locationProvider';
}

@ProviderFor(isLocationUnlocked)
final isLocationUnlockedProvider = IsLocationUnlockedFamily._();

final class IsLocationUnlockedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsLocationUnlockedProvider._({
    required IsLocationUnlockedFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'isLocationUnlockedProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isLocationUnlockedHash();

  @override
  String toString() {
    return r'isLocationUnlockedProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as (String, String);
    return isLocationUnlocked(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsLocationUnlockedProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isLocationUnlockedHash() =>
    r'8bb35e8782ebb4d8f41c4bf392b626ba6d30d7ed';

final class IsLocationUnlockedFamily extends $Family
    with $FunctionalFamilyOverride<bool, (String, String)> {
  IsLocationUnlockedFamily._()
    : super(
        retry: null,
        name: r'isLocationUnlockedProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsLocationUnlockedProvider call(String episodeId, String locationId) =>
      IsLocationUnlockedProvider._(
        argument: (episodeId, locationId),
        from: this,
      );

  @override
  String toString() => r'isLocationUnlockedProvider';
}

@ProviderFor(LocationDialogController)
final locationDialogControllerProvider = LocationDialogControllerFamily._();

final class LocationDialogControllerProvider
    extends $NotifierProvider<LocationDialogController, String> {
  LocationDialogControllerProvider._({
    required LocationDialogControllerFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'locationDialogControllerProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationDialogControllerHash();

  @override
  String toString() {
    return r'locationDialogControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  LocationDialogController create() => LocationDialogController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is LocationDialogControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationDialogControllerHash() =>
    r'd29176fb61f682fa7f862c776c0953cbbc348cc9';

final class LocationDialogControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          LocationDialogController,
          String,
          String,
          String,
          (String, String)
        > {
  LocationDialogControllerFamily._()
    : super(
        retry: null,
        name: r'locationDialogControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  LocationDialogControllerProvider call(String episodeId, String locationId) =>
      LocationDialogControllerProvider._(
        argument: (episodeId, locationId),
        from: this,
      );

  @override
  String toString() => r'locationDialogControllerProvider';
}

abstract class _$LocationDialogController extends $Notifier<String> {
  late final _$args = ref.$arg as (String, String);
  String get episodeId => _$args.$1;
  String get locationId => _$args.$2;

  String build(String episodeId, String locationId);
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
