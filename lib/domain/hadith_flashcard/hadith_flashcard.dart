import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/number_objects.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';

part 'hadith_flashcard.freezed.dart';

@freezed
class HadithFlashcard with _$HadithFlashcard {
  const factory HadithFlashcard({
    required UnemptyString question,
    required UnemptyString answer,
    required PositiveNumber interval,
    required int repetition,
    required double easeFactor,
    required DateTime reviewedDate,
  }) = _HadithNarrator;
}
