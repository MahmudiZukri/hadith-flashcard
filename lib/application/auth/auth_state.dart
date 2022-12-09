part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool onLoading,
    required EmailAddress email,
    required PersonName name,
    required Password password,
    required bool showErrorMessages,
    required bool showSnackbar,
    required Option<Either<AuthFailure, Unit>> optionFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        onLoading: false,
        email: EmailAddress.empty(),
        password: Password.empty(),
        name: PersonName.empty(),
        showErrorMessages: false,
        showSnackbar: false,
        optionFailureOrSuccess: none(),
      );
}
