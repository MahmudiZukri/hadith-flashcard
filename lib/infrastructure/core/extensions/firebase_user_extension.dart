part of 'extensions.dart';

extension FirebaseUserExtension on User {
  AppUserModel convertToAppUser({
    String? name = "No Name",
    String? photo,
  }) {
    debugPrint('asdasd   $name');

    return AppUserModel(
      id: uid,
      email: email,
      name: name!,
      isActive: true,
      createdAt: DateTime.now(),
      photoUrl: photoURL ?? photo,
    );
  }

  Future<AppUserModel> fromFirestore() async => await UserServices.getUser(uid);
}
