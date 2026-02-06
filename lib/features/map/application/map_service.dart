import 'dart:io' show Platform;

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/utils/logger_utils.dart';

part 'map_service.g.dart';

class MapService {
  Future<bool> requestLocationPermission() async {
    final status = await Permission.locationWhenInUse.request();
    return status.isGranted;
  }

  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Future<Position?> getCurrentPosition() async {
    try {
      final hasPermission = await requestLocationPermission();
      if (!hasPermission) {
        AppLogger.warning('Location permission denied');
        return null;
      }

      final serviceEnabled = await isLocationServiceEnabled();
      if (!serviceEnabled) {
        AppLogger.warning('Location service disabled');
        return null;
      }

      return await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        ),
      );
    } catch (e, stackTrace) {
      AppLogger.error('Failed to get current position', e, stackTrace);
      return null;
    }
  }

  /// Open location in external map app - cross-platform safe
  Future<bool> openInExternalMap(
    double latitude,
    double longitude,
    String label,
  ) async {
    // Validate coordinates
    if (!_isValidCoordinate(latitude, longitude)) {
      AppLogger.warning('Invalid coordinates: $latitude, $longitude');
      return false;
    }

    // Sanitize label for URL safety
    final encodedLabel = Uri.encodeComponent(label);

    final urls = _buildMapUrls(latitude, longitude, encodedLabel);

    for (final urlConfig in urls) {
      try {
        final uri = Uri.parse(urlConfig.url);
        
        // On Android, try launching directly without canLaunchUrl check
        // canLaunchUrl can return false even when launch succeeds
        final launched = await launchUrl(
          uri,
          mode: urlConfig.mode,
        );

        if (launched) {
          AppLogger.info('Opened map with: ${urlConfig.name}');
          return true;
        }
      } catch (e) {
        AppLogger.debug('${urlConfig.name} failed: $e');
        continue;
      }
    }

    AppLogger.warning('Could not launch any map application');
    return false;
  }

  /// Build platform-appropriate URL list
  List<_MapUrlConfig> _buildMapUrls(
    double latitude,
    double longitude,
    String encodedLabel,
  ) {
    // Google Maps app-specific URL (works best on Android)
    final googleMapsAppUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    // Google Maps with marker label
    final googleMapsWithLabel =
        'https://www.google.com/maps/place/$latitude,$longitude';

    // Standard geo URI (Android native)
    final geoUrl =
        'geo:$latitude,$longitude?q=$latitude,$longitude($encodedLabel)';

    // Geo URI without label (simpler, more compatible)
    final geoSimpleUrl = 'geo:$latitude,$longitude';

    // OpenStreetMap fallback
    final openStreetMapUrl =
        'https://www.openstreetmap.org/?mlat=$latitude&mlon=$longitude&zoom=16';

    if (Platform.isAndroid) {
      return [
        // Try Google Maps HTTPS first (most reliable)
        _MapUrlConfig(
          name: 'Google Maps HTTPS',
          url: googleMapsAppUrl,
          mode: LaunchMode.externalApplication,
        ),
        // Then geo: with label
        _MapUrlConfig(
          name: 'Geo URI with label',
          url: geoUrl,
          mode: LaunchMode.externalApplication,
        ),
        // Simple geo: as fallback
        _MapUrlConfig(
          name: 'Geo URI simple',
          url: geoSimpleUrl,
          mode: LaunchMode.externalApplication,
        ),
        // Web fallback
        _MapUrlConfig(
          name: 'Google Maps (Platform Default)',
          url: googleMapsAppUrl,
          mode: LaunchMode.platformDefault,
        ),
        // In-app browser as last resort
        _MapUrlConfig(
          name: 'Google Maps (In-App)',
          url: googleMapsAppUrl,
          mode: LaunchMode.inAppBrowserView,
        ),
      ];
    } else if (Platform.isIOS) {
      // Apple Maps URL
      final appleMapsUrl =
          'https://maps.apple.com/?q=$encodedLabel&ll=$latitude,$longitude';

      return [
        _MapUrlConfig(
          name: 'Apple Maps',
          url: appleMapsUrl,
          mode: LaunchMode.externalApplication,
        ),
        _MapUrlConfig(
          name: 'Google Maps',
          url: googleMapsAppUrl,
          mode: LaunchMode.externalApplication,
        ),
      ];
    } else {
      // Desktop platforms (Linux, Windows, macOS)
      return [
        _MapUrlConfig(
          name: 'Google Maps',
          url: googleMapsAppUrl,
          mode: LaunchMode.externalApplication,
        ),
        _MapUrlConfig(
          name: 'OpenStreetMap',
          url: openStreetMapUrl,
          mode: LaunchMode.externalApplication,
        ),
        _MapUrlConfig(
          name: 'Google Maps (Platform Default)',
          url: googleMapsAppUrl,
          mode: LaunchMode.platformDefault,
        ),
      ];
    }
  }

  /// Validate coordinate ranges
  bool _isValidCoordinate(double latitude, double longitude) {
    return latitude >= -90 &&
        latitude <= 90 &&
        longitude >= -180 &&
        longitude <= 180 &&
        !latitude.isNaN &&
        !longitude.isNaN;
  }

  double calculateDistance(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  ) {
    return Geolocator.distanceBetween(startLat, startLng, endLat, endLng);
  }
}

class _MapUrlConfig {
  final String name;
  final String url;
  final LaunchMode mode;

  const _MapUrlConfig({
    required this.name,
    required this.url,
    required this.mode,
  });
}

@riverpod
MapService mapService(Ref ref) {
  return MapService();
}