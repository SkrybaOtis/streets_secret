import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../../shared/widgets/loading_widget.dart';
import '../../../character/presentation/controllers/character_controller.dart';
import '../../../character/presentation/widgets/character_choice.dart';
import '../../../clue/presentation/controllers/clue_controller.dart';
import '../../presentation/controllers/location_controller.dart';
import '../../../case_files/presentation/widgets/element_card.dart';

class LocationScreen extends ConsumerWidget {
  const LocationScreen({
    super.key,
    required this.episodeId,
    required this.locationId,
  });

  final String episodeId;
  final String locationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsync = ref.watch(locationProvider(episodeId, locationId));
    final charactersAsync = ref.watch(
      locationCharactersProvider(episodeId, locationId),
    );
    final cluesAsync = ref.watch(locationCluesProvider(episodeId, locationId));
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
              // Characters list (90vw x 40vh)
              Container(
                width: screenWidth * AppSizes.mainWidgetWidthFraction,
                height: screenHeight * AppSizes.characterListHeightFraction,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(AppSizes.radiusM),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.paddingS),
                      child: Text(
                        'Characters',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      child: AsyncValueWidget(
                        value: charactersAsync,
                        loading: () =>
                            const ShimmerList(itemCount: 2, itemHeight: 80),
                        data: (characters) {
                          if (characters.isEmpty) {
                            return const Center(
                              child: Text('No characters available'),
                            );
                          }
                          return ListView.separated(
                            padding: const EdgeInsets.all(AppSizes.paddingS),
                            itemCount: characters.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: AppSizes.paddingS),
                            itemBuilder: (context, index) {
                              final character = characters[index];
                              return CharacterChoice(
                                character: character,
                                onTap: () => context.push(
                                  '/episode/$episodeId/character/${character.id}',
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.paddingM),

              // Clues list (90vw x 30vh)
              Container(
                width: screenWidth * AppSizes.mainWidgetWidthFraction,
                height: screenHeight * AppSizes.clueListHeightFraction,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(AppSizes.radiusM),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.paddingS),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Clues',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          TextButton.icon(
                            onPressed: () => context.push(
                              '/episode/$episodeId/location/$locationId/unlock-clue',
                            ),
                            icon: const Icon(Icons.add, size: 18),
                            label: const Text('Add new'),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    Expanded(
                      child: AsyncValueWidget(
                        value: cluesAsync,
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        data: (clues) {
                          if (clues.isEmpty) {
                            return const Center(
                              child: Text('No clues found yet'),
                            );
                          }
                          return Scrollbar(
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.all(AppSizes.paddingS),
                              itemCount: clues.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: AppSizes.paddingM),
                              itemBuilder: (context, index) {
                                final clue = clues[index];
                                return ElementCard(
                                  name: clue.name,
                                  imageUrl: clue.imageUrl,
                                  onTap: () {
                                    // Show clue details
                                    _showClueDetails(context, clue.name,
                                        clue.description);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),

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

  void _showClueDetails(
      BuildContext context, String name, String description) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(name),
        content: Text(description),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}