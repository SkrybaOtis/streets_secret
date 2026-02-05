import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/app_exceptions.dart';
import '../../../core/utils/logger_utils.dart';
import '../../episode/domain/enums/element_type.dart';
import '../../episode/domain/models/episode.dart';

part 'qr_scanner_service.g.dart';

class QrScanResult {
  final ElementType type;
  final dynamic id;
  final bool isValid;

  const QrScanResult({
    required this.type,
    required this.id,
    required this.isValid,
  });
}

class QrScannerService {
  /// Validate and process scanned QR code for location unlock
  QrScanResult? processLocationQrCode(Episode episode, String scannedCode) {
    try {
      // Find location by QR code
      final location = episode.bases.baseLocations.firstWhere(
        (loc) => loc.qrDecoded == scannedCode,
        orElse: () => throw AppException.invalidQrCode(scannedCode),
      );

      return QrScanResult(
        type: ElementType.location,
        id: location.id,
        isValid: true,
      );
    } catch (e) {
      AppLogger.warning('Invalid location QR code: $scannedCode');
      return null;
    }
  }

  /// Validate and process scanned QR code for clue unlock
  QrScanResult? processClueQrCode(Episode episode, String scannedCode) {
    try {
      // Find clue by QR code
      final clue = episode.bases.baseClues.firstWhere(
        (c) => c.qrDecoded == scannedCode,
        orElse: () => throw AppException.invalidQrCode(scannedCode),
      );

      return QrScanResult(
        type: ElementType.clue,
        id: clue.id,
        isValid: true,
      );
    } catch (e) {
      AppLogger.warning('Invalid clue QR code: $scannedCode');
      return null;
    }
  }

  /// Generic QR code processing
  QrScanResult? processQrCode(Episode episode, String scannedCode) {
    // Try location first
    var result = processLocationQrCode(episode, scannedCode);
    if (result != null) return result;

    // Try clue
    result = processClueQrCode(episode, scannedCode);
    if (result != null) return result;

    // Try character
    try {
      final character = episode.bases.baseCharacters.firstWhere(
        (c) => c.qrDecoded == scannedCode,
      );
      return QrScanResult(
        type: ElementType.character,
        id: character.id,
        isValid: true,
      );
    } catch (_) {}

    return null;
  }
}

@riverpod
QrScannerService qrScannerService(Ref ref) {
  return QrScannerService();
}