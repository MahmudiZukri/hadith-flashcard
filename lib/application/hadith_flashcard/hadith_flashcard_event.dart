part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardEvent with _$HadithFlashcardEvent {
  const factory HadithFlashcardEvent.saveFlashcard({
    required UniqueString userID,
    required HadithFlashcard flashcard,
    int? quality,
  }) = _SaveFlashcard;
  const factory HadithFlashcardEvent.getFlashcard({
    required UniqueString userID,
  }) = _GetFlashcard;
  const factory HadithFlashcardEvent.resetFlashcardSnackBar() =
      _ResetFlashcardSnackBar;
  const factory HadithFlashcardEvent.resetFlashcardClarification({
    required bool isShowClarification,
  }) = _ResetFlashcardClarification;
}
