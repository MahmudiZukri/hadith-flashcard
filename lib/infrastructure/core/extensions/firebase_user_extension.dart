part of 'extensions.dart';

extension FirebaseUserExtension on User {
  AppUserModel convertToAppUser({
    String? name = "No Name",
  }) =>
      AppUserModel(
        id: uid,
        email: email,
        name: name!,
        photoUrl: photoURL,
      );

  Future<AppUserModel> fromFirestore() async => await UserServices.getUser(uid);
}
