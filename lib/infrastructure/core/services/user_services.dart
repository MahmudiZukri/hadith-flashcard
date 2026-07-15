part of 'services.dart';

class UserServices {
  static final CollectionReference<Map<String, dynamic>> userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> addUser(AppUserModel user) async {
    await userCollection.doc(user.id).set(
      {
        'email': user.email,
        'name': user.name,
        'photoUrl': user.photoUrl,
        'createdAt': user.createdAt,
        'isActive': user.isActive,
      },
    );
  }

  static Future<AppUserModel> getUser(String userID) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await userCollection.doc(userID).get();

    final data = snapshot.data();
    return AppUserModel(
      id: userID,
      email: data?['email'] as String?,
      name: (data?['name'] as String?) ?? 'Guest',
      photoUrl: data?['photoUrl'] as String?,
      // because the createdAt one is not exist in very first time so we make it nullable
      createdAt: (data?['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      isActive: (data?['isActive'] as bool?) ?? true,
    );
  }

  static Future<void> updateUser(
    AppUserModel user, {
    bool? isActivated,
  }) async {
    await userCollection.doc(user.id).set(
      {
        'email': user.email,
        'name': user.name,
        'photoUrl': user.photoUrl,
        'createdAt': user.createdAt,
        'isActive': isActivated ?? user.isActive,
      },
    );
  }

  static Future<void> deleteUser(String userID) async {
    await userCollection.doc(userID).delete();
  }
}
