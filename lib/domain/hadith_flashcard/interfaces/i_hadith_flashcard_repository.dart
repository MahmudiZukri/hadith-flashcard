import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/infrastructure/hadith_flashcard/model/hadith_flashcard_model.dart';

abstract class IHadithFlashcardRepository {
  Future<Either<CommonFailures, Unit>> saveFlashcard({
    required String userID,
    required HadithFlashcardModel flashcard,
  });
}
