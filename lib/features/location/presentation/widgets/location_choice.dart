import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../domain/models/location.dart';

class LocationChoice extends StatelessWidget {
  const LocationChoice({
    super.key,
    required this.location,
    required this.isUnlocked,
    this.onTap,
    this.onNavigate,
    this.onUnlock,
  });

  final GameLocation location;
  final bool isUnlocked;
  final VoidCallback? onTap;
  final VoidCallback? onNavigate;
  final VoidCallback? onUnlock;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: isUnlocked ? onTap : null,
        borderRadius: AppSizes.cardBorderRadius,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingM),
          child: Column(
            children: [
              Text(
                location.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              if (isUnlocked) ...[
                const SizedBox(height: AppSizes.paddingS),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: AppColors.success,
                      size: AppSizes.iconM,
                    ),
                    const SizedBox(width: AppSizes.paddingS),
                    Text(
                      'Unlocked',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.success,
                          ),
                    ),
                  ],
                ),
              ] else ...[
                const SizedBox(height: AppSizes.paddingM),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Navigate',
                        onPressed: onNavigate,
                        type: AppButtonType.secondary,
                        icon: Icons.map,
                      ),
                    ),
                    const SizedBox(width: AppSizes.paddingM),
                    Expanded(
                      child: AppButton(
                        text: 'Unlock',
                        onPressed: onUnlock,
                        icon: Icons.qr_code_scanner,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}