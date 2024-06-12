import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';

part 'hadith_flashcard.freezed.dart';

@freezed
class HadithFlashcard with _$HadithFlashcard {
  const factory HadithFlashcard({
    // because the userName one is not exist in very first time so we make it nullable
    required PersonName? userName,
    required PersonName hadithNarratorName,
    required PositiveNumber hadithNumber,
    required UnemptyString arab,
    required UnemptyString translation,
    required DateTime reviewedDate,
    required int interval,
    required int repetition,
    required double easeFactor,
    DateTime? createdAt,
  }) = _HadithFlashcard;
}
