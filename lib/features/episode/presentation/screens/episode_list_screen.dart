import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../../shared/widgets/loading_widget.dart';
import '../controllers/episode_list_controller.dart';
import '../widgets/episode_card.dart';

class EpisodeListScreen extends ConsumerWidget {
  const EpisodeListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsync = ref.watch(episodeListControllerProvider);

    return Scaffold(
      appBar: const BranchHeader(
        title: 'Detective Game',
        showBackButton: false,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(episodeListControllerProvider.notifier).refresh();
        },
        child: AsyncValueWidget(
          value: episodesAsync,
          loading: () => const ShimmerList(itemCount: 3, itemHeight: 150),
          data: (episodeIds) {
            if (episodeIds.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.folder_open,
                      size: 64,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(height: AppSizes.paddingM),
                    Text(
                      'No episodes available',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: AppSizes.paddingS),
                    Text(
                      'Download episodes to get started',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[500],
                          ),
                    ),
                  ],
                ),
              );
            }

            return ListView.separated(
              padding: AppSizes.screenPadding,
              itemCount: episodeIds.length,
              separatorBuilder: (_, __) =>
                  const SizedBox(height: AppSizes.paddingM),
              itemBuilder: (context, index) {
                final episodeId = episodeIds[index];
                return EpisodeCard(
                  episodeId: episodeId,
                  onTap: () {
                    context.push('/episode/$episodeId/opening');
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}