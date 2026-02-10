import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streets_sercets/core/utils/logger_utils.dart';
import 'package:streets_sercets/features/get_episodes/data/services/storage_service.dart';
import 'package:streets_sercets/shared/widgets/episode_image_widget.dart';

import '../../../../core/constants/app_dirs.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../domain/models/character.dart';

class CharacterChoice extends ConsumerWidget {
  const CharacterChoice({
    super.key,
    required this.character,
    required this.episodeId,
    this.onTap,
  });

  final Character character;
  final String episodeId;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: AppSizes.cardBorderRadius,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingM),
          child: Row(
            children: [
              // Character portrait
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radiusM),
                  color: Colors.grey[200],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.radiusM),
                  child: character.imageUrl.isNotEmpty
                    ? EpisodeImage(
                        episodeId: episodeId,
                        imageUrl: character.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: const Icon(Icons.person, size: AppSizes.iconXL),
                      )
                    : const Icon(Icons.person, size: AppSizes.iconXL),
                ),
              ),
              const SizedBox(width: AppSizes.paddingM),
              // Character info...
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: AppSizes.paddingXS),
                    Text(
                      character.description,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildCharacterImage(WidgetRef ref) {
  //   if (character.imageUrl.isEmpty) {
  //     return const Icon(Icons.person, size: AppSizes.iconXL);
  //   }

  //   return FutureBuilder<File?>(
  //     future: _getImageFile(ref),
  //     builder: (context, snapshot) {
  //       if (snapshot.connectionState == ConnectionState.waiting) {
  //         return const Center(child: CircularProgressIndicator(strokeWidth: 2));
  //       }

  //       if (snapshot.hasData && 
  //           snapshot.data != null && 
  //           snapshot.data!.existsSync()) {
  //         return Image.file(
  //           snapshot.data!,
  //           fit: BoxFit.cover,
  //           errorBuilder: (_, __, ___) => const Icon(
  //             Icons.person,
  //             size: AppSizes.iconXL,
  //           ),
  //         );
  //       }

  //       return const Icon(Icons.person, size: AppSizes.iconXL);
  //     },
  //   );
  // }

  Future<File?> _getImageFile(WidgetRef ref) async {
    try {
      final storageService = ref.read(storageServiceProvider);
      final installed = await storageService.loadInstalledEpisodes();
      final episode = installed.findById(episodeId);

      if (episode == null) return null;

      // Assuming character.imageUrl is like "character_1.png" or "images/character_1.png"
      return storageService.getEpisodeImage(episode.localPath, character.imageUrl);
    } catch (e) {
      return null;
    }
  }
}