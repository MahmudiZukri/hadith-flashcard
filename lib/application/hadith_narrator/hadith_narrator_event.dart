part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorEvent with _$HadithNarratorEvent {
  const factory HadithNarratorEvent.getHadithNarrators() = _GetHadithNarrators;
  const factory HadithNarratorEvent.getHadithsByNarratorName({
    required UniqueString narratorName,
    PositiveNumber? hadithNumber,
    bool? isNextPage,
    PositiveNumber? limit,
  }) = _GetHadithByNarratorName;
  const factory HadithNarratorEvent.narratorFilterChanged({
    required HadithNarrator selectedNarrator,
  }) = _NarratorFilterChanged;
  const factory HadithNarratorEvent.hadithNumberSearch({
    required PositiveNumber? number,
  }) = _HadithNumberSearch;
  const factory HadithNarratorEvent.searchHadith() = _SearchHadith;
}
