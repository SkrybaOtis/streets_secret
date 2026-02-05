import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization.freezed.dart';
part 'localization.g.dart';

@freezed
sealed class Localization with _$Localization {
  const factory Localization({
    required String city,
    String? region,
    required String country,
    required String countryCode,
    required double centerLatitude,
    required double centerLongitude,
  }) = _Localization;

  factory Localization.fromJson(Map<String, dynamic> json) =>
      _$LocalizationFromJson(json);
}