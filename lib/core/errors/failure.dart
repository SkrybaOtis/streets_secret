import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.server({
    @Default('Server error occurred') String message,
  }) = ServerFailure;

  const factory Failure.cache({
    @Default('Cache error occurred') String message,
  }) = CacheFailure;

  const factory Failure.network({
    @Default('Network error occurred') String message,
  }) = NetworkFailure;

  const factory Failure.validation({
    @Default('Validation error occurred') String message,
  }) = ValidationFailure;

  const factory Failure.unexpected({
    @Default('Unexpected error occurred') String message,
  }) = UnexpectedFailure;
}