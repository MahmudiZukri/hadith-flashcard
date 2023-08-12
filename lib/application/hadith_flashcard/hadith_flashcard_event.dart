part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardEvent with _$HadithFlashcardEvent {
  const factory HadithFlashcardEvent.saveFlashcard({
    required UniqueString userId,
    required HadithFlashcardModel flashcard,
  }) = _SaveFlashcard;
}
