// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_narrator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HadithNarrator {
  PersonName get name => throw _privateConstructorUsedError;
  UniqueString get slug => throw _privateConstructorUsedError;
  PositiveNumber get total => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;
  IList<Item>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HadithNarratorCopyWith<HadithNarrator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithNarratorCopyWith<$Res> {
  factory $HadithNarratorCopyWith(
          HadithNarrator value, $Res Function(HadithNarrator) then) =
      _$HadithNarratorCopyWithImpl<$Res, HadithNarrator>;
  @useResult
  $Res call(
      {PersonName name,
      UniqueString slug,
      PositiveNumber total,
      Pagination? pagination,
      IList<Item>? items});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$HadithNarratorCopyWithImpl<$Res, $Val extends HadithNarrator>
    implements $HadithNarratorCopyWith<$Res> {
  _$HadithNarratorCopyWithImpl(this._value, this._then);

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
              as PersonName,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<Item>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HadithNarratorImplCopyWith<$Res>
    implements $HadithNarratorCopyWith<$Res> {
  factory _$$HadithNarratorImplCopyWith(_$HadithNarratorImpl value,
          $Res Function(_$HadithNarratorImpl) then) =
      __$$HadithNarratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PersonName name,
      UniqueString slug,
      PositiveNumber total,
      Pagination? pagination,
      IList<Item>? items});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$HadithNarratorImplCopyWithImpl<$Res>
    extends _$HadithNarratorCopyWithImpl<$Res, _$HadithNarratorImpl>
    implements _$$HadithNarratorImplCopyWith<$Res> {
  __$$HadithNarratorImplCopyWithImpl(
      _$HadithNarratorImpl _value, $Res Function(_$HadithNarratorImpl) _then)
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
    return _then(_$HadithNarratorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PersonName,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<Item>?,
    ));
  }
}

/// @nodoc

class _$HadithNarratorImpl implements _HadithNarrator {
  const _$HadithNarratorImpl(
      {required this.name,
      required this.slug,
      required this.total,
      required this.pagination,
      required this.items});

  @override
  final PersonName name;
  @override
  final UniqueString slug;
  @override
  final PositiveNumber total;
  @override
  final Pagination? pagination;
  @override
  final IList<Item>? items;

  @override
  String toString() {
    return 'HadithNarrator(name: $name, slug: $slug, total: $total, pagination: $pagination, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithNarratorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, slug, total, pagination,
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithNarratorImplCopyWith<_$HadithNarratorImpl> get copyWith =>
      __$$HadithNarratorImplCopyWithImpl<_$HadithNarratorImpl>(
          this, _$identity);
}

abstract class _HadithNarrator implements HadithNarrator {
  const factory _HadithNarrator(
      {required final PersonName name,
      required final UniqueString slug,
      required final PositiveNumber total,
      required final Pagination? pagination,
      required final IList<Item>? items}) = _$HadithNarratorImpl;

  @override
  PersonName get name;
  @override
  UniqueString get slug;
  @override
  PositiveNumber get total;
  @override
  Pagination? get pagination;
  @override
  IList<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$HadithNarratorImplCopyWith<_$HadithNarratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Pagination {
  PositiveNumber get totalItems => throw _privateConstructorUsedError;
  PositiveNumber get currentPage => throw _privateConstructorUsedError;
  PositiveNumber get pageSize => throw _privateConstructorUsedError;
  PositiveNumber get totalPages => throw _privateConstructorUsedError;
  PositiveNumber get startPage => throw _privateConstructorUsedError;
  PositiveNumber get endPage => throw _privateConstructorUsedError;
  PositiveNumber get endIndex => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  IList<int> get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {PositiveNumber totalItems,
      PositiveNumber currentPage,
      PositiveNumber pageSize,
      PositiveNumber totalPages,
      PositiveNumber startPage,
      PositiveNumber endPage,
      PositiveNumber endIndex,
      int startIndex,
      IList<int> pages});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

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
              as PositiveNumber,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      endPage: null == endPage
          ? _value.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
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
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PositiveNumber totalItems,
      PositiveNumber currentPage,
      PositiveNumber pageSize,
      PositiveNumber totalPages,
      PositiveNumber startPage,
      PositiveNumber endPage,
      PositiveNumber endIndex,
      int startIndex,
      IList<int> pages});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
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
    return _then(_$PaginationImpl(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      endPage: null == endPage
          ? _value.endPage
          : endPage // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      endIndex: null == endIndex
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
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

class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {required this.totalItems,
      required this.currentPage,
      required this.pageSize,
      required this.totalPages,
      required this.startPage,
      required this.endPage,
      required this.endIndex,
      required this.startIndex,
      required this.pages});

  @override
  final PositiveNumber totalItems;
  @override
  final PositiveNumber currentPage;
  @override
  final PositiveNumber pageSize;
  @override
  final PositiveNumber totalPages;
  @override
  final PositiveNumber startPage;
  @override
  final PositiveNumber endPage;
  @override
  final PositiveNumber endIndex;
  @override
  final int startIndex;
  @override
  final IList<int> pages;

  @override
  String toString() {
    return 'Pagination(totalItems: $totalItems, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, startPage: $startPage, endPage: $endPage, endIndex: $endIndex, startIndex: $startIndex, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
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
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {required final PositiveNumber totalItems,
      required final PositiveNumber currentPage,
      required final PositiveNumber pageSize,
      required final PositiveNumber totalPages,
      required final PositiveNumber startPage,
      required final PositiveNumber endPage,
      required final PositiveNumber endIndex,
      required final int startIndex,
      required final IList<int> pages}) = _$PaginationImpl;

  @override
  PositiveNumber get totalItems;
  @override
  PositiveNumber get currentPage;
  @override
  PositiveNumber get pageSize;
  @override
  PositiveNumber get totalPages;
  @override
  PositiveNumber get startPage;
  @override
  PositiveNumber get endPage;
  @override
  PositiveNumber get endIndex;
  @override
  int get startIndex;
  @override
  IList<int> get pages;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Item {
  PositiveNumber get number => throw _privateConstructorUsedError;
  UnemptyString get arab => throw _privateConstructorUsedError;
  UnemptyString get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({PositiveNumber number, UnemptyString arab, UnemptyString id});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

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
              as PositiveNumber,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PositiveNumber number, UnemptyString arab, UnemptyString id});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? arab = null,
    Object? id = null,
  }) {
    return _then(_$ItemImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ));
  }
}

/// @nodoc

class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.number, required this.arab, required this.id});

  @override
  final PositiveNumber number;
  @override
  final UnemptyString arab;
  @override
  final UnemptyString id;

  @override
  String toString() {
    return 'Item(number: $number, arab: $arab, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, arab, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(
      {required final PositiveNumber number,
      required final UnemptyString arab,
      required final UnemptyString id}) = _$ItemImpl;

  @override
  PositiveNumber get number;
  @override
  UnemptyString get arab;
  @override
  UnemptyString get id;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
