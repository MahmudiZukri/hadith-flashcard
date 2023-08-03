import 'package:fast_immutable_collections/fast_immutable_collections.dart';
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
    required Pagination? pagination,
    required IList<Item>? items,
  }) = _HadithNarrator;
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required PositiveNumber totalItems,
    required PositiveNumber currentPage,
    required PositiveNumber pageSize,
    required PositiveNumber totalPages,
    required PositiveNumber startPage,
    required PositiveNumber endPage,
    required PositiveNumber endIndex,
    required int startIndex,
    required IList<int> pages,
  }) = _Pagination;
}

@freezed
class Item with _$Item {
  const factory Item({
    required PositiveNumber number,
    required UnemptyString arab,
    required UnemptyString id,
  }) = _Item;
}
