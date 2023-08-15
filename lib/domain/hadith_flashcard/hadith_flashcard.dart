import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';

part 'hadith_flashcard.freezed.dart';

@freezed
class HadithFlashcard with _$HadithFlashcard {
  const factory HadithFlashcard({
    required UnemptyString question,
    required UnemptyString answer,
    required UnemptyString translation,
    required DateTime reviewedDate,
    required int interval,
    required int repetition,
    required double easeFactor,
  }) = _HadithNarrator;
}
