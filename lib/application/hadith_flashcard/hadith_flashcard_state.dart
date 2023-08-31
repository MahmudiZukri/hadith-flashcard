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

extension HadithFlashcardStateX on HadithFlashcardState {
  IList<HadithFlashcard> get getFlashcardsToReview =>
      optionFailureOrGetFlashcardSuccess.match(
        () => <HadithFlashcard>[].lock,
        (either) => either.fold(
          (l) => <HadithFlashcard>[].lock,
          (flashcards) {
            return flashcards.where(
              (flashcard) {
                return CommonUtils.daysBetween(
                      from: flashcard.reviewedDate,
                      to: DateTime.now(),
                    ) >=
                    flashcard.interval;
              },
            ).toIList();
          },
        ),
      );
}
