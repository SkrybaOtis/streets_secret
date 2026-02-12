
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../../shared/widgets/loading_widget.dart';
import '../controllers/location_controller.dart';
import '../widgets/location_choice.dart';

class LocationListScreen extends ConsumerWidget {
  const LocationListScreen({
    super.key,
    required this.episodeId,
  });

  final String episodeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationsAsync = ref.watch(availableLocationsProvider(episodeId));

    return Scaffold(
      appBar: const BranchHeader(title: 'Locations'),
      body: Column(
        children: [
          Expanded(
            child: AsyncValueWidget(
              value: locationsAsync,
              loading: () => const ShimmerList(itemCount: 4),
              data: (locations) {
                if (locations.isEmpty) {
                  return const Center(
                    child: Text('No locations available'),
                  );
                }

                return ListView.separated(
                  padding: AppSizes.screenPadding,
                  itemCount: locations.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSizes.paddingM),
                  itemBuilder: (context, index) {
                    final location = locations[index];
                    final isUnlocked = ref.watch(
                      isLocationUnlockedProvider(episodeId, location.id),
                    );

                    return LocationChoice(
                      location: location,
                      isUnlocked: isUnlocked,
                      onTap: () => context.push(
                        '/episode/$episodeId/location/${location.id}',
                      ),
                      onNavigate: () => context.push(
                        '/episode/$episodeId/location/${location.id}/navigate',
                      ),
                      onUnlock: () => context.push(
                        '/episode/$episodeId/location/${location.id}/unlock',
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: AppSizes.screenPadding,
            child: AppButton(
              text: 'Go back',
              onPressed: () => context.pop(),
              type: AppButtonType.primary,
              isFullWidth: true,
            ),
          ),
        ],
      ),
    );
  }
}