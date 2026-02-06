import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/logger_utils.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
sealed class Point with _$Point {
  const factory Point({
    required String id,
    required String name,
    required String description,
    required double latitude,
    required double longitude,
    required bool isMainPoint,
    required int order,
    String? imagePath,
    String? qrDecoded,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  static List<Point> getListPointFromJson(List<dynamic> json) {
    // AppLogger.warning("Point getting");
    List<Point> newListPoint = [];
    for(var point in json){
      try{
        Point newPoint = Point.fromJson(point);
        newListPoint.add(newPoint);
      }catch(e){
        AppLogger.warning(e.toString());
      }
    }
    return newListPoint;
  }
}