abstract final class ApiConstants {
  static const String baseUrl = 'https://cdn.jsdelivr.net/gh/SkrybaOtis/strt_mstr_invests';
  static const String tag = '@v1.1.4';
  static const String manifestEndpoint = '/episodes_manifest.json';
  static const String episodesPath = '/episodes';
  
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(minutes: 5);
  
  // Retry configuration
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 2);
}