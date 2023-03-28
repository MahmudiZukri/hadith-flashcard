import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/number_objects.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';

part 'hadith_narrator_model.freezed.dart';
part 'hadith_narrator_model.g.dart';

@freezed
class HadithNarratorModel with _$HadithNarratorModel {
  const factory HadithNarratorModel({
    required String name,
    required String slug,
    required int total,
  }) = _HadithNarratorModel;

  factory HadithNarratorModel.fromJson(Map<String, dynamic> json) =>
      _$HadithNarratorModelFromJson(json);
}

extension HadithNarratorModelX on HadithNarratorModel {
  HadithNarrator toDomain() => HadithNarrator(
        name: PersonName(name),
        slug: UniqueString.fromUniqueString(slug),
        total: PositiveNumber(total),
      );
}
