import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';

abstract class IAuthRepository {
  Future<Either<CommonFailures, Unit>> signUp({
    required String email,
    required String name,
    required String password,
  });
}
