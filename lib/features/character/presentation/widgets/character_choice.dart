import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../domain/models/character.dart';

class CharacterChoice extends StatelessWidget {
  const CharacterChoice({
    super.key,
    required this.character,
    this.onTap,
  });

  final Character character;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
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
                      ? Image.asset(
                          character.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Icon(
                            Icons.person,
                            size: AppSizes.iconXL,
                          ),
                        )
                      : const Icon(
                          Icons.person,
                          size: AppSizes.iconXL,
                        ),
                ),
              ),
              const SizedBox(width: AppSizes.paddingM),
              // Character info
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
}