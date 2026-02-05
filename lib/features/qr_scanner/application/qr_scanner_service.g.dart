// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_scanner_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(qrScannerService)
final qrScannerServiceProvider = QrScannerServiceProvider._();

final class QrScannerServiceProvider
    extends
        $FunctionalProvider<
          QrScannerService,
          QrScannerService,
          QrScannerService
        >
    with $Provider<QrScannerService> {
  QrScannerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qrScannerServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qrScannerServiceHash();

  @$internal
  @override
  $ProviderElement<QrScannerService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  QrScannerService create(Ref ref) {
    return qrScannerService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QrScannerService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QrScannerService>(value),
    );
  }
}

String _$qrScannerServiceHash() => r'62e63b16b776baa81ecce0540fd5aa3f01e49534';
