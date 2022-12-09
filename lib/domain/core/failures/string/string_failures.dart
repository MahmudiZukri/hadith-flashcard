import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_failures.freezed.dart';

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.empty({
    required String? failedValue,
  }) = Empty;
  const factory StringFailure.hasWhitespace({
    required String? failedValue,
  }) = HasWhitespace;
  const factory StringFailure.isNotAlphanumeric({
    required String? failedValue,
  }) = IsNotAlphanumeric;
  const factory StringFailure.exceedingLength({
    required String? failedValue,
    required int max,
  }) = ExceedingLength;
  const factory StringFailure.lengthTooShort({
    required String? failedValue,
    required int min,
  }) = TooShort;
  const factory StringFailure.wrongLength({
    required String? failedValue,
    required int length,
  }) = WrongLength;
  const factory StringFailure.multiline({
    required String? failedValue,
  }) = Multiline;
  const factory StringFailure.confirmationNotMatch({
    required String? failedValue,
    required String? failedConfirmationValue,
  }) = ConfirmationNotMatch;
  const factory StringFailure.invalidPhone({
    required String? failedValue,
  }) = InvalidPhone;
  const factory StringFailure.invalidEmail({
    required String? failedValue,
  }) = InvalidEmail;
  const factory StringFailure.invalidUrl({
    required String? failedValue,
  }) = InvalidUrl;
  const factory StringFailure.invalidDateTime({
    required DateTime failedValue,
    required String pattern,
  }) = InvalidDateTime;
  const factory StringFailure.invalidPersonName({
    required String? failedValue,
  }) = InvalidPersonName;
  const factory StringFailure.shortToken({
    required String? failedValue,
  }) = ShortToken;
  const factory StringFailure.invalidTime({
    required String? failedValue,
  }) = InvalidTime;
  const factory StringFailure.invalidDate({
    required String? failedValue,
  }) = InvalidDate;
}
