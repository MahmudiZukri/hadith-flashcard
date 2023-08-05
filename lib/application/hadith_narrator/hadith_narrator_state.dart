part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorState with _$HadithNarratorState {
  const factory HadithNarratorState({
    required Option<Either<CommonFailures, IList<HadithNarrator>>>
        optionFailureOrHadithNarrators,
    required Option<Either<CommonFailures, HadithNarrator>>
        optionFailureOrHadithNarratorByName,
  }) = _HadithNarratorState;

  factory HadithNarratorState.initial() => HadithNarratorState(
        optionFailureOrHadithNarrators: none(),
        optionFailureOrHadithNarratorByName: none(),
      );
}
