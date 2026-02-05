// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enigma_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(enigma)
final enigmaProvider = EnigmaFamily._();

final class EnigmaProvider
    extends $FunctionalProvider<AsyncValue<Enigma>, Enigma, FutureOr<Enigma>>
    with $FutureModifier<Enigma>, $FutureProvider<Enigma> {
  EnigmaProvider._({
    required EnigmaFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'enigmaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$enigmaHash();

  @override
  String toString() {
    return r'enigmaProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Enigma> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Enigma> create(Ref ref) {
    final argument = this.argument as (String, int);
    return enigma(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is EnigmaProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$enigmaHash() => r'860fb3c12d07cf9fa4771b6e3b6ff4f5537443ba';

final class EnigmaFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Enigma>, (String, int)> {
  EnigmaFamily._()
    : super(
        retry: null,
        name: r'enigmaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EnigmaProvider call(String episodeId, int enigmaId) =>
      EnigmaProvider._(argument: (episodeId, enigmaId), from: this);

  @override
  String toString() => r'enigmaProvider';
}

@ProviderFor(unlockedEnigmasList)
final unlockedEnigmasListProvider = UnlockedEnigmasListFamily._();

final class UnlockedEnigmasListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Enigma>>,
          List<Enigma>,
          FutureOr<List<Enigma>>
        >
    with $FutureModifier<List<Enigma>>, $FutureProvider<List<Enigma>> {
  UnlockedEnigmasListProvider._({
    required UnlockedEnigmasListFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'unlockedEnigmasListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$unlockedEnigmasListHash();

  @override
  String toString() {
    return r'unlockedEnigmasListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Enigma>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Enigma>> create(Ref ref) {
    final argument = this.argument as String;
    return unlockedEnigmasList(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UnlockedEnigmasListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$unlockedEnigmasListHash() =>
    r'ef461823aa913f969ed979219bc4208e2a67efee';

final class UnlockedEnigmasListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Enigma>>, String> {
  UnlockedEnigmasListFamily._()
    : super(
        retry: null,
        name: r'unlockedEnigmasListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UnlockedEnigmasListProvider call(String episodeId) =>
      UnlockedEnigmasListProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'unlockedEnigmasListProvider';
}

@ProviderFor(enigmaRemainingAttempts)
final enigmaRemainingAttemptsProvider = EnigmaRemainingAttemptsFamily._();

final class EnigmaRemainingAttemptsProvider
    extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  EnigmaRemainingAttemptsProvider._({
    required EnigmaRemainingAttemptsFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'enigmaRemainingAttemptsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$enigmaRemainingAttemptsHash();

  @override
  String toString() {
    return r'enigmaRemainingAttemptsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    final argument = this.argument as (String, int);
    return enigmaRemainingAttempts(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EnigmaRemainingAttemptsProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$enigmaRemainingAttemptsHash() =>
    r'4e6d8b11b03ec2b3d649dc2e35f30eace8dc811b';

final class EnigmaRemainingAttemptsFamily extends $Family
    with $FunctionalFamilyOverride<int, (String, int)> {
  EnigmaRemainingAttemptsFamily._()
    : super(
        retry: null,
        name: r'enigmaRemainingAttemptsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EnigmaRemainingAttemptsProvider call(String episodeId, int enigmaId) =>
      EnigmaRemainingAttemptsProvider._(
        argument: (episodeId, enigmaId),
        from: this,
      );

  @override
  String toString() => r'enigmaRemainingAttemptsProvider';
}

@ProviderFor(isEnigmaSolved)
final isEnigmaSolvedProvider = IsEnigmaSolvedFamily._();

final class IsEnigmaSolvedProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsEnigmaSolvedProvider._({
    required IsEnigmaSolvedFamily super.from,
    required (String, int) super.argument,
  }) : super(
         retry: null,
         name: r'isEnigmaSolvedProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$isEnigmaSolvedHash();

  @override
  String toString() {
    return r'isEnigmaSolvedProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as (String, int);
    return isEnigmaSolved(ref, argument.$1, argument.$2);
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
    return other is IsEnigmaSolvedProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isEnigmaSolvedHash() => r'649402d63435d6ef11071742b537d3d49abd5152';

final class IsEnigmaSolvedFamily extends $Family
    with $FunctionalFamilyOverride<bool, (String, int)> {
  IsEnigmaSolvedFamily._()
    : super(
        retry: null,
        name: r'isEnigmaSolvedProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IsEnigmaSolvedProvider call(String episodeId, int enigmaId) =>
      IsEnigmaSolvedProvider._(argument: (episodeId, enigmaId), from: this);

  @override
  String toString() => r'isEnigmaSolvedProvider';
}
