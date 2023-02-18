part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required EmailAddress email,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        email: EmailAddress.empty(),
      );
}
