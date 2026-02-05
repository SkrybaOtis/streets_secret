import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../controllers/qr_scanner_controller.dart';

class MobileScannerWidget extends ConsumerStatefulWidget {
  const MobileScannerWidget({
    super.key,
    required this.episodeId,
    required this.targetType,
    required this.onSuccess,
    this.onError,
  });

  final String episodeId;
  final ElementType targetType;
  final VoidCallback onSuccess;
  final VoidCallback? onError;

  @override
  ConsumerState<MobileScannerWidget> createState() =>
      _MobileScannerWidgetState();
}

class _MobileScannerWidgetState extends ConsumerState<MobileScannerWidget> {
  late MobileScannerController _scannerController;
  bool _isProcessing = false;

  @override
  void initState() {
    super.initState();
    _scannerController = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
  }

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scannerState = ref.watch(
      qrScannerControllerProvider(widget.episodeId, widget.targetType),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
        border: Border.all(
          color: _getBorderColor(scannerState),
          width: 3,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.radiusL - 2),
        child: Stack(
          children: [
            MobileScanner(
              controller: _scannerController,
              onDetect: _onDetect,
            ),
            // Overlay
            _buildOverlay(scannerState),
            // Controls
            Positioned(
              bottom: AppSizes.paddingM,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildControlButton(
                    icon: Icons.flash_on,
                    onPressed: () => _scannerController.toggleTorch(),
                  ),
                  const SizedBox(width: AppSizes.paddingL),
                  _buildControlButton(
                    icon: Icons.flip_camera_ios,
                    onPressed: () => _scannerController.switchCamera(),
                  ),
                ],
              ),
            ),
            // Status indicator
            if (scannerState != ScannerState.idle)
              Positioned(
                top: AppSizes.paddingM,
                left: 0,
                right: 0,
                child: _buildStatusIndicator(scannerState),
              ),
          ],
        ),
      ),
    );
  }

  Color _getBorderColor(ScannerState state) {
    switch (state) {
      case ScannerState.success:
        return AppColors.success;
      case ScannerState.error:
        return AppColors.error;
      case ScannerState.processing:
        return AppColors.warning;
      default:
        return AppColors.primary;
    }
  }

  Widget _buildOverlay(ScannerState state) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.3),
      ),
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: _getBorderColor(state),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(AppSizes.radiusL),
          ),
          child: state == ScannerState.processing
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildStatusIndicator(ScannerState state) {
    String message;
    Color color;

    switch (state) {
      case ScannerState.processing:
        message = 'Processing...';
        color = AppColors.warning;
      case ScannerState.success:
        message = 'Success!';
        color = AppColors.success;
      case ScannerState.error:
        message = 'Invalid QR Code';
        color = AppColors.error;
      default:
        return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.paddingL),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingM,
        vertical: AppSizes.paddingS,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.radiusM),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Future<void> _onDetect(BarcodeCapture capture) async {
    if (_isProcessing) return;

    _isProcessing = true;

    final success = await ref
        .read(qrScannerControllerProvider(widget.episodeId, widget.targetType)
            .notifier)
        .processBarcode(capture);

    if (success) {
      await Future.delayed(const Duration(milliseconds: 500));
      if (mounted) {
        widget.onSuccess();
      }
    } else {
      widget.onError?.call();
    }

    await Future.delayed(const Duration(seconds: 1));
    _isProcessing = false;

    if (mounted) {
      ref
          .read(qrScannerControllerProvider(widget.episodeId, widget.targetType)
              .notifier)
          .reset();
    }
  }
}