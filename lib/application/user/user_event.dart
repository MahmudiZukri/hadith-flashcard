part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.loadUser({
    required UniqueString userID,
  }) = _LoadUser;
}
