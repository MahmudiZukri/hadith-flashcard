part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp() = _Started;
  const factory AuthEvent.emailChanged({
    required String emailStr,
  }) = _EmailChanged;
  const factory AuthEvent.passwordChanged({
    required String passwordStr,
  }) = _PasswordChanged;
}
