// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
  $Res call({PersonName name, UniqueString slug, PositiveNumber total});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HadithNarratorCopyWith<$Res>
    implements $HadithNarratorCopyWith<$Res> {
  factory _$$_HadithNarratorCopyWith(
          _$_HadithNarrator value, $Res Function(_$_HadithNarrator) then) =
      __$$_HadithNarratorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersonName name, UniqueString slug, PositiveNumber total});
}

/// @nodoc
class __$$_HadithNarratorCopyWithImpl<$Res>
    extends _$HadithNarratorCopyWithImpl<$Res, _$_HadithNarrator>
    implements _$$_HadithNarratorCopyWith<$Res> {
  __$$_HadithNarratorCopyWithImpl(
      _$_HadithNarrator _value, $Res Function(_$_HadithNarrator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? total = null,
  }) {
    return _then(_$_HadithNarrator(
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
    ));
  }
}

/// @nodoc

class _$_HadithNarrator implements _HadithNarrator {
  const _$_HadithNarrator(
      {required this.name, required this.slug, required this.total});

  @override
  final PersonName name;
  @override
  final UniqueString slug;
  @override
  final PositiveNumber total;

  @override
  String toString() {
    return 'HadithNarrator(name: $name, slug: $slug, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithNarrator &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, slug, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithNarratorCopyWith<_$_HadithNarrator> get copyWith =>
      __$$_HadithNarratorCopyWithImpl<_$_HadithNarrator>(this, _$identity);
}

abstract class _HadithNarrator implements HadithNarrator {
  const factory _HadithNarrator(
      {required final PersonName name,
      required final UniqueString slug,
      required final PositiveNumber total}) = _$_HadithNarrator;

  @override
  PersonName get name;
  @override
  UniqueString get slug;
  @override
  PositiveNumber get total;
  @override
  @JsonKey(ignore: true)
  _$$_HadithNarratorCopyWith<_$_HadithNarrator> get copyWith =>
      throw _privateConstructorUsedError;
}
