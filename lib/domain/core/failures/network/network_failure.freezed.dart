// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(DioError e) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(Response<dynamic>? response)? serverError,
    TResult? Function()? timeout,
    TResult? Function(DioError e)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(DioError e)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoInternetCopyWith<$Res> {
  factory _$$_NoInternetCopyWith(
          _$_NoInternet value, $Res Function(_$_NoInternet) then) =
      __$$_NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_NoInternet>
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
    return 'NetworkFailure.noInternet()';
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
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(DioError e) other,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(Response<dynamic>? response)? serverError,
    TResult? Function()? timeout,
    TResult? Function(DioError e)? other,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(DioError e)? other,
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
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Other value)? other,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements NetworkFailure {
  const factory _NoInternet() = _$_NoInternet;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Response<dynamic>? response});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_ServerError(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.response});

  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'NetworkFailure.serverError(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(DioError e) other,
  }) {
    return serverError(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(Response<dynamic>? response)? serverError,
    TResult? Function()? timeout,
    TResult? Function(DioError e)? other,
  }) {
    return serverError?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(DioError e)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Other value)? other,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements NetworkFailure {
  const factory _ServerError({final Response<dynamic>? response}) =
      _$_ServerError;

  Response<dynamic>? get response;
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
    extends _$NetworkFailureCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'NetworkFailure.timeout()';
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
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(DioError e) other,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(Response<dynamic>? response)? serverError,
    TResult? Function()? timeout,
    TResult? Function(DioError e)? other,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(DioError e)? other,
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
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Other value)? other,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements NetworkFailure {
  const factory _Timeout() = _$_Timeout;
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError e});
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_Other>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_Other(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_Other implements _Other {
  const _$_Other({required this.e});

  @override
  final DioError e;

  @override
  String toString() {
    return 'NetworkFailure.other(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function(Response<dynamic>? response) serverError,
    required TResult Function() timeout,
    required TResult Function(DioError e) other,
  }) {
    return other(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noInternet,
    TResult? Function(Response<dynamic>? response)? serverError,
    TResult? Function()? timeout,
    TResult? Function(DioError e)? other,
  }) {
    return other?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function(Response<dynamic>? response)? serverError,
    TResult Function()? timeout,
    TResult Function(DioError e)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements NetworkFailure {
  const factory _Other({required final DioError e}) = _$_Other;

  DioError get e;
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}
