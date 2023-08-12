import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/number_objects.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';

part 'hadith_flashcard_model.freezed.dart';
part 'hadith_flashcard_model.g.dart';

@freezed
class HadithFlashcardModel with _$HadithFlashcardModel {
  const factory HadithFlashcardModel({
    required String question,
    required String answer,
    required int interval,
    required int repetition,
    required double easeFactor,
    required DateTime reviewedDate,
  }) = _HadithFlashcardModel;

  factory HadithFlashcardModel.fromJson(Map<String, dynamic> json) =>
      _$HadithFlashcardModelFromJson(json);
}

extension HadithFlashcardModelX on HadithFlashcardModel {
  HadithFlashcard toDomain() => HadithFlashcard(
        question: UnemptyString(question),
        answer: UnemptyString(answer),
        interval: PositiveNumber(interval),
        repetition: repetition,
        easeFactor: easeFactor,
        reviewedDate: reviewedDate,
      );
}
