part of 'hadith_flashcard_bloc.dart';

@freezed
class HadithFlashcardState with _$HadithFlashcardState {
  const factory HadithFlashcardState({
    required Option<Either<CommonFailures, Unit>> optionFailureOrSuccess,
  }) = _HadithFlashcardState;

  factory HadithFlashcardState.initial() => HadithFlashcardState(
        optionFailureOrSuccess: none(),
      );
}
