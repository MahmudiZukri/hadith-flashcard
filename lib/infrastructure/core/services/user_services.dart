part of 'services.dart';

class UserServices {
  static final CollectionReference<Map<String, dynamic>> _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> addUser(AppUserModel user) async {
    await _userCollection.doc(user.id).set(
      {
        'email': user.email,
        'name': user.name,
        'photoUrl': user.photoUrl,
      },
    );
  }

  static Future<AppUserModel> getUser(String userID) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _userCollection.doc(userID).get();

    return AppUserModel(
      id: userID,
      email: snapshot.data()?['email'],
      name: snapshot.data()?['name'],
      photoUrl: snapshot.data()?['photoUrl'],
    );
  }
}
