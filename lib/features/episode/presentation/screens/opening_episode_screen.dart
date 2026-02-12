import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:streets_sercets/core/theme/app_colors.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../controllers/episode_list_controller.dart';

class OpeningEpisodeScreen extends ConsumerWidget {
  const OpeningEpisodeScreen({
    super.key,
    required this.episodeId,
  });

  final String episodeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeAsync = ref.watch(episodeProvider(episodeId));

    return Scaffold(
      appBar: BranchHeader(
        title: 'Episode Introduction',
        onBackPressed: () => context.go('/'),
      ),
      body: AsyncValueWidget(
        value: episodeAsync,
        data: (episode) => SafeArea(
          child: Padding(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Episode title
                        Text(
                          episode.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: AppSizes.paddingS),
                        // Author
                        Text(
                          'By ${episode.author}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[600],
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                        const SizedBox(height: AppSizes.paddingL),
                        // Description
                        Container(
                          padding: const EdgeInsets.all(AppSizes.paddingM),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest,
                            borderRadius:
                                BorderRadius.circular(AppSizes.radiusM),
                          ),
                          child: Text(
                            episode.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        const SizedBox(height: AppSizes.paddingL),
                        // Location info
                        _buildInfoCard(
                          context,
                          icon: Icons.location_on,
                          title: 'Location',
                          content: episode.localization.city
                              // '${episode.localization.city}, ${episode.localization.region}',
                        ),
                        // const SizedBox(height: AppSizes.paddingM),
                        // // Duration info
                        // _buildInfoCard(
                        //   context,
                        //   icon: Icons.timer,
                        //   title: 'Estimated Duration',
                        //   content: '${episode.estimatedMinutes} minutes',
                        // ),
                        // const SizedBox(height: AppSizes.paddingM),
                        // // Difficulty info
                        // _buildInfoCard(
                        //   context,
                        //   icon: Icons.signal_cellular_alt,
                        //   title: 'Difficulty',
                        //   content: episode.difficulty,
                        // ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),
                // Navigation buttons
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Go Back',
                        onPressed: () => context.go('/'),
                        type: AppButtonType.primary,
                      ),
                    ),
                    const SizedBox(width: AppSizes.paddingM),
                    Expanded(
                      child: AppButton(
                        text: 'Start',
                        onPressed: () => context.go('/episode/$episodeId'),
                        icon: Icons.play_arrow,
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

  Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingM),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(AppSizes.radiusM),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.red),
          const SizedBox(width: AppSizes.paddingM),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              Text(
                content,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}