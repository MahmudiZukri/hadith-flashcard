import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_flashcard/hadith_flashcard.dart';

part 'hadith_flashcard_model.freezed.dart';
part 'hadith_flashcard_model.g.dart';

@freezed
class HadithFlashcardModel with _$HadithFlashcardModel {
  const factory HadithFlashcardModel({
    // because the userName one is not exist in very first time so we make it nullable
    required String? userName,
    required String hadithNarratorName,
    required int hadithNumber,
    required String arab,
    required String translation,
    required int interval,
    required int repetition,
    required double easeFactor,
    required DateTime reviewedDate,
    DateTime? createdAt,
  }) = _HadithFlashcardModel;

  factory HadithFlashcardModel.fromJson(Map<String, dynamic> json) =>
      _$HadithFlashcardModelFromJson(json);
}

extension HadithFlashcardModelX on HadithFlashcardModel {
  HadithFlashcard toDomain() => HadithFlashcard(
        userName: userName == null ? null : PersonName(userName!),
        hadithNarratorName: PersonName(hadithNarratorName),
        hadithNumber: PositiveNumber(hadithNumber),
        arab: UnemptyString(arab),
        translation: UnemptyString(translation),
        interval: interval,
        repetition: repetition,
        easeFactor: easeFactor,
        reviewedDate: reviewedDate,
        createdAt: createdAt,
      );
}
