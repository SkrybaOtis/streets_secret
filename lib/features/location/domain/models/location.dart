import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
sealed class GameLocation with _$GameLocation {
  const GameLocation._();

  const factory GameLocation({
    required String id,
    required String name,
    required String description,
    required double latitude,
    required double longitude,
    @Default([]) List<int> characters,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'qr_decoded') String? qrDecoded,
  }) = _GameLocation;

  factory GameLocation.fromJson(Map<String, dynamic> json) =>
      _$GameLocationFromJson(json);

  /// Returns LatLng for flutter_map
  (double, double) get coordinates => (latitude, longitude);
}