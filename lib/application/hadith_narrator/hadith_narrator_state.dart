part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorState with _$HadithNarratorState {
  const factory HadithNarratorState({
    required IList<Item> hadiths,
    required UniqueString selectedNarratorName,
    required UnemptyString hadithNumberSearch,
    required Option<Either<CommonFailures, IList<HadithNarrator>>>
        optionFailureOrHadithNarrators,
    required Option<Either<CommonFailures, HadithNarrator>>
        optionFailureOrHadithNarratorByName,
    required Option<Either<CommonFailures, HadithNarrator>>
        optionFailureOrSearchHadithSuccess,
  }) = _HadithNarratorState;

  factory HadithNarratorState.initial() => HadithNarratorState(
        hadiths: <Item>[].lock,
        hadithNumberSearch: UnemptyString.empty(),
        selectedNarratorName: UniqueString.empty(),
        optionFailureOrHadithNarrators: none(),
        optionFailureOrHadithNarratorByName: none(),
        optionFailureOrSearchHadithSuccess: none(),
      );
}

extension HadithNarratorStateX on HadithNarratorState {
  Pagination? get getPagination => optionFailureOrHadithNarratorByName.match(
        () => null,
        (either) => either.fold(
          (l) => null,
          (hadithNarrator) => hadithNarrator.pagination,
        ),
      );
}
