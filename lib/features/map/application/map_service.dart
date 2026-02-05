import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/utils/logger_utils.dart';

part 'map_service.g.dart';

class MapService {
  /// Request location permission
  Future<bool> requestLocationPermission() async {
    final status = await Permission.locationWhenInUse.request();
    return status.isGranted;
  }

  /// Check if location service is enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  /// Get current position
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

  /// Open location in external map app
  Future<bool> openInExternalMap(double latitude, double longitude, String label) async {
    // Try Google Maps first
    final googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );
    
    // Fallback to geo URI
    final geoUrl = Uri.parse('geo:$latitude,$longitude?q=$latitude,$longitude($label)');

    try {
      if (await canLaunchUrl(googleMapsUrl)) {
        return await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(geoUrl)) {
        return await launchUrl(geoUrl, mode: LaunchMode.externalApplication);
      }
      
      AppLogger.warning('Could not launch map app');
      return false;
    } catch (e, stackTrace) {
      AppLogger.error('Failed to open external map', e, stackTrace);
      return false;
    }
  }

  /// Calculate distance between two points
  double calculateDistance(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  ) {
    return Geolocator.distanceBetween(startLat, startLng, endLat, endLng);
  }
}

@riverpod
MapService mapService(Ref ref) {
  return MapService();
}