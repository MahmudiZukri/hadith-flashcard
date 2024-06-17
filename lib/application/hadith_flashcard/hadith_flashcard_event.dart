part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardEvent with _$HadithFlashcardEvent {
  const factory HadithFlashcardEvent.saveFlashcard({
    required UniqueString userID,
    required HadithFlashcard flashcard,
    int? quality,
  }) = _SaveFlashcard;
  const factory HadithFlashcardEvent.migrateFlashcards({
    required UniqueString userID,
    required IList<HadithFlashcard> flashcards,
  }) = _MigrateFlashcards;
  const factory HadithFlashcardEvent.isMigrating({
    required bool value,
  }) = _IsMigrating;
  const factory HadithFlashcardEvent.deleteFlashcard({
    required UniqueString userID,
    required UnemptyString flashcardID,
  }) = _DeleteFlashcard;
  const factory HadithFlashcardEvent.getFlashcard({
    required UniqueString userID,
  }) = _GetFlashcard;
  const factory HadithFlashcardEvent.resetFlashcardSnackBar() =
      _ResetFlashcardSnackBar;
  const factory HadithFlashcardEvent.resetFlashcardClarification({
    required bool isShowClarification,
  }) = _ResetFlashcardClarification;
  const factory HadithFlashcardEvent.addToMyFlashcard({
    required IList<HadithFlashcard> flashcards,
  }) = _AddToMyFlashcard;
  const factory HadithFlashcardEvent.deleteFromMyFlashcard({
    required HadithFlashcard flashcard,
  }) = _DeleteFromMyFlashcard;
}
