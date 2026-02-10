import 'package:flutter/material.dart';
import 'package:streets_sercets/shared/widgets/element_image_widget.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';

class ElementCard extends StatelessWidget {
  const ElementCard({
    super.key,
    required this.name,
    required this.episodeId,
    required this.imageUrl,
    this.onTap,
    this.isSelected = false,
  });

  final String name;
  final String imageUrl;
  final String episodeId;
  final VoidCallback? onTap;
  final bool isSelected;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppSizes.elementCardWidth,
        height: AppSizes.elementCardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          border: isSelected
              ? Border.all(color: AppColors.primary, width: 3)
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Card(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppSizes.radiusM),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppSizes.radiusM),
                    ),
                    child: imageUrl.isNotEmpty
                        ? ElementImage(
                          episodeId: episodeId,
                          imageUrl: imageUrl,
                          fit: BoxFit.cover,
                          placeholder: const Icon(Icons.image, size: AppSizes.iconL),
                        )

                        // Image.asset(
                        //     imageUrl,
                        //     fit: BoxFit.cover,
                        //     errorBuilder: (_, __, ___) => const Icon(
                        //       Icons.image,
                        //       size: AppSizes.iconL,
                        //     ),
                        //   )
                        : const Icon(
                            Icons.image,
                            size: AppSizes.iconL,
                          ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingS,
                    vertical: AppSizes.paddingXS,
                  ),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}