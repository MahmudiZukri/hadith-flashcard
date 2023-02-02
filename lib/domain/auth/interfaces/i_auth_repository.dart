import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';

abstract class IAuthRepository {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static Stream<User?> get userStream => auth.authStateChanges();

  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  });
  Future<Either<CommonFailures, Unit>> signIn({
    required String email,
    required String password,
  });
  Future<Either<CommonFailures, Unit>> signOut();

  Future<Either<CommonFailures, Unit>> resetPassword({
    required String email,
  });
}
