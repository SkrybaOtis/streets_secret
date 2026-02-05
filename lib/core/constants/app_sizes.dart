import 'package:flutter/material.dart';

abstract class AppSizes {
  // Padding
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;

  // Border radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;

  // Icon sizes
  static const double iconS = 16.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;
  static const double iconXL = 48.0;

  // Widget heights as fractions of viewport
  static const double descriptionHeightFraction = 0.25;
  static const double locationsWidgetHeightFraction = 0.15;
  static const double caseFilesWidgetHeightFraction = 0.30;
  static const double characterListHeightFraction = 0.25;
  static const double clueListHeightFraction = 0.25;

  // Widget widths as fractions of viewport
  static const double mainWidgetWidthFraction = 0.90;

  // Portrait dimensions
  static const double portraitWidth = 0.20;
  static const double portraitHeight = 0.30;

  // Element card
  static const double elementCardWidth = 120.0;
  static const double elementCardHeight = 160.0;

  static EdgeInsets get screenPadding => const EdgeInsets.all(paddingM);
  
  static BorderRadius get cardBorderRadius => 
      BorderRadius.circular(radiusM);
}