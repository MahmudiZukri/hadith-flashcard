part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardState with _$HadithFlashcardState {
  const factory HadithFlashcardState({
    required UnemptyString? searchFlashcardText,
    required int numofReviewedFlashcard,
    required int flashcardToReviewTodayLength,
    required bool isShowResetFlashcardClarification,
    required IList<HadithFlashcard> flashcards,
    required IList<HadithFlashcard> myHadithFlashcards,
    required Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
    required Option<Either<CommonFailures, Unit>>
        optionFailureOrDeleteFlashcard,
    required Option<Either<CommonFailures, IList<HadithFlashcard>>>
        optionFailureOrGetFlashcard,
  }) = _HadithFlashcardState;

  factory HadithFlashcardState.initial() => HadithFlashcardState(
        searchFlashcardText: null,
        numofReviewedFlashcard: 0,
        flashcardToReviewTodayLength: 0,
        isShowResetFlashcardClarification: false,
        flashcards: <HadithFlashcard>[].lock,
        myHadithFlashcards: <HadithFlashcard>[].lock,
        optionFailureOrSaveFlashcard: none(),
        optionFailureOrDeleteFlashcard: none(),
        optionFailureOrGetFlashcard: none(),
      );
}

extension HadithFlashcardStateX on HadithFlashcardState {
  bool get getFlashcardIsLoading => optionFailureOrGetFlashcard.match(
        () => true,
        (t) => false,
      );

  IList<HadithFlashcard> get getFlashcards => optionFailureOrGetFlashcard.match(
        () => <HadithFlashcard>[].lock,
        (either) => either.fold(
          (l) => <HadithFlashcard>[].lock,
          (flashcard) => flashcard,
        ),
      );

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

  bool get isShowCongratsAnimation =>
      numofReviewedFlashcard == flashcardToReviewTodayLength &&
      flashcardToReviewTodayLength != 0 &&
      numofReviewedFlashcard != 0;

  IList<String> get getLengthOfSavedFlashcardByNarratorName =>
      optionFailureOrGetFlashcard.match(
        () => <String>[].lock,
        (either) => either.fold(
          (l) => <String>[].lock,
          (flashcards) {
            return flashcards
                .map(
                  (element) => element.hadithNarratorName.getOrEmpty(),
                )
                .toIList();
          },
        ),
      );

  IList<HadithFlashcard> get getFilteredMyFlashcardByNarratorName =>
      optionFailureOrGetFlashcard.match(
        () => <HadithFlashcard>[].lock,
        (either) => either
            .fold(
              (l) => <HadithFlashcard>[].lock,
              (flashcards) => CommonUtils.removeDuplicatesNarrator(flashcards),
            )
            .toIList(),
      );
}
