import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required T? failedValue,
  }) = Empty<T>;
  const factory ValueFailure.listTooLong({
    required T? failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidObject({
    required T? failedValue,
  }) = InvalidObject<T>;
  const factory ValueFailure.emptyObject() = EmptyObject<T>;

  const factory ValueFailure.exceedingBalance(
      {required num failedValue, required num maxBalance}) = ExceedBalance<T>;
  const factory ValueFailure.invalidDateTime(
      {required DateTime failedValue,
      required String pattern}) = InvalidDateTime<T>;
  const factory ValueFailure.noteExceed({required T? failedValue}) =
      NoteExceed<T>;
  const factory ValueFailure.failed() = _Failed;
}
