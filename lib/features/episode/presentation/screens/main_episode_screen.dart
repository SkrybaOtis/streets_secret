import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../controllers/episode_list_controller.dart';

class MainEpisodeScreen extends ConsumerWidget {
  const MainEpisodeScreen({
    super.key,
    required this.episodeId,
  });

  final String episodeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodeAsync = ref.watch(episodeProvider(episodeId));
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AsyncValueWidget(
      //   value: episodeAsync,
      //   data: (episode) => BranchHeader(
      //     title: episode.name,
      //     onBackPressed: () => context.go('/'),
      //   ),
      //   loading: () => const BranchHeader(title: 'Loading...'),
      //   error: (_, __) => const BranchHeader(title: 'Error'),
      // ),

      appBar: episodeAsync.when(
        data: (episode) => BranchHeader(
            title: episode.name, 
            onBackPressed: () => context.go('/'),
          ),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: AsyncValueWidget(
        value: episodeAsync,
        data: (episode) => SafeArea(
          child: SingleChildScrollView(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                // Description widget (90vw x 25vh)
                Container(
                  width: screenWidth * AppSizes.mainWidgetWidthFraction,
                  height: screenHeight * AppSizes.descriptionHeightFraction,
                  padding: const EdgeInsets.all(AppSizes.paddingM),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(AppSizes.radiusM),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      episode.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),

                // Locations widget (90vw x 10vh)
                Container(
                  width: screenWidth * AppSizes.mainWidgetWidthFraction,
                  height: screenHeight * AppSizes.locationsWidgetHeightFraction,
                  padding: const EdgeInsets.all(AppSizes.paddingM),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppSizes.radiusM),
                    border: Border.all(
                      color: AppColors.primary.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Locations',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const Spacer(),
                      AppButton(
                        text: 'See available locations',
                        onPressed: () =>
                            context.push('/episode/$episodeId/locations'),
                        icon: Icons.map,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),

                // Case files widget (90vw x 37.5vh)
                Container(
                  width: screenWidth * AppSizes.mainWidgetWidthFraction,
                  height: screenHeight * AppSizes.caseFilesWidgetHeightFraction,
                  decoration: BoxDecoration(
                    color: Colors.brown[50],
                    borderRadius: BorderRadius.circular(AppSizes.radiusM),
                    border: Border.all(color: Colors.brown[200]!),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.folder,
                        size: 64,
                        color: Colors.brown[300],
                      ),
                      const SizedBox(height: AppSizes.paddingM),
                      Text(
                        'Case Files',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.brown[700],
                            ),
                      ),
                      const SizedBox(height: AppSizes.paddingL),
                      AppButton(
                        text: 'See case files',
                        onPressed: () =>
                            context.push('/episode/$episodeId/case-files'),
                        icon: Icons.folder_open,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.paddingL),

                // Go back button
                AppButton(
                  text: 'Go back',
                  onPressed: () => context.go('/'),
                  type: AppButtonType.outline,
                  isFullWidth: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}