import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/hadith_narrator/hadith_narrator.dart';

part 'hadith_narrator_model.freezed.dart';
part 'hadith_narrator_model.g.dart';

@freezed
class HadithNarratorModel with _$HadithNarratorModel {
  const factory HadithNarratorModel({
    required String name,
    required String slug,
    required int total,
    required PaginationModel? pagination,
    required IList<ItemModel>? items,
  }) = _HadithNarratorModel;

  factory HadithNarratorModel.fromJson(Map<String, dynamic> json) =>
      _$HadithNarratorModelFromJson(json);
}

extension HadithNarratorModelX on HadithNarratorModel {
  HadithNarrator toDomain() => HadithNarrator(
        name: PersonName(name),
        slug: UniqueString.fromUniqueString(slug),
        total: PositiveNumber(total),
        pagination: pagination == null ? null : pagination!.toDomain(),
        items: items == null
            ? null
            : items!
                .map(
                  (element) => element.toDomain(),
                )
                .toIList(),
      );
}

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    required int totalItems,
    required int currentPage,
    required int pageSize,
    required int totalPages,
    required int startPage,
    required int endPage,
    required int endIndex,
    required int startIndex,
    required IList<int> pages,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

extension PaginationModelX on PaginationModel {
  Pagination toDomain() => Pagination(
        totalItems: PositiveNumber(totalItems),
        currentPage: PositiveNumber(currentPage),
        pageSize: PositiveNumber(pageSize),
        totalPages: PositiveNumber(totalPages),
        startPage: PositiveNumber(startPage),
        endPage: PositiveNumber(endPage),
        endIndex: PositiveNumber(endIndex),
        startIndex: startIndex,
        pages: pages,
      );
}

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required int number,
    required String arab,
    required String id,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}

extension ItemModelX on ItemModel {
  Item toDomain() => Item(
        number: PositiveNumber(number),
        arab: UnemptyString(arab),
        id: UnemptyString(id),
      );
}
