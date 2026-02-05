// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_files_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CaseFilesTabController)
final caseFilesTabControllerProvider = CaseFilesTabControllerProvider._();

final class CaseFilesTabControllerProvider
    extends $NotifierProvider<CaseFilesTabController, ElementType> {
  CaseFilesTabControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'caseFilesTabControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$caseFilesTabControllerHash();

  @$internal
  @override
  CaseFilesTabController create() => CaseFilesTabController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ElementType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ElementType>(value),
    );
  }
}

String _$caseFilesTabControllerHash() =>
    r'24a590467cd213bd08a493e264a2de6d516c1f4c';

abstract class _$CaseFilesTabController extends $Notifier<ElementType> {
  ElementType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ElementType, ElementType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ElementType, ElementType>,
              ElementType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
