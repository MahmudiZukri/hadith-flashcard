// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonFailures {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonFailuresCopyWith<CommonFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonFailuresCopyWith<$Res> {
  factory $CommonFailuresCopyWith(
          CommonFailures value, $Res Function(CommonFailures) then) =
      _$CommonFailuresCopyWithImpl<$Res, CommonFailures>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CommonFailuresCopyWithImpl<$Res, $Val extends CommonFailures>
    implements $CommonFailuresCopyWith<$Res> {
  _$CommonFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HandledByFirebaseCopyWith<$Res>
    implements $CommonFailuresCopyWith<$Res> {
  factory _$$_HandledByFirebaseCopyWith(_$_HandledByFirebase value,
          $Res Function(_$_HandledByFirebase) then) =
      __$$_HandledByFirebaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_HandledByFirebaseCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_HandledByFirebase>
    implements _$$_HandledByFirebaseCopyWith<$Res> {
  __$$_HandledByFirebaseCopyWithImpl(
      _$_HandledByFirebase _value, $Res Function(_$_HandledByFirebase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_HandledByFirebase(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HandledByFirebase implements _HandledByFirebase {
  const _$_HandledByFirebase({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailures.handledByFirebase(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HandledByFirebase &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HandledByFirebaseCopyWith<_$_HandledByFirebase> get copyWith =>
      __$$_HandledByFirebaseCopyWithImpl<_$_HandledByFirebase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) other,
  }) {
    return handledByFirebase(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? other,
  }) {
    return handledByFirebase?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? other,
    required TResult orElse(),
  }) {
    if (handledByFirebase != null) {
      return handledByFirebase(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_Other value) other,
  }) {
    return handledByFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_Other value)? other,
  }) {
    return handledByFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (handledByFirebase != null) {
      return handledByFirebase(this);
    }
    return orElse();
  }
}

abstract class _HandledByFirebase implements CommonFailures {
  const factory _HandledByFirebase({required final String message}) =
      _$_HandledByFirebase;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_HandledByFirebaseCopyWith<_$_HandledByFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res>
    implements $CommonFailuresCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_Other>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Other(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Other implements _Other {
  const _$_Other({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailures.other(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) other,
  }) {
    return other(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? other,
  }) {
    return other?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements CommonFailures {
  const factory _Other({required final String message}) = _$_Other;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}
