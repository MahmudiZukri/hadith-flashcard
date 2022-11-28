part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Option<Either<AuthFailure, bool>> optionFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        optionFailureOrSuccess: none(),
      );
}
