import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import 'episode_providers.dart';

// ============================================================================
// Location Permission & Current Location
// ============================================================================

final locationPermissionProvider = FutureProvider<LocationPermission>((ref) async {
  var permission = await Geolocator.checkPermission();
  
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  
  return permission;
});

final currentLocationProvider = FutureProvider<LatLng?>((ref) async {
  final permission = await ref.watch(locationPermissionProvider.future);
  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.medium,
    distanceFilter: 100,
  );
  
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    return null;
  }
  
  try {
    final position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    
    final latLng = LatLng(position.latitude, position.longitude);
    
    // Update user location provider
    ref.read(userLocationProvider.notifier).state = latLng;
    
    return latLng;
  } catch (e) {
    return null;
  }
});

/// Continuously streams the user's position with high accuracy.
/// Updates every time the user moves at least 5 meters.
/// Used by MapWidget to show a live user-location marker and proximity alerts.
final livePositionProvider = StreamProvider<LatLng?>((ref) async* {
  final permission = await ref.watch(locationPermissionProvider.future);

  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    yield null;
    return;
  }

  final stream = Geolocator.getPositionStream(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 5, // update every 5 metres moved
    ),
  );

  await for (final position in stream) {
    final latLng = LatLng(position.latitude, position.longitude);
    // Keep the shared state in sync as well
    ref.read(userLocationProvider.notifier).state = latLng;
    yield latLng;
  }
});

// ============================================================================
// Map State
// ============================================================================

final mapCenterProvider = StateProvider<LatLng>((ref) {
  // Default to center of Europe if no location available
  return const LatLng(50.0, 10.0);
});

final mapZoomProvider = StateProvider<double>((ref) => 5.0);

final selectedEpisodeIdProvider = StateProvider<String?>((ref) => null);