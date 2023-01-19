part of 'extensions.dart';

extension FirebaseUserExtension on User {
  AppUserModel convertToAppUser({
    String name = "No Name",
  }) =>
      AppUserModel(
        id: uid,
        email: email,
        name: name,
      );

  Future<AppUserModel> fromFirestore() async => await UserServices.getUser(uid);
}
