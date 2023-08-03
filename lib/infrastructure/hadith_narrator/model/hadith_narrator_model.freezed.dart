// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_narrator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HadithNarratorModel _$HadithNarratorModelFromJson(Map<String, dynamic> json) {
  return _HadithNarratorModel.fromJson(json);
}

/// @nodoc
mixin _$HadithNarratorModel {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;
  IList<ItemModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HadithNarratorModelCopyWith<HadithNarratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithNarratorModelCopyWith<$Res> {
  factory $HadithNarratorModelCopyWith(
          HadithNarratorModel value, $Res Function(HadithNarratorModel) then) =
      _$HadithNarratorModelCopyWithImpl<$Res, HadithNarratorModel>;
  @useResult
  $Res call(
      {String name,
      String slug,
      int total,
      PaginationModel? pagination,
      IList<ItemModel>? items});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$HadithNarratorModelCopyWithImpl<$Res, $Val extends HadithNarratorModel>
    implements $HadithNarratorModelCopyWith<$Res> {
  _$HadithNarratorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? total = null,
    Object? pagination = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<ItemModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HadithNarratorModelCopyWith<$Res>
    implements $HadithNarratorModelCopyWith<$Res> {
  factory _$$_HadithNarratorModelCopyWith(_$_HadithNarratorModel value,
          $Res Function(_$_HadithNarratorModel) then) =
      __$$_HadithNarratorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String slug,
      int total,
      PaginationModel? pagination,
      IList<ItemModel>? items});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_HadithNarratorModelCopyWithImpl<$Res>
    extends _$HadithNarratorModelCopyWithImpl<$Res, _$_HadithNarratorModel>
    implements _$$_HadithNarratorModelCopyWith<$Res> {
  __$$_HadithNarratorModelCopyWithImpl(_$_HadithNarratorModel _value,
      $Res Function(_$_HadithNarratorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? total = null,
    Object? pagination = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_HadithNarratorModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<ItemModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HadithNarratorModel implements _HadithNarratorModel {
  const _$_HadithNarratorModel(
      {required this.name,
      required this.slug,
      required this.total,
      required this.pagination,
      required this.items});

  factory _$_HadithNarratorModel.fromJson(Map<String, dynamic> json) =>
      _$$_HadithNarratorModelFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  @override
  final int total;
  @override
  final PaginationModel? pagination;
  @override
  final IList<ItemModel>? items;

  @override
  String toString() {
    return 'HadithNarratorModel(name: $name, slug: $slug, total: $total, pagination: $pagination, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithNarratorModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, total, pagination,
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithNarratorModelCopyWith<_$_HadithNarratorModel> get copyWith =>
      __$$_HadithNarratorModelCopyWithImpl<_$_HadithNarratorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HadithNarratorModelToJson(
      this,
    );
  }
}

abstract class _HadithNarratorModel implements HadithNarratorModel {
  const factory _HadithNarratorModel(
      {required final String name,
      required final String slug,
      required final int total,
      required final PaginationModel? pagination,
      required final IList<ItemModel>? items}) = _$_HadithNarratorModel;

  factory _HadithNarratorModel.fromJson(Map<String, dynamic> json) =
      _$_HadithNarratorModel.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  int get total;
  @override
  PaginationModel? get pagination;
  @override
  IList<ItemModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_HadithNarratorModelCopyWith<_$_HadithNarratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  int get totalItems => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get startPage => throw _privateConstructorUsedError;
  int get endPage => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  IList<int> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call(
      {int totalItems,
      int currentPage,
      int pageSize,
      int totalPages,
      int startPage,
      int endPage,
      int endIndex,
      int startIndex,
      IList<int> pages});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? startPage = null,
    Object? endPage = null,
    Object? endIndex = null,
    Object? startIndex = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _value.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationModelCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$_PaginationModelCopyWith(
          _$_PaginationModel value, $Res Function(_$_PaginationModel) then) =
      __$$_PaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalItems,
      int currentPage,
      int pageSize,
      int totalPages,
      int startPage,
      int endPage,
      int endIndex,
      int startIndex,
      IList<int> pages});
}

/// @nodoc
class __$$_PaginationModelCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$_PaginationModel>
    implements _$$_PaginationModelCopyWith<$Res> {
  __$$_PaginationModelCopyWithImpl(
      _$_PaginationModel _value, $Res Function(_$_PaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? startPage = null,
    Object? endPage = null,
    Object? endIndex = null,
    Object? startIndex = null,
    Object? pages = null,
  }) {
    return _then(_$_PaginationModel(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      endPage: null == endPage
          ? _value.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      startIndex: null == startIndex
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as IList<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationModel implements _PaginationModel {
  const _$_PaginationModel(
      {required this.totalItems,
      required this.currentPage,
      required this.pageSize,
      required this.totalPages,
      required this.startPage,
      required this.endPage,
      required this.endIndex,
      required this.startIndex,
      required this.pages});

  factory _$_PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationModelFromJson(json);

  @override
  final int totalItems;
  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final int startPage;
  @override
  final int endPage;
  @override
  final int endIndex;
  @override
  final int startIndex;
  @override
  final IList<int> pages;

  @override
  String toString() {
    return 'PaginationModel(totalItems: $totalItems, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, startPage: $startPage, endPage: $endPage, endIndex: $endIndex, startIndex: $startIndex, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationModel &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.endPage, endPage) || other.endPage == endPage) &&
            (identical(other.endIndex, endIndex) ||
                other.endIndex == endIndex) &&
            (identical(other.startIndex, startIndex) ||
                other.startIndex == startIndex) &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItems,
      currentPage,
      pageSize,
      totalPages,
      startPage,
      endPage,
      endIndex,
      startIndex,
      const DeepCollectionEquality().hash(pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      __$$_PaginationModelCopyWithImpl<_$_PaginationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationModelToJson(
      this,
    );
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel(
      {required final int totalItems,
      required final int currentPage,
      required final int pageSize,
      required final int totalPages,
      required final int startPage,
      required final int endPage,
      required final int endIndex,
      required final int startIndex,
      required final IList<int> pages}) = _$_PaginationModel;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationModel.fromJson;

  @override
  int get totalItems;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  int get startPage;
  @override
  int get endPage;
  @override
  int get endIndex;
  @override
  int get startIndex;
  @override
  IList<int> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  int get number => throw _privateConstructorUsedError;
  String get arab => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call({int number, String arab, String id});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? arab = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$$_ItemModelCopyWith(
          _$_ItemModel value, $Res Function(_$_ItemModel) then) =
      __$$_ItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String arab, String id});
}

/// @nodoc
class __$$_ItemModelCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$_ItemModel>
    implements _$$_ItemModelCopyWith<$Res> {
  __$$_ItemModelCopyWithImpl(
      _$_ItemModel _value, $Res Function(_$_ItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? arab = null,
    Object? id = null,
  }) {
    return _then(_$_ItemModel(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      {required this.number, required this.arab, required this.id});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final int number;
  @override
  final String arab;
  @override
  final String id;

  @override
  String toString() {
    return 'ItemModel(number: $number, arab: $arab, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModel &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, arab, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      __$$_ItemModelCopyWithImpl<_$_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {required final int number,
      required final String arab,
      required final String id}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int get number;
  @override
  String get arab;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
