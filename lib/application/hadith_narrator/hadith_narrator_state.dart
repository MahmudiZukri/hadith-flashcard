part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorState with _$HadithNarratorState {
  const factory HadithNarratorState({
    required IList<Item> hadiths,
    required bool isSearching,
    required HadithNarrator? selectedNarrator,
    required PositiveNumber? hadithNumber,
    required Option<Either<CommonFailures, IList<HadithNarrator>>>
        optionFailureOrHadithNarrators,
    required Option<Either<CommonFailures, HadithNarrator>>
        optionFailureOrHadithNarratorByName,
  }) = _HadithNarratorState;

  factory HadithNarratorState.initial() => HadithNarratorState(
        hadiths: <Item>[].lock,
        isSearching: false,
        hadithNumber: null,
        selectedNarrator: null,
        optionFailureOrHadithNarrators: none(),
        optionFailureOrHadithNarratorByName: none(),
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
