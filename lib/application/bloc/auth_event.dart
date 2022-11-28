part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({
    required UnemptyString email,
    required UnemptyString password,
  }) = _Started;
  const factory AuthEvent.emailChanged({
    required UnemptyString email,
  }) = _EmailChanged;
  const factory AuthEvent.passwordChanged({
    required UnemptyString password,
  }) = _PasswordChanged;
}
