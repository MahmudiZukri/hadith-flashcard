import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/number_objects.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';

part 'hadith_narrator.freezed.dart';

@freezed
class HadithNarrator with _$HadithNarrator {
  const factory HadithNarrator({
    required PersonName name,
    required UniqueString slug,
    required PositiveNumber total,
  }) = _HadithNarrator;
}
