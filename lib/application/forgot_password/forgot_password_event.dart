part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged({
    required String emailStr,
  }) = _EmailChanged;
}
