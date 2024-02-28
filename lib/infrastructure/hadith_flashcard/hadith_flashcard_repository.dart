part of '../repositories.dart';

@LazySingleton(as: IHadithFlashcardRepository)
class HadithFlashcardRepository implements IHadithFlashcardRepository {
  @override
  Future<Either<CommonFailures, Unit>> saveFlashcard({
    required String userID,
    required HadithFlashcardModel flashcard,
  }) async {
    try {
      await HadithFlashcardServices.saveFlashcard(
        userID: userID,
        flashcard: flashcard,
      );

      return right(unit);
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.platformException(
          message: e.message.toString(),
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('3------- $stackTrace -------3');

      return left(
        const CommonFailures.other(
          message: 'Something went wrong in hadith flashcard repository',
        ),
      );
    }
  }

  @override
  Future<Either<CommonFailures, Unit>> deleteFlashcard({
    required String userID,
    required String flashcardID,
  }) async {
    try {
      await HadithFlashcardServices.deleteFlashcard(
        userID: userID,
        flashcardID: flashcardID,
      );

      return right(unit);
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.platformException(
          message: e.message.toString(),
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('3------- $stackTrace -------3');

      return left(
        const CommonFailures.other(
          message: 'Something went wrong in hadith flashcard repository',
        ),
      );
    }
  }

  @override
  Future<Either<CommonFailures, IList<HadithFlashcard>>> getFlashcard({
    required String userID,
  }) async {
    try {
      final flashcards = await HadithFlashcardServices.getFlashcard(
        userID: userID,
      );

      return right(
        flashcards.map((e) => e.toDomain()).toIList(),
      );
    } on PlatformException catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');
      return left(
        CommonFailures.platformException(
          message: e.message.toString(),
        ),
      );
    } on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('2------- $stackTrace -------2');
      return left(
        CommonFailures.handledByFirebase(
          message: e.message.toString(),
        ),
      );
    } catch (e, stackTrace) {
      debugPrint('3------- $stackTrace -------3');

      return left(
        const CommonFailures.other(
          message: 'Something went wrong in hadith flashcard repository',
        ),
      );
    }
  }
}
