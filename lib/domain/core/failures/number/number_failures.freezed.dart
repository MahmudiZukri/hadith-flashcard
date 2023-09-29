// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberFailure {
  num? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num? failedValue) empty,
    required TResult Function(num? failedValue, num lowestRange)
        numberBelowLowestRange,
    required TResult Function(num? failedValue, num highestRange)
        numberExceedHighestRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num? failedValue)? empty,
    TResult? Function(num? failedValue, num lowestRange)?
        numberBelowLowestRange,
    TResult? Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num? failedValue)? empty,
    TResult Function(num? failedValue, num lowestRange)? numberBelowLowestRange,
    TResult Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(NumberBelowLowestRange value)
        numberBelowLowestRange,
    required TResult Function(NumberExceedHighestRange value)
        numberExceedHighestRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult? Function(NumberExceedHighestRange value)? numberExceedHighestRange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult Function(NumberExceedHighestRange value)? numberExceedHighestRange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberFailureCopyWith<NumberFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberFailureCopyWith<$Res> {
  factory $NumberFailureCopyWith(
          NumberFailure value, $Res Function(NumberFailure) then) =
      _$NumberFailureCopyWithImpl<$Res, NumberFailure>;
  @useResult
  $Res call({num? failedValue});
}

/// @nodoc
class _$NumberFailureCopyWithImpl<$Res, $Val extends NumberFailure>
    implements $NumberFailureCopyWith<$Res> {
  _$NumberFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res>
    implements $NumberFailureCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$NumberFailureCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl({required this.failedValue});

  @override
  final num? failedValue;

  @override
  String toString() {
    return 'NumberFailure.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num? failedValue) empty,
    required TResult Function(num? failedValue, num lowestRange)
        numberBelowLowestRange,
    required TResult Function(num? failedValue, num highestRange)
        numberExceedHighestRange,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num? failedValue)? empty,
    TResult? Function(num? failedValue, num lowestRange)?
        numberBelowLowestRange,
    TResult? Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num? failedValue)? empty,
    TResult Function(num? failedValue, num lowestRange)? numberBelowLowestRange,
    TResult Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(NumberBelowLowestRange value)
        numberBelowLowestRange,
    required TResult Function(NumberExceedHighestRange value)
        numberExceedHighestRange,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult? Function(NumberExceedHighestRange value)? numberExceedHighestRange,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult Function(NumberExceedHighestRange value)? numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements NumberFailure {
  const factory Empty({required final num? failedValue}) = _$EmptyImpl;

  @override
  num? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberBelowLowestRangeImplCopyWith<$Res>
    implements $NumberFailureCopyWith<$Res> {
  factory _$$NumberBelowLowestRangeImplCopyWith(
          _$NumberBelowLowestRangeImpl value,
          $Res Function(_$NumberBelowLowestRangeImpl) then) =
      __$$NumberBelowLowestRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? failedValue, num lowestRange});
}

/// @nodoc
class __$$NumberBelowLowestRangeImplCopyWithImpl<$Res>
    extends _$NumberFailureCopyWithImpl<$Res, _$NumberBelowLowestRangeImpl>
    implements _$$NumberBelowLowestRangeImplCopyWith<$Res> {
  __$$NumberBelowLowestRangeImplCopyWithImpl(
      _$NumberBelowLowestRangeImpl _value,
      $Res Function(_$NumberBelowLowestRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? lowestRange = null,
  }) {
    return _then(_$NumberBelowLowestRangeImpl(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num?,
      lowestRange: null == lowestRange
          ? _value.lowestRange
          : lowestRange // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$NumberBelowLowestRangeImpl implements NumberBelowLowestRange {
  const _$NumberBelowLowestRangeImpl(
      {required this.failedValue, required this.lowestRange});

  @override
  final num? failedValue;
  @override
  final num lowestRange;

  @override
  String toString() {
    return 'NumberFailure.numberBelowLowestRange(failedValue: $failedValue, lowestRange: $lowestRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberBelowLowestRangeImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.lowestRange, lowestRange) ||
                other.lowestRange == lowestRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, lowestRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberBelowLowestRangeImplCopyWith<_$NumberBelowLowestRangeImpl>
      get copyWith => __$$NumberBelowLowestRangeImplCopyWithImpl<
          _$NumberBelowLowestRangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num? failedValue) empty,
    required TResult Function(num? failedValue, num lowestRange)
        numberBelowLowestRange,
    required TResult Function(num? failedValue, num highestRange)
        numberExceedHighestRange,
  }) {
    return numberBelowLowestRange(failedValue, lowestRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num? failedValue)? empty,
    TResult? Function(num? failedValue, num lowestRange)?
        numberBelowLowestRange,
    TResult? Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
  }) {
    return numberBelowLowestRange?.call(failedValue, lowestRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num? failedValue)? empty,
    TResult Function(num? failedValue, num lowestRange)? numberBelowLowestRange,
    TResult Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (numberBelowLowestRange != null) {
      return numberBelowLowestRange(failedValue, lowestRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(NumberBelowLowestRange value)
        numberBelowLowestRange,
    required TResult Function(NumberExceedHighestRange value)
        numberExceedHighestRange,
  }) {
    return numberBelowLowestRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult? Function(NumberExceedHighestRange value)? numberExceedHighestRange,
  }) {
    return numberBelowLowestRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult Function(NumberExceedHighestRange value)? numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (numberBelowLowestRange != null) {
      return numberBelowLowestRange(this);
    }
    return orElse();
  }
}

abstract class NumberBelowLowestRange implements NumberFailure {
  const factory NumberBelowLowestRange(
      {required final num? failedValue,
      required final num lowestRange}) = _$NumberBelowLowestRangeImpl;

  @override
  num? get failedValue;
  num get lowestRange;
  @override
  @JsonKey(ignore: true)
  _$$NumberBelowLowestRangeImplCopyWith<_$NumberBelowLowestRangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberExceedHighestRangeImplCopyWith<$Res>
    implements $NumberFailureCopyWith<$Res> {
  factory _$$NumberExceedHighestRangeImplCopyWith(
          _$NumberExceedHighestRangeImpl value,
          $Res Function(_$NumberExceedHighestRangeImpl) then) =
      __$$NumberExceedHighestRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? failedValue, num highestRange});
}

/// @nodoc
class __$$NumberExceedHighestRangeImplCopyWithImpl<$Res>
    extends _$NumberFailureCopyWithImpl<$Res, _$NumberExceedHighestRangeImpl>
    implements _$$NumberExceedHighestRangeImplCopyWith<$Res> {
  __$$NumberExceedHighestRangeImplCopyWithImpl(
      _$NumberExceedHighestRangeImpl _value,
      $Res Function(_$NumberExceedHighestRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? highestRange = null,
  }) {
    return _then(_$NumberExceedHighestRangeImpl(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num?,
      highestRange: null == highestRange
          ? _value.highestRange
          : highestRange // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$NumberExceedHighestRangeImpl implements NumberExceedHighestRange {
  const _$NumberExceedHighestRangeImpl(
      {required this.failedValue, required this.highestRange});

  @override
  final num? failedValue;
  @override
  final num highestRange;

  @override
  String toString() {
    return 'NumberFailure.numberExceedHighestRange(failedValue: $failedValue, highestRange: $highestRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberExceedHighestRangeImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.highestRange, highestRange) ||
                other.highestRange == highestRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, highestRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberExceedHighestRangeImplCopyWith<_$NumberExceedHighestRangeImpl>
      get copyWith => __$$NumberExceedHighestRangeImplCopyWithImpl<
          _$NumberExceedHighestRangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num? failedValue) empty,
    required TResult Function(num? failedValue, num lowestRange)
        numberBelowLowestRange,
    required TResult Function(num? failedValue, num highestRange)
        numberExceedHighestRange,
  }) {
    return numberExceedHighestRange(failedValue, highestRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num? failedValue)? empty,
    TResult? Function(num? failedValue, num lowestRange)?
        numberBelowLowestRange,
    TResult? Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
  }) {
    return numberExceedHighestRange?.call(failedValue, highestRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num? failedValue)? empty,
    TResult Function(num? failedValue, num lowestRange)? numberBelowLowestRange,
    TResult Function(num? failedValue, num highestRange)?
        numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (numberExceedHighestRange != null) {
      return numberExceedHighestRange(failedValue, highestRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(NumberBelowLowestRange value)
        numberBelowLowestRange,
    required TResult Function(NumberExceedHighestRange value)
        numberExceedHighestRange,
  }) {
    return numberExceedHighestRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty value)? empty,
    TResult? Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult? Function(NumberExceedHighestRange value)? numberExceedHighestRange,
  }) {
    return numberExceedHighestRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(NumberBelowLowestRange value)? numberBelowLowestRange,
    TResult Function(NumberExceedHighestRange value)? numberExceedHighestRange,
    required TResult orElse(),
  }) {
    if (numberExceedHighestRange != null) {
      return numberExceedHighestRange(this);
    }
    return orElse();
  }
}

abstract class NumberExceedHighestRange implements NumberFailure {
  const factory NumberExceedHighestRange(
      {required final num? failedValue,
      required final num highestRange}) = _$NumberExceedHighestRangeImpl;

  @override
  num? get failedValue;
  num get highestRange;
  @override
  @JsonKey(ignore: true)
  _$$NumberExceedHighestRangeImplCopyWith<_$NumberExceedHighestRangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
