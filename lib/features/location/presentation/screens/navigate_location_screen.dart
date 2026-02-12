import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../map/application/map_service.dart';
import '../../../map/presentation/widgets/map_widget.dart';
import '../controllers/location_controller.dart';

class NavigateLocationScreen extends ConsumerWidget {
  const NavigateLocationScreen({
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
      appBar: locationAsync.when(
        data: (location) => BranchHeader(title: location.name),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: AsyncValueWidget(
        value: locationAsync,
        data: (location) => SafeArea(
          child: Padding(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                // Map widget — shows live user marker and proximity banner
                Expanded(
                  child: MapWidget(
                    latitude: location.latitude,
                    longitude: location.longitude,
                    locationName: location.name,
                    showCurrentLocation: true,
                    proximityDescription: location.description,
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),
                // Static description (always visible below the map)
                Text(
                  location.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.paddingL),
                // Navigation buttons
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Go back',
                        onPressed: () => context.pop(),
                        type: AppButtonType.outline,
                      ),
                    ),
                    const SizedBox(width: AppSizes.paddingM),
                    Expanded(
                      child: AppButton(
                        text: 'Navigate',
                        onPressed: () async {
                          final mapService = ref.read(mapServiceProvider);
                          await mapService.openInExternalMap(
                            location.latitude,
                            location.longitude,
                            location.name,
                          );
                        },
                        icon: Icons.navigation,
                        iconPosition: IconPosition.right,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}