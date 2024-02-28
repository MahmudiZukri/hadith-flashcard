import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_failures.freezed.dart';

@freezed
class NumberFailure with _$NumberFailure {
  const factory NumberFailure.empty({
    required num? failedValue,
  }) = Empty;
  const factory NumberFailure.numberBelowLowestRange({
    required num? failedValue,
    required num lowestRange,
  }) = NumberBelowLowestRange;
  const factory NumberFailure.numberExceedHighestRange({
    required num? failedValue,
    required num highestRange,
  }) = NumberExceedHighestRange;
}
