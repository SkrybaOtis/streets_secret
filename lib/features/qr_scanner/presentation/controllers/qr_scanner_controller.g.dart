// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_scanner_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QrScannerController)
final qrScannerControllerProvider = QrScannerControllerFamily._();

final class QrScannerControllerProvider
    extends $NotifierProvider<QrScannerController, ScannerState> {
  QrScannerControllerProvider._({
    required QrScannerControllerFamily super.from,
    required (String, ElementType) super.argument,
  }) : super(
         retry: null,
         name: r'qrScannerControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$qrScannerControllerHash();

  @override
  String toString() {
    return r'qrScannerControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  QrScannerController create() => QrScannerController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScannerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScannerState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is QrScannerControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$qrScannerControllerHash() =>
    r'6b46c125f13befce97a45c5095da9eb293f5f519';

final class QrScannerControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          QrScannerController,
          ScannerState,
          ScannerState,
          ScannerState,
          (String, ElementType)
        > {
  QrScannerControllerFamily._()
    : super(
        retry: null,
        name: r'qrScannerControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  QrScannerControllerProvider call(String episodeId, ElementType targetType) =>
      QrScannerControllerProvider._(
        argument: (episodeId, targetType),
        from: this,
      );

  @override
  String toString() => r'qrScannerControllerProvider';
}

abstract class _$QrScannerController extends $Notifier<ScannerState> {
  late final _$args = ref.$arg as (String, ElementType);
  String get episodeId => _$args.$1;
  ElementType get targetType => _$args.$2;

  ScannerState build(String episodeId, ElementType targetType);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ScannerState, ScannerState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ScannerState, ScannerState>,
              ScannerState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
