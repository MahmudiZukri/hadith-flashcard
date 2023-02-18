part of 'password_textfield_bloc.dart';

@freezed
class PasswordTextFieldState with _$PasswordTextFieldState {
  const factory PasswordTextFieldState({
    required bool isSignUpTextFieldObscure,
    required bool isSignInTextFieldObscure,
  }) = _PasswordTextfieldState;

  factory PasswordTextFieldState.initial() => const PasswordTextFieldState(
        isSignUpTextFieldObscure: true,
        isSignInTextFieldObscure: true,
      );
}
