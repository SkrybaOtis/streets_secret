import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../shared/widgets/element_image_widget.dart';
import '../../domain/models/character.dart';
import '../controllers/character_controller.dart';

class CharacterDialog extends ConsumerWidget {
  const CharacterDialog({
    super.key,
    required this.episodeId,
    required this.character,
  });

  final String episodeId;
  final Character character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dialogText = ref.watch(
      characterDialogControllerProvider(episodeId, character.id),
    );

    return Column(
      children: [
        // Character image
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipOval(
            child: character.imageUrl.isNotEmpty
                ? ElementImage(
                  episodeId: episodeId,
                  imageUrl: character.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: const Icon(Icons.image, size: AppSizes.iconL),
                )
                // ? Image.asset(
                //     character.imageUrl,
                //     fit: BoxFit.cover,
                //     errorBuilder: (_, __, ___) => const Icon(
                //       Icons.person,
                //       size: 60,
                //     ),
                //   )
                : const Icon(
                    Icons.person,
                    size: 60,
                  ),
          ),
        ),
        const SizedBox(height: AppSizes.paddingM),
        // Dialog card
        Expanded(
          child: Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSizes.paddingM),
              child: SingleChildScrollView(
                child: Text(
                  dialogText.isEmpty 
                      ? 'Tap on an element below to start a conversation...'
                      : dialogText,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}