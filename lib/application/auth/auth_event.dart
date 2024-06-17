part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp() = _SignUp;
  const factory AuthEvent.signIn() = _SignIn;
  const factory AuthEvent.guestSignUpOrSignIn() = _GuestSignUpOrSignIn;
  const factory AuthEvent.signUpOrSignInWithGoogle() =
      _SignUpOrSignInWithGoogle;
  const factory AuthEvent.signUpOrSignInWithFacebook() =
      _SignUpOrSignInWithFacebook;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.nameChanged({
    required String nameStr,
  }) = _NameChanged;
  const factory AuthEvent.emailChanged({
    required String emailStr,
  }) = _EmailChanged;
  const factory AuthEvent.passwordChanged({
    required String passwordStr,
  }) = _PasswordChanged;
  const factory AuthEvent.resetPassword({
    required String emailStr,
  }) = _ResetPassword;
  const factory AuthEvent.activeOrDeactivateAccount({
    required AppUser user,
    required bool isActivated,
  }) = _DeactivateAccount;
  const factory AuthEvent.deleteAccount() = _DeleteAccount;
}
