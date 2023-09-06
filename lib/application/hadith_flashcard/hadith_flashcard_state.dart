part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardState with _$HadithFlashcardState {
  const factory HadithFlashcardState({
    required int flashcardToReviewLength,
    required IList<HadithFlashcard> flashcards,
    required Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
    required Option<Either<CommonFailures, IList<HadithFlashcard>>>
        optionFailureOrGetFlashcard,
  }) = _HadithFlashcardState;

  factory HadithFlashcardState.initial() => HadithFlashcardState(
        flashcardToReviewLength: 0,
        flashcards: <HadithFlashcard>[].lock,
        optionFailureOrSaveFlashcard: none(),
        optionFailureOrGetFlashcard: none(),
      );
}

extension HadithFlashcardStateX on HadithFlashcardState {
  IList<HadithFlashcard> get getFlashcardsToReview =>
      optionFailureOrGetFlashcard.match(
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
