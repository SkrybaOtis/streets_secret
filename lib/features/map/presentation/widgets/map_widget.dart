import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../get_episodes/presentation/providers/map_providers.dart';
import '../../../get_episodes/presentation/providers/episode_providers.dart';

/// Distance in metres at which the proximity banner is shown.
const double _kProximityThresholdMetres = 25.0;

class MapWidget extends ConsumerStatefulWidget {
  const MapWidget({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.locationName,
    this.showCurrentLocation = false,
    /// When provided and [showCurrentLocation] is true, a banner with this
    /// text is shown once the user comes within ~25 m of the target marker.
    this.proximityDescription,
  });

  final double latitude;
  final double longitude;
  final String locationName;
  final bool showCurrentLocation;
  final String? proximityDescription;

  @override
  ConsumerState<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends ConsumerState<MapWidget> {
  late MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  /// Returns the distance in metres between [userLocation] and the target,
  /// or null if [userLocation] is null.
  double? _distanceToTarget(LatLng? userLocation) {
    if (userLocation == null) return null;
    return Geolocator.distanceBetween(
      userLocation.latitude,
      userLocation.longitude,
      widget.latitude,
      widget.longitude,
    );
  }

  bool _isNearTarget(LatLng? userLocation) {
    final dist = _distanceToTarget(userLocation);
    return dist != null && dist <= _kProximityThresholdMetres;
  }

  @override
  Widget build(BuildContext context) {
    final targetLocation = LatLng(widget.latitude, widget.longitude);
    
    // Watch the live stream only when the feature is enabled.
    final livePositionAsync = widget.showCurrentLocation
        ? ref.watch(livePositionProvider)
        : const AsyncData<LatLng?>(null);

    final userLocation = livePositionAsync.when(
      data: (loc) => loc,
      loading: () => null,
      error: (_, __) => null,
    );
    final near = widget.proximityDescription != null && _isNearTarget(userLocation);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
        child: Stack(
          children: [
            // ── Map ───────────────────────────────────────────────────────────
            FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: targetLocation,
                initialZoom: AppConstants.defaultMapZoom,
                minZoom: 10,
                maxZoom: 18,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: "com.streets.mysteries.student.project",
                  maxZoom: 19,
                ),
                // Target location marker
                MarkerLayer(
                  markers: [
                    Marker(
                      point: targetLocation,
                      width: AppConstants.markerSize,
                      height: AppConstants.markerSize,
                      child: _buildTargetMarker(),
                    ),
                  ],
                ),
                // User location marker (blue dot)
                if (widget.showCurrentLocation && userLocation != null)
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: userLocation,
                        width: 28,
                        height: 28,
                        child: _buildUserMarker(),
                      ),
                    ],
                  ),
                // Attribution
                RichAttributionWidget(
                  alignment: AttributionAlignment.bottomLeft,
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),

            // ── Proximity description banner ──────────────────────────────────
            if (near)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _ProximityBanner(
                  description: widget.proximityDescription!,
                ),
              ),

            // ── "Locating…" indicator while waiting for first fix ─────────────
            if (widget.showCurrentLocation &&
                livePositionAsync.isLoading)
              Positioned(
                top: AppSizes.paddingM,
                right: AppSizes.paddingM,
                child: _LocationLoadingChip(),
              ),
          ],
        ),
      ),
    );
  }

  // Red pin — the target
  Widget _buildTargetMarker() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Icon(
        Icons.location_on,
        color: Colors.white,
        size: 24,
      ),
    );
  }

  // Blue pulsing dot — the user
  Widget _buildUserMarker() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.4),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}

// ── Supporting widgets ────────────────────────────────────────────────────────

class _ProximityBanner extends StatelessWidget {
  const _ProximityBanner({required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSizes.paddingS),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingM,
        vertical: AppSizes.paddingS,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.93),
        borderRadius: BorderRadius.circular(AppSizes.radiusM),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, color: Colors.white, size: 20),
          const SizedBox(width: AppSizes.paddingS),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationLoadingChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
          ),
        ],
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 12,
            height: 12,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          SizedBox(width: 6),
          Text('Locating…', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}