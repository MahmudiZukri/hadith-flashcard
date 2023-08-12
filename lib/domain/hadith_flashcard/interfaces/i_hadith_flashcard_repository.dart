import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/infrastructure/app_user/model/app_user_model.dart';

abstract class IHadithFlashcardRepository {
  Future<Either<CommonFailures, Unit>> saveFlashcard({
    required String userId,
    required AppUserModel user,
  });
}
