import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/auth/failures/auth_failures.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, bool>> saveUser({
    required String email,
    required String password,
  });
}