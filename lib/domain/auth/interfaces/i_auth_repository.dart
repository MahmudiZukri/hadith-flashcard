import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hadith_flashcard/domain/app_user/app_user.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';

abstract class IAuthRepository {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static Stream<User?> get userStream => auth.authStateChanges();
  static GoogleSignIn googleSignIn = GoogleSignIn();

  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  });

  Future<Either<CommonFailures, Unit>> signUpOrSignInWithGoogle();

  Future<Either<CommonFailures, AppUser>> signUpOrSignInWithFacebook();

  Future<Either<CommonFailures, Unit>> signIn({
    required String email,
    required String password,
  });
  Future<Either<CommonFailures, Unit>> signOut();
  Future<Either<CommonFailures, Unit>> resetPassword({
    required String email,
  });
}
