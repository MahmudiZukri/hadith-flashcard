part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardState with _$HadithFlashcardState {
  const factory HadithFlashcardState({
    required Option<Either<CommonFailures, Unit>>
        optionFailureOrSaveFlashcardSuccess,
    required Option<Either<CommonFailures, IList<HadithFlashcard>>>
        optionFailureOrGetFlashcardSuccess,
  }) = _HadithFlashcardState;

  factory HadithFlashcardState.initial() => HadithFlashcardState(
        optionFailureOrSaveFlashcardSuccess: none(),
        optionFailureOrGetFlashcardSuccess: none(),
      );
}
