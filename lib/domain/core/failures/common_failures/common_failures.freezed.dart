// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
abstract class _$$_HandledByFirebaseCopyWith<$Res> {
  factory _$$_HandledByFirebaseCopyWith(_$_HandledByFirebase value,
          $Res Function(_$_HandledByFirebase) then) =
      __$$_HandledByFirebaseCopyWithImpl<$Res>;
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
      _$_HandledByFirebase;

  String get message;
  @JsonKey(ignore: true)
  _$$_HandledByFirebaseCopyWith<_$_HandledByFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlatformExceptionCopyWith<$Res> {
  factory _$$_PlatformExceptionCopyWith(_$_PlatformException value,
          $Res Function(_$_PlatformException) then) =
      __$$_PlatformExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PlatformExceptionCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_PlatformException>
    implements _$$_PlatformExceptionCopyWith<$Res> {
  __$$_PlatformExceptionCopyWithImpl(
      _$_PlatformException _value, $Res Function(_$_PlatformException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PlatformException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlatformException implements _PlatformException {
  const _$_PlatformException({required this.message});

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
            other is _$_PlatformException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlatformExceptionCopyWith<_$_PlatformException> get copyWith =>
      __$$_PlatformExceptionCopyWithImpl<_$_PlatformException>(
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
      _$_PlatformException;

  String get message;
  @JsonKey(ignore: true)
  _$$_PlatformExceptionCopyWith<_$_PlatformException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'CommonFailures.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
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
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_NoInternetCopyWith<$Res> {
  factory _$$_NoInternetCopyWith(
          _$_NoInternet value, $Res Function(_$_NoInternet) then) =
      __$$_NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_NoInternet>
    implements _$$_NoInternetCopyWith<$Res> {
  __$$_NoInternetCopyWithImpl(
      _$_NoInternet _value, $Res Function(_$_NoInternet) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'CommonFailures.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternet);
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
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({required this.message});

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
            other is _$_ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

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
  const factory _ServerError({required final String? message}) = _$_ServerError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeoutCopyWith<$Res> {
  factory _$$_TimeoutCopyWith(
          _$_Timeout value, $Res Function(_$_Timeout) then) =
      __$$_TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeoutCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'CommonFailures.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Timeout);
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
  const factory _Timeout() = _$_Timeout;
}

/// @nodoc
abstract class _$$_ParseErrorCopyWith<$Res> {
  factory _$$_ParseErrorCopyWith(
          _$_ParseError value, $Res Function(_$_ParseError) then) =
      __$$_ParseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ParseErrorCopyWithImpl<$Res>
    extends _$CommonFailuresCopyWithImpl<$Res, _$_ParseError>
    implements _$$_ParseErrorCopyWith<$Res> {
  __$$_ParseErrorCopyWithImpl(
      _$_ParseError _value, $Res Function(_$_ParseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ParseError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParseError implements _ParseError {
  const _$_ParseError({required this.message});

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
            other is _$_ParseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      __$$_ParseErrorCopyWithImpl<_$_ParseError>(this, _$identity);

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
  const factory _ParseError({required final String message}) = _$_ParseError;

  String get message;
  @JsonKey(ignore: true)
  _$$_ParseErrorCopyWith<_$_ParseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
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
    Object? message = freezed,
  }) {
    return _then(_$_Other(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Other implements _Other {
  const _$_Other({required this.message});

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
  const factory _Other({required final String? message}) = _$_Other;

  String? get message;
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}
