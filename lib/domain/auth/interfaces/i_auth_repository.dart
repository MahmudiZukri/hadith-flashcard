import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/app_user/app_user.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';

abstract class IAuthRepository {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static Stream<User?> get userStream => auth.authStateChanges();
  static final CollectionReference<Map<String, dynamic>> userCollection =
      FirebaseFirestore.instance.collection(
    'users',
  );

  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  });
  Future<Either<CommonFailures, AppUser>> signIn({
    required String email,
    required String password,
  });
}
