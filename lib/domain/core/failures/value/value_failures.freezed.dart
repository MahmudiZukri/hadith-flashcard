// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
abstract class _$$EmptyCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

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
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

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
  const factory Empty({required final T? failedValue}) = _$Empty<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongCopyWith<T, $Res> {
  factory _$$ListTooLongCopyWith(
          _$ListTooLong<T> value, $Res Function(_$ListTooLong<T>) then) =
      __$$ListTooLongCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ListTooLong<T>>
    implements _$$ListTooLongCopyWith<T, $Res> {
  __$$ListTooLongCopyWithImpl(
      _$ListTooLong<T> _value, $Res Function(_$ListTooLong<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ListTooLong<T>(
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

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.max});

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
            other is _$ListTooLong<T> &&
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
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      __$$ListTooLongCopyWithImpl<T, _$ListTooLong<T>>(this, _$identity);

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
      required final int max}) = _$ListTooLong<T>;

  T? get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidObjectCopyWith<T, $Res> {
  factory _$$InvalidObjectCopyWith(
          _$InvalidObject<T> value, $Res Function(_$InvalidObject<T>) then) =
      __$$InvalidObjectCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidObjectCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidObject<T>>
    implements _$$InvalidObjectCopyWith<T, $Res> {
  __$$InvalidObjectCopyWithImpl(
      _$InvalidObject<T> _value, $Res Function(_$InvalidObject<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidObject<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidObject<T> implements InvalidObject<T> {
  const _$InvalidObject({required this.failedValue});

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
            other is _$InvalidObject<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidObjectCopyWith<T, _$InvalidObject<T>> get copyWith =>
      __$$InvalidObjectCopyWithImpl<T, _$InvalidObject<T>>(this, _$identity);

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
      _$InvalidObject<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidObjectCopyWith<T, _$InvalidObject<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyObjectCopyWith<T, $Res> {
  factory _$$EmptyObjectCopyWith(
          _$EmptyObject<T> value, $Res Function(_$EmptyObject<T>) then) =
      __$$EmptyObjectCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyObjectCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyObject<T>>
    implements _$$EmptyObjectCopyWith<T, $Res> {
  __$$EmptyObjectCopyWithImpl(
      _$EmptyObject<T> _value, $Res Function(_$EmptyObject<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyObject<T> implements EmptyObject<T> {
  const _$EmptyObject();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyObject<T>);
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
  const factory EmptyObject() = _$EmptyObject<T>;
}

/// @nodoc
abstract class _$$ExceedBalanceCopyWith<T, $Res> {
  factory _$$ExceedBalanceCopyWith(
          _$ExceedBalance<T> value, $Res Function(_$ExceedBalance<T>) then) =
      __$$ExceedBalanceCopyWithImpl<T, $Res>;
  @useResult
  $Res call({num failedValue, num maxBalance});
}

/// @nodoc
class __$$ExceedBalanceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedBalance<T>>
    implements _$$ExceedBalanceCopyWith<T, $Res> {
  __$$ExceedBalanceCopyWithImpl(
      _$ExceedBalance<T> _value, $Res Function(_$ExceedBalance<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? maxBalance = null,
  }) {
    return _then(_$ExceedBalance<T>(
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

class _$ExceedBalance<T> implements ExceedBalance<T> {
  const _$ExceedBalance({required this.failedValue, required this.maxBalance});

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
            other is _$ExceedBalance<T> &&
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
  _$$ExceedBalanceCopyWith<T, _$ExceedBalance<T>> get copyWith =>
      __$$ExceedBalanceCopyWithImpl<T, _$ExceedBalance<T>>(this, _$identity);

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
      required final num maxBalance}) = _$ExceedBalance<T>;

  num get failedValue;
  num get maxBalance;
  @JsonKey(ignore: true)
  _$$ExceedBalanceCopyWith<T, _$ExceedBalance<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDateTimeCopyWith<T, $Res> {
  factory _$$InvalidDateTimeCopyWith(_$InvalidDateTime<T> value,
          $Res Function(_$InvalidDateTime<T>) then) =
      __$$InvalidDateTimeCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DateTime failedValue, String pattern});
}

/// @nodoc
class __$$InvalidDateTimeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidDateTime<T>>
    implements _$$InvalidDateTimeCopyWith<T, $Res> {
  __$$InvalidDateTimeCopyWithImpl(
      _$InvalidDateTime<T> _value, $Res Function(_$InvalidDateTime<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? pattern = null,
  }) {
    return _then(_$InvalidDateTime<T>(
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

class _$InvalidDateTime<T> implements InvalidDateTime<T> {
  const _$InvalidDateTime({required this.failedValue, required this.pattern});

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
            other is _$InvalidDateTime<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, pattern);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDateTimeCopyWith<T, _$InvalidDateTime<T>> get copyWith =>
      __$$InvalidDateTimeCopyWithImpl<T, _$InvalidDateTime<T>>(
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
      required final String pattern}) = _$InvalidDateTime<T>;

  DateTime get failedValue;
  String get pattern;
  @JsonKey(ignore: true)
  _$$InvalidDateTimeCopyWith<T, _$InvalidDateTime<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteExceedCopyWith<T, $Res> {
  factory _$$NoteExceedCopyWith(
          _$NoteExceed<T> value, $Res Function(_$NoteExceed<T>) then) =
      __$$NoteExceedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$NoteExceedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$NoteExceed<T>>
    implements _$$NoteExceedCopyWith<T, $Res> {
  __$$NoteExceedCopyWithImpl(
      _$NoteExceed<T> _value, $Res Function(_$NoteExceed<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NoteExceed<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$NoteExceed<T> implements NoteExceed<T> {
  const _$NoteExceed({required this.failedValue});

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
            other is _$NoteExceed<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteExceedCopyWith<T, _$NoteExceed<T>> get copyWith =>
      __$$NoteExceedCopyWithImpl<T, _$NoteExceed<T>>(this, _$identity);

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
  const factory NoteExceed({required final T? failedValue}) = _$NoteExceed<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$NoteExceedCopyWith<T, _$NoteExceed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<T, $Res> {
  factory _$$_FailedCopyWith(
          _$_Failed<T> value, $Res Function(_$_Failed<T>) then) =
      __$$_FailedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_Failed<T>>
    implements _$$_FailedCopyWith<T, $Res> {
  __$$_FailedCopyWithImpl(
      _$_Failed<T> _value, $Res Function(_$_Failed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed<T> implements _Failed<T> {
  const _$_Failed();

  @override
  String toString() {
    return 'ValueFailure<$T>.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed<T>);
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
  const factory _Failed() = _$_Failed<T>;
}
