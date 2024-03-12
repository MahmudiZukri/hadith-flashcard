// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonFailuresCopyWith<$Res> {
  factory $CommonFailuresCopyWith(
          CommonFailures value, $Res Function(CommonFailures) then) =
      _$CommonFailuresCopyWithImpl<$Res, CommonFailures>;
}

/// @nodoc
class _$CommonFailuresCopyWithImpl<$Res, $Val extends CommonFailures>
    implements $CommonFailuresCopyWith<$Res> {
  _$CommonFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HandledByFirebaseImplCopyWith<$Res> {
  factory _$$HandledByFirebaseImplCopyWith(_$HandledByFirebaseImpl value,
          $Res Function(_$HandledByFirebaseImpl) then) =
      __$$HandledByFirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HandledByFirebaseImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$HandledByFirebaseImpl>
    implements _$$HandledByFirebaseImplCopyWith<$Res> {
  __$$HandledByFirebaseImplCopyWithImpl(_$HandledByFirebaseImpl _value,
      $Res Function(_$HandledByFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HandledByFirebaseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HandledByFirebaseImpl implements _HandledByFirebase {
  const _$HandledByFirebaseImpl({required this.message});

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
            other is _$HandledByFirebaseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandledByFirebaseImplCopyWith<_$HandledByFirebaseImpl> get copyWith =>
      __$$HandledByFirebaseImplCopyWithImpl<_$HandledByFirebaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return handledByFirebase(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return handledByFirebase?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
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
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return handledByFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return handledByFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
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
      _$HandledByFirebaseImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HandledByFirebaseImplCopyWith<_$HandledByFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformExceptionImplCopyWith<$Res> {
  factory _$$PlatformExceptionImplCopyWith(_$PlatformExceptionImpl value,
          $Res Function(_$PlatformExceptionImpl) then) =
      __$$PlatformExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlatformExceptionImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$PlatformExceptionImpl>
    implements _$$PlatformExceptionImplCopyWith<$Res> {
  __$$PlatformExceptionImplCopyWithImpl(_$PlatformExceptionImpl _value,
      $Res Function(_$PlatformExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PlatformExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlatformExceptionImpl implements _PlatformException {
  const _$PlatformExceptionImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailures.platformException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformExceptionImplCopyWith<_$PlatformExceptionImpl> get copyWith =>
      __$$PlatformExceptionImplCopyWithImpl<_$PlatformExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return platformException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return platformException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (platformException != null) {
      return platformException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return platformException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return platformException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (platformException != null) {
      return platformException(this);
    }
    return orElse();
  }
}

abstract class _PlatformException implements CommonFailures {
  const factory _PlatformException({required final String message}) =
      _$PlatformExceptionImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PlatformExceptionImplCopyWith<_$PlatformExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'CommonFailures.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CommonFailures {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'CommonFailures.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements CommonFailures {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CommonFailures.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements CommonFailures {
  const factory _ServerError({required final String? message}) =
      _$ServerErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl value, $Res Function(_$TimeoutImpl) then) =
      __$$TimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl _value, $Res Function(_$TimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl();

  @override
  String toString() {
    return 'CommonFailures.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements CommonFailures {
  const factory _Timeout() = _$TimeoutImpl;
}

/// @nodoc
abstract class _$$ParseErrorImplCopyWith<$Res> {
  factory _$$ParseErrorImplCopyWith(
          _$ParseErrorImpl value, $Res Function(_$ParseErrorImpl) then) =
      __$$ParseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParseErrorImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$ParseErrorImpl>
    implements _$$ParseErrorImplCopyWith<$Res> {
  __$$ParseErrorImplCopyWithImpl(
      _$ParseErrorImpl _value, $Res Function(_$ParseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParseErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParseErrorImpl implements _ParseError {
  const _$ParseErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailures.parseError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParseErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      __$$ParseErrorImplCopyWithImpl<_$ParseErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return parseError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return parseError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HandledByFirebase value) handledByFirebase,
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return parseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return parseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (parseError != null) {
      return parseError(this);
    }
    return orElse();
  }
}

abstract class _ParseError implements CommonFailures {
  const factory _ParseError({required final String message}) = _$ParseErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ParseErrorImplCopyWith<_$ParseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$OtherImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements _Other {
  const _$OtherImpl({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CommonFailures.other(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) handledByFirebase,
    required TResult Function(String message) platformException,
    required TResult Function() empty,
    required TResult Function() noInternet,
    required TResult Function(String? message) serverError,
    required TResult Function() timeout,
    required TResult Function(String message) parseError,
    required TResult Function(String? message) other,
  }) {
    return other(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? handledByFirebase,
    TResult? Function(String message)? platformException,
    TResult? Function()? empty,
    TResult? Function()? noInternet,
    TResult? Function(String? message)? serverError,
    TResult? Function()? timeout,
    TResult? Function(String message)? parseError,
    TResult? Function(String? message)? other,
  }) {
    return other?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? handledByFirebase,
    TResult Function(String message)? platformException,
    TResult Function()? empty,
    TResult Function()? noInternet,
    TResult Function(String? message)? serverError,
    TResult Function()? timeout,
    TResult Function(String message)? parseError,
    TResult Function(String? message)? other,
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
    required TResult Function(_PlatformException value) platformException,
    required TResult Function(_Empty value) empty,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_ParseError value) parseError,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HandledByFirebase value)? handledByFirebase,
    TResult? Function(_PlatformException value)? platformException,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_ParseError value)? parseError,
    TResult? Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HandledByFirebase value)? handledByFirebase,
    TResult Function(_PlatformException value)? platformException,
    TResult Function(_Empty value)? empty,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_ParseError value)? parseError,
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
  const factory _Other({required final String? message}) = _$OtherImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
