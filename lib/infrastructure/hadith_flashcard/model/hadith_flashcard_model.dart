import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';

part 'hadith_flashcard_model.freezed.dart';
part 'hadith_flashcard_model.g.dart';

@freezed
class HadithFlashcardModel with _$HadithFlashcardModel {
  const factory HadithFlashcardModel({
    required String question,
    required String answer,
    required String translation,
    required DateTime reviewedDate,
    int? interval,
    int? repetition,
    double? easeFactor,
  }) = _HadithFlashcardModel;

  factory HadithFlashcardModel.fromJson(Map<String, dynamic> json) =>
      _$HadithFlashcardModelFromJson(json);
}

extension HadithFlashcardModelX on HadithFlashcardModel {
  HadithFlashcard toDomain() => HadithFlashcard(
        question: UnemptyString(question),
        answer: UnemptyString(answer),
        translation: UnemptyString(translation),
        interval: interval ?? 0,
        repetition: repetition ?? 0,
        easeFactor: easeFactor ?? 0,
        reviewedDate: reviewedDate,
      );
}
