part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardEvent with _$HadithFlashcardEvent {
  const factory HadithFlashcardEvent.saveFlashcard({
    required UniqueString userID,
    required HadithFlashcardModel flashcard,
  }) = _SaveFlashcard;
  const factory HadithFlashcardEvent.getFlashcard({
    required UniqueString userID,
  }) = _GetFlashcard;
}
