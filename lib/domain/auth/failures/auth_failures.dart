import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.timeout() = _Timeout;
  const factory AuthFailure.other({
    required String message,
  }) = _Other;
}
