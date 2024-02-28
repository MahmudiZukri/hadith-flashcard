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
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetImpl>
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
    return 'NetworkFailure.noInternet()';
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
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Response<dynamic>? response});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({this.response});

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
            other is _$ServerErrorImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

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
      _$ServerErrorImpl;

  Response<dynamic>? get response;
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
    extends _$NetworkFailureCopyWithImpl<$Res, _$TimeoutImpl>
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
    return 'NetworkFailure.timeout()';
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
  const factory _Timeout() = _$TimeoutImpl;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError e});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$OtherImpl(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements _Other {
  const _$OtherImpl({required this.e});

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
            other is _$OtherImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

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
  const factory _Other({required final DioError e}) = _$OtherImpl;

  DioError get e;
  @JsonKey(ignore: true)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
