part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorEvent with _$HadithNarratorEvent {
  const factory HadithNarratorEvent.getHadithNarrators() = _GetHadithNarrators;
  const factory HadithNarratorEvent.getHadithByNarratorName({
    required UniqueString narratorName,
    bool? isNextPage,
    PositiveNumber? limit,
  }) = _GetHadithByNarratorName;
}
