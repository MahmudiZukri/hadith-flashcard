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
  $Res call({String name, String slug, int total});
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
    ) as $Val);
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
  $Res call({String name, String slug, int total});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HadithNarratorModel implements _HadithNarratorModel {
  const _$_HadithNarratorModel(
      {required this.name, required this.slug, required this.total});

  factory _$_HadithNarratorModel.fromJson(Map<String, dynamic> json) =>
      _$$_HadithNarratorModelFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  @override
  final int total;

  @override
  String toString() {
    return 'HadithNarratorModel(name: $name, slug: $slug, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithNarratorModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, total);

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
      required final int total}) = _$_HadithNarratorModel;

  factory _HadithNarratorModel.fromJson(Map<String, dynamic> json) =
      _$_HadithNarratorModel.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_HadithNarratorModelCopyWith<_$_HadithNarratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
