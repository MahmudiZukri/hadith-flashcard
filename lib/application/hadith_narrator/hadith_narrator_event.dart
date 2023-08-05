part of 'hadith_narrator_bloc.dart';

@freezed
class HadithNarratorEvent with _$HadithNarratorEvent {
  const factory HadithNarratorEvent.getHadithNarrators() = _GetHadithNarrators;
  const factory HadithNarratorEvent.getHadithNarratorByName({
    required UniqueString narratorName,
    PositiveNumber? page,
    PositiveNumber? limit,
  }) = _GetHadithNarratorByName;
}
