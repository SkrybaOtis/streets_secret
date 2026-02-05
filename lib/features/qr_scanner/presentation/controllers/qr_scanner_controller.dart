import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/logger_utils.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../../../episode/presentation/controllers/episode_list_controller.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../../application/qr_scanner_service.dart';

part 'qr_scanner_controller.g.dart';

enum ScannerState {
  idle,
  scanning,
  processing,
  success,
  error,
}

@riverpod
class QrScannerController extends _$QrScannerController {
  DateTime? _lastScanTime;

  @override
  ScannerState build(String episodeId, ElementType targetType) {
    return ScannerState.idle;
  }

  Future<bool> processBarcode(BarcodeCapture capture) async {
    // Debounce rapid scans
    final now = DateTime.now();
    if (_lastScanTime != null && 
        now.difference(_lastScanTime!) < AppConstants.scannerDebounce) {
      return false;
    }
    _lastScanTime = now;

    final barcode = capture.barcodes.firstOrNull;
    if (barcode == null || barcode.rawValue == null) {
      return false;
    }

    state = ScannerState.processing;
    
    try {
      final episode = await ref.read(episodeProvider(episodeId).future);
      final service = ref.read(qrScannerServiceProvider);
      
      final scannedCode = barcode.rawValue!;
      AppLogger.debug('Scanned QR code: $scannedCode');

      QrScanResult? result;
      
      switch (targetType) {
        case ElementType.location:
          result = service.processLocationQrCode(episode, scannedCode);
          if (result != null) {
            await ref.read(gameStateControllerProvider(episodeId).notifier)
                .unlockLocation(result.id as String);
          }
        case ElementType.clue:
          result = service.processClueQrCode(episode, scannedCode);
          if (result != null) {
            await ref.read(gameStateControllerProvider(episodeId).notifier)
                .unlockClue(result.id as int);
          }
        default:
          result = service.processQrCode(episode, scannedCode);
      }

      if (result != null && result.isValid) {
        state = ScannerState.success;
        return true;
      } else {
        state = ScannerState.error;
        return false;
      }
    } catch (e, stackTrace) {
      AppLogger.error('QR processing error', e, stackTrace);
      state = ScannerState.error;
      return false;
    }
  }

  void reset() {
    state = ScannerState.idle;
  }
}