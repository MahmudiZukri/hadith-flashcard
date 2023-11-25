part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorEvent with _$HadithNarratorEvent {
  const factory HadithNarratorEvent.getHadithNarrators() = _GetHadithNarrators;
  const factory HadithNarratorEvent.getHadithByNarratorName({
    required UniqueString narratorName,
    bool? isNextPage,
    PositiveNumber? limit,
  }) = _GetHadithByNarratorName;
  const factory HadithNarratorEvent.narratorFilterChanged({
    required UniqueString narratorName,
  }) = _NarratorFilterChanged;
  const factory HadithNarratorEvent.hadithNumberSearch({
    required UnemptyString numberText,
  }) = _HadithNumberSearch;
  const factory HadithNarratorEvent.searchHadith() = _SearchHadith;
}
