part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorState with _$HadithNarratorState {
  const factory HadithNarratorState({
    required Option<Either<CommonFailures, IList<HadithNarrator>>>
        optionFailureOrHadithNarrator,
  }) = _HadithNarratorState;

  factory HadithNarratorState.initial() => HadithNarratorState(
        optionFailureOrHadithNarrator: none(),
      );
}
