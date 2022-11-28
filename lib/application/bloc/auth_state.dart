part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool onLoading,
    required UnemptyString email,
    required UnemptyString password,
    required bool showMessage,
    required Option<Either<AuthFailure, bool>> optionFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        onLoading: false,
        email: UnemptyString(''),
        password: UnemptyString(''),
        optionFailureOrSuccess: none(),
        showMessage: false,
      );
}
