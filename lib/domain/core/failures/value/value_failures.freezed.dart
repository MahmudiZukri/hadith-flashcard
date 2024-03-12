// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
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
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T? failedValue}) = _$EmptyImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongImplCopyWith<T, $Res> {
  factory _$$ListTooLongImplCopyWith(_$ListTooLongImpl<T> value,
          $Res Function(_$ListTooLongImpl<T>) then) =
      __$$ListTooLongImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$ListTooLongImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ListTooLongImpl<T>>
    implements _$$ListTooLongImplCopyWith<T, $Res> {
  __$$ListTooLongImplCopyWithImpl(
      _$ListTooLongImpl<T> _value, $Res Function(_$ListTooLongImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ListTooLongImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLongImpl<T> implements ListTooLong<T> {
  const _$ListTooLongImpl({required this.failedValue, required this.max});

  @override
  final T? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLongImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      __$$ListTooLongImplCopyWithImpl<T, _$ListTooLongImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong(
      {required final T? failedValue,
      required final int max}) = _$ListTooLongImpl<T>;

  T? get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidObjectImplCopyWith<T, $Res> {
  factory _$$InvalidObjectImplCopyWith(_$InvalidObjectImpl<T> value,
          $Res Function(_$InvalidObjectImpl<T>) then) =
      __$$InvalidObjectImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidObjectImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidObjectImpl<T>>
    implements _$$InvalidObjectImplCopyWith<T, $Res> {
  __$$InvalidObjectImplCopyWithImpl(_$InvalidObjectImpl<T> _value,
      $Res Function(_$InvalidObjectImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidObjectImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidObjectImpl<T> implements InvalidObject<T> {
  const _$InvalidObjectImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidObject(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidObjectImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidObjectImplCopyWith<T, _$InvalidObjectImpl<T>> get copyWith =>
      __$$InvalidObjectImplCopyWithImpl<T, _$InvalidObjectImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return invalidObject(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return invalidObject?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (invalidObject != null) {
      return invalidObject(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return invalidObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return invalidObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (invalidObject != null) {
      return invalidObject(this);
    }
    return orElse();
  }
}

abstract class InvalidObject<T> implements ValueFailure<T> {
  const factory InvalidObject({required final T? failedValue}) =
      _$InvalidObjectImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidObjectImplCopyWith<T, _$InvalidObjectImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyObjectImplCopyWith<T, $Res> {
  factory _$$EmptyObjectImplCopyWith(_$EmptyObjectImpl<T> value,
          $Res Function(_$EmptyObjectImpl<T>) then) =
      __$$EmptyObjectImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyObjectImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyObjectImpl<T>>
    implements _$$EmptyObjectImplCopyWith<T, $Res> {
  __$$EmptyObjectImplCopyWithImpl(
      _$EmptyObjectImpl<T> _value, $Res Function(_$EmptyObjectImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyObjectImpl<T> implements EmptyObject<T> {
  const _$EmptyObjectImpl();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyObjectImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return emptyObject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return emptyObject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (emptyObject != null) {
      return emptyObject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return emptyObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return emptyObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (emptyObject != null) {
      return emptyObject(this);
    }
    return orElse();
  }
}

abstract class EmptyObject<T> implements ValueFailure<T> {
  const factory EmptyObject() = _$EmptyObjectImpl<T>;
}

/// @nodoc
abstract class _$$ExceedBalanceImplCopyWith<T, $Res> {
  factory _$$ExceedBalanceImplCopyWith(_$ExceedBalanceImpl<T> value,
          $Res Function(_$ExceedBalanceImpl<T>) then) =
      __$$ExceedBalanceImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({num failedValue, num maxBalance});
}

/// @nodoc
class __$$ExceedBalanceImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedBalanceImpl<T>>
    implements _$$ExceedBalanceImplCopyWith<T, $Res> {
  __$$ExceedBalanceImplCopyWithImpl(_$ExceedBalanceImpl<T> _value,
      $Res Function(_$ExceedBalanceImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? maxBalance = null,
  }) {
    return _then(_$ExceedBalanceImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as num,
      maxBalance: null == maxBalance
          ? _value.maxBalance
          : maxBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$ExceedBalanceImpl<T> implements ExceedBalance<T> {
  const _$ExceedBalanceImpl(
      {required this.failedValue, required this.maxBalance});

  @override
  final num failedValue;
  @override
  final num maxBalance;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingBalance(failedValue: $failedValue, maxBalance: $maxBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedBalanceImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.maxBalance, maxBalance) ||
                other.maxBalance == maxBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, maxBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedBalanceImplCopyWith<T, _$ExceedBalanceImpl<T>> get copyWith =>
      __$$ExceedBalanceImplCopyWithImpl<T, _$ExceedBalanceImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return exceedingBalance(failedValue, maxBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return exceedingBalance?.call(failedValue, maxBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (exceedingBalance != null) {
      return exceedingBalance(failedValue, maxBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return exceedingBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return exceedingBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (exceedingBalance != null) {
      return exceedingBalance(this);
    }
    return orElse();
  }
}

abstract class ExceedBalance<T> implements ValueFailure<T> {
  const factory ExceedBalance(
      {required final num failedValue,
      required final num maxBalance}) = _$ExceedBalanceImpl<T>;

  num get failedValue;
  num get maxBalance;
  @JsonKey(ignore: true)
  _$$ExceedBalanceImplCopyWith<T, _$ExceedBalanceImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDateTimeImplCopyWith<T, $Res> {
  factory _$$InvalidDateTimeImplCopyWith(_$InvalidDateTimeImpl<T> value,
          $Res Function(_$InvalidDateTimeImpl<T>) then) =
      __$$InvalidDateTimeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DateTime failedValue, String pattern});
}

/// @nodoc
class __$$InvalidDateTimeImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidDateTimeImpl<T>>
    implements _$$InvalidDateTimeImplCopyWith<T, $Res> {
  __$$InvalidDateTimeImplCopyWithImpl(_$InvalidDateTimeImpl<T> _value,
      $Res Function(_$InvalidDateTimeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? pattern = null,
  }) {
    return _then(_$InvalidDateTimeImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidDateTimeImpl<T> implements InvalidDateTime<T> {
  const _$InvalidDateTimeImpl(
      {required this.failedValue, required this.pattern});

  @override
  final DateTime failedValue;
  @override
  final String pattern;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateTime(failedValue: $failedValue, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidDateTimeImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, pattern);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDateTimeImplCopyWith<T, _$InvalidDateTimeImpl<T>> get copyWith =>
      __$$InvalidDateTimeImplCopyWithImpl<T, _$InvalidDateTimeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return invalidDateTime(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return invalidDateTime?.call(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(failedValue, pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return invalidDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return invalidDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(this);
    }
    return orElse();
  }
}

abstract class InvalidDateTime<T> implements ValueFailure<T> {
  const factory InvalidDateTime(
      {required final DateTime failedValue,
      required final String pattern}) = _$InvalidDateTimeImpl<T>;

  DateTime get failedValue;
  String get pattern;
  @JsonKey(ignore: true)
  _$$InvalidDateTimeImplCopyWith<T, _$InvalidDateTimeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteExceedImplCopyWith<T, $Res> {
  factory _$$NoteExceedImplCopyWith(
          _$NoteExceedImpl<T> value, $Res Function(_$NoteExceedImpl<T>) then) =
      __$$NoteExceedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$NoteExceedImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$NoteExceedImpl<T>>
    implements _$$NoteExceedImplCopyWith<T, $Res> {
  __$$NoteExceedImplCopyWithImpl(
      _$NoteExceedImpl<T> _value, $Res Function(_$NoteExceedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NoteExceedImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$NoteExceedImpl<T> implements NoteExceed<T> {
  const _$NoteExceedImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.noteExceed(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteExceedImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteExceedImplCopyWith<T, _$NoteExceedImpl<T>> get copyWith =>
      __$$NoteExceedImplCopyWithImpl<T, _$NoteExceedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return noteExceed(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return noteExceed?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (noteExceed != null) {
      return noteExceed(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return noteExceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return noteExceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (noteExceed != null) {
      return noteExceed(this);
    }
    return orElse();
  }
}

abstract class NoteExceed<T> implements ValueFailure<T> {
  const factory NoteExceed({required final T? failedValue}) =
      _$NoteExceedImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$NoteExceedImplCopyWith<T, _$NoteExceedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<T, $Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl<T> value, $Res Function(_$FailedImpl<T>) then) =
      __$$FailedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$FailedImpl<T>>
    implements _$$FailedImplCopyWith<T, $Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl<T> _value, $Res Function(_$FailedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl<T> implements _Failed<T> {
  const _$FailedImpl();

  @override
  String toString() {
    return 'ValueFailure<$T>.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(num failedValue, num maxBalance) exceedingBalance,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
    required TResult Function(T? failedValue) noteExceed,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult? Function(T? failedValue)? noteExceed,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(num failedValue, num maxBalance)? exceedingBalance,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    TResult Function(T? failedValue)? noteExceed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ExceedBalance<T> value) exceedingBalance,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
    required TResult Function(NoteExceed<T> value) noteExceed,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ExceedBalance<T> value)? exceedingBalance,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult? Function(NoteExceed<T> value)? noteExceed,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ExceedBalance<T> value)? exceedingBalance,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    TResult Function(NoteExceed<T> value)? noteExceed,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed<T> implements ValueFailure<T> {
  const factory _Failed() = _$FailedImpl<T>;
}
