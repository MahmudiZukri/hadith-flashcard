part of 'password_textfield_bloc.dart';

@freezed
class PasswordTextFieldEvent with _$PasswordTextFieldEvent {
  const factory PasswordTextFieldEvent.signUpTextFieldObsecureChanged() =
      _SignUpTextFieldObscureChanged;
  const factory PasswordTextFieldEvent.signInTextFieldObsecureChanged() =
      _SignInTextFieldObscureChanged;
}
