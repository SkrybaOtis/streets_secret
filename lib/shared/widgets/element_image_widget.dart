import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/get_episodes/data/services/storage_service.dart';

class ElementImage extends ConsumerWidget {
  const ElementImage({
    super.key,
    required this.episodeId,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.placeholder,
  });

  final String episodeId;
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (imageUrl.isEmpty) {
      return placeholder ?? const Icon(Icons.image, size: 48);
    }

    return FutureBuilder<File?>(
      future: _getImageFile(ref),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return placeholder ?? 
                 const Center(child: CircularProgressIndicator(strokeWidth: 2));
        }

        if (snapshot.hasData && 
            snapshot.data != null && 
            snapshot.data!.existsSync()) {
          return Image.file(
            snapshot.data!,
            fit: fit,
            width: width,
            height: height,
            errorBuilder: (_, __, ___) => 
                placeholder ?? const Icon(Icons.broken_image, size: 48),
          );
        }

        return placeholder ?? const Icon(Icons.image, size: 48);
      },
    );
  }

  Future<File?> _getImageFile(WidgetRef ref) async {
    try {
      final storageService = ref.read(storageServiceProvider);
      final installed = await storageService.loadInstalledEpisodes();
      final episode = installed.findById(episodeId);

      if (episode == null) return null;
      return storageService.getEpisodeImage(episode.localPath, imageUrl);
    } catch (e) {
      return null;
    }
  }
}