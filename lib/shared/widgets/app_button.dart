import 'package:flutter/material.dart';

import '../../core/constants/app_sizes.dart';
import '../../core/theme/app_colors.dart';

enum AppButtonType { primary, secondary, outline, text }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
    this.iconPosition = IconPosition.left,
  });

  final String text;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final bool isLoading;
  final bool isFullWidth;
  final IconData? icon;
  final IconPosition iconPosition;

  @override
  Widget build(BuildContext context) {
    final Widget buttonContent = isLoading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null && iconPosition == IconPosition.left) ...[
                Icon(icon, size: AppSizes.iconM),
                const SizedBox(width: AppSizes.paddingS),
              ],
              Text(text),
              if (icon != null && iconPosition == IconPosition.right) ...[
                const SizedBox(width: AppSizes.paddingS),
                Icon(icon, size: AppSizes.iconM),
              ],
            ],
          );

    Widget button;
    
    switch (type) {
      case AppButtonType.primary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          child: buttonContent,
        );
      case AppButtonType.secondary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.backgroundDark,
            backgroundColor: AppColors.background,
          ),
          child: buttonContent,
        );
      case AppButtonType.outline:
        button = OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          child: buttonContent,
        );
      case AppButtonType.text:
        button = TextButton(
          style: ElevatedButton.styleFrom(foregroundColor: AppColors.onPrimary),
          onPressed: isLoading ? null : onPressed,
          child: buttonContent,
        );
    }

    if (isFullWidth) {
      return SizedBox(
        width: double.infinity,
        child: button,
      );
    }

    return button;
  }
}

enum IconPosition { left, right }