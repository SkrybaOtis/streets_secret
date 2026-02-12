import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../../shared/widgets/loading_widget.dart';
import '../../../character/presentation/controllers/character_controller.dart';
import '../../../character/presentation/widgets/character_choice.dart';
import '../../../clue/presentation/controllers/clue_controller.dart';
import '../../presentation/controllers/location_controller.dart';
import '../../../case_files/presentation/widgets/element_card.dart';
// import '../../../episode/domain/models/items_dialogs.dart';


class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({
    super.key,
    required this.episodeId,
    required this.locationId,
  });

  final String episodeId;
  final String locationId;

  @override
  ConsumerState<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  bool _dialogShown = false;

  @override
  void initState() {
    super.initState();
    // Show dialog after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showLocationDialog();
    });
  }

  Future<void> _showLocationDialog() async {
    if (_dialogShown) return;
    _dialogShown = true;

    // Get the dialog controller
    final dialogController = ref.read(
      locationDialogControllerProvider(widget.episodeId, widget.locationId).notifier,
    );

    // Try to get the location dialog
    final dialog = await dialogController.getLocationDialog();

    if (dialog == null || !mounted) return;

    // Show the dialog
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.location_on, color: Colors.red, size: 28),
            SizedBox(width: AppSizes.paddingM),
            Expanded(child: Text('Location Discovered')),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dialog.content,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (dialog.characters.isNotEmpty ||
                  dialog.clues.isNotEmpty ||
                  dialog.enigmas.isNotEmpty ||
                  dialog.locations.isNotEmpty) ...[
                const SizedBox(height: AppSizes.paddingL),
                const Divider(),
                const SizedBox(height: AppSizes.paddingS),
                Text(
                  'New items unlocked:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: AppSizes.paddingS),
                if (dialog.characters.isNotEmpty)
                  _buildUnlockedItem(
                    context,
                    Icons.person,
                    '${dialog.characters.length} Character(s)',
                    AppColors.characterTab,
                  ),
                if (dialog.clues.isNotEmpty)
                  _buildUnlockedItem(
                    context,
                    Icons.search,
                    '${dialog.clues.length} Clue(s)',
                    AppColors.clueTab,
                  ),
                if (dialog.enigmas.isNotEmpty)
                  _buildUnlockedItem(
                    context,
                    Icons.help_outline,
                    '${dialog.enigmas.length} Enigma(s)',
                    AppColors.enigmaTab,
                  ),
                if (dialog.locations.isNotEmpty)
                  _buildUnlockedItem(
                    context,
                    Icons.place,
                    '${dialog.locations.length} Location(s) available',
                    AppColors.info,
                  ),
              ],
            ],
          ),
        ),
        actions: [
          // TextButton(
          //   onPressed: () {
          //     // Process the dialog to unlock items
          //     dialogController.showAndProcessLocationDialog();
          //     Navigator.of(context).pop();
          //   },
          //   //style: ElevatedButton.styleFrom(foregroundColor: AppColors.onPrimary),
          //   child: const Text('Continue'),
          // ),
          AppButton(
            text: 'Continue',
            onPressed: () {
              // Process the dialog to unlock items
              dialogController.showAndProcessLocationDialog();
              Navigator.of(context).pop();
            },
            type: AppButtonType.secondary,
          ),
        ],
      ),
    );
  }

  Widget _buildUnlockedItem(
    BuildContext context,
    IconData icon,
    String text,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingXS),
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(width: AppSizes.paddingS),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: color,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final locationAsync = ref.watch(locationProvider(widget.episodeId, widget.locationId));
    final charactersAsync = ref.watch(
      locationCharactersProvider(widget.episodeId, widget.locationId),
    );
    final cluesAsync = ref.watch(locationCluesProvider(widget.episodeId, widget.locationId));
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
                                episodeId: widget.episodeId,
                                onTap: () => context.push(
                                  '/episode/${widget.episodeId}/character/${character.id}',
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
                              '/episode/${widget.episodeId}/location/${widget.locationId}/unlock-clue',
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
                                  episodeId: widget.episodeId,
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