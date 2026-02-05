abstract class AppConstants {
  static const String appName = 'Detective Game';
  static const String episodesDirectory = 'episodes';
  static const String actualStateSuffix = '_actual_state';
  static const String jsonExtension = '.json';
  
  static const int defaultMaxEnigmaAttempts = 3;
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration scannerDebounce = Duration(milliseconds: 500);
  
  // Map settings
  static const double defaultMapZoom = 15.0;
  static const double markerSize = 40.0;
}