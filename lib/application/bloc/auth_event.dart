part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({
    required BuildContext context,
    required UnemptyString email,
    required UnemptyString password,
  }) = _Started;
}
