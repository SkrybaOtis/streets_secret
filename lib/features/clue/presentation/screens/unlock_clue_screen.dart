import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../../../qr_scanner/presentation/widgets/mobile_scanner_widget.dart';

class UnlockClueScreen extends ConsumerWidget {
  const UnlockClueScreen({
    super.key,
    required this.episodeId,
    required this.locationId,
  });

  final String episodeId;
  final String locationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BranchHeader(title: 'Unlock Clue'),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.screenPadding,
          child: Column(
            children: [
              Text(
                'Scan the QR code to unlock a new clue',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.paddingL),
              // QR Scanner
              Expanded(
                child: MobileScannerWidget(
                  episodeId: episodeId,
                  targetType: ElementType.clue,
                  onSuccess: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Clue unlocked!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                    context.pop();
                  },
                  onError: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid QR code'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSizes.paddingL),
              // Go back button
              AppButton(
                text: 'Go back',
                onPressed: () => context.pop(),
                type: AppButtonType.outline,
                isFullWidth: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}