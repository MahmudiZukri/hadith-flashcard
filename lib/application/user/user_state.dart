part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required AppUser? user,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        user: null,
      );
}
