// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notepad_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userNotes)
final userNotesProvider = UserNotesFamily._();

final class UserNotesProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserNotesProvider._({
    required UserNotesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'userNotesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userNotesHash();

  @override
  String toString() {
    return r'userNotesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as String;
    return userNotes(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userNotesHash() => r'e52b1d167334b750fdb7727e4fdaae337762913a';

final class UserNotesFamily extends $Family
    with $FunctionalFamilyOverride<String, String> {
  UserNotesFamily._()
    : super(
        retry: null,
        name: r'userNotesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserNotesProvider call(String episodeId) =>
      UserNotesProvider._(argument: episodeId, from: this);

  @override
  String toString() => r'userNotesProvider';
}

@ProviderFor(NotepadEditController)
final notepadEditControllerProvider = NotepadEditControllerProvider._();

final class NotepadEditControllerProvider
    extends $NotifierProvider<NotepadEditController, bool> {
  NotepadEditControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notepadEditControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notepadEditControllerHash();

  @$internal
  @override
  NotepadEditController create() => NotepadEditController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$notepadEditControllerHash() =>
    r'834550265269ba5438d56e2732de65d056d654e3';

abstract class _$NotepadEditController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
