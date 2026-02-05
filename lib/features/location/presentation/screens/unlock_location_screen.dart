import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
// import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../../../qr_scanner/presentation/widgets/mobile_scanner_widget.dart';
import '../controllers/location_controller.dart';

class UnlockLocationScreen extends ConsumerWidget {
  const UnlockLocationScreen({
    super.key,
    required this.episodeId,
    required this.locationId,
  });

  final String episodeId;
  final String locationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsync = ref.watch(locationProvider(episodeId, locationId));

    return Scaffold(
      // appBar: AsyncValueWidget(
      //   value: locationAsync,
      //   data: (location) => BranchHeader(title: location.name),
      //   loading: () => const BranchHeader(title: 'Loading...'),
      //   error: (_, __) => const BranchHeader(title: 'Error'),
      // ),
      appBar: locationAsync.when(
        data: (location) => BranchHeader(title: location.name),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.screenPadding,
          child: Column(
            children: [
              Text(
                'Scan the QR code to unlock this location',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.paddingL),
              // QR Scanner
              Expanded(
                child: MobileScannerWidget(
                  episodeId: episodeId,
                  targetType: ElementType.location,
                  onSuccess: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Location unlocked!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                    context.pop();
                  },
                  onError: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid QR code for this location'),
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