// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  UnemptyString get email => throw _privateConstructorUsedError;
  UnemptyString get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, UnemptyString email, UnemptyString password)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, UnemptyString email, UnemptyString password)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, UnemptyString email, UnemptyString password)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call(
      {BuildContext context, UnemptyString email, UnemptyString password});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context, UnemptyString email, UnemptyString password});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Started(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.context, required this.email, required this.password});

  @override
  final BuildContext context;
  @override
  final UnemptyString email;
  @override
  final UnemptyString password;

  @override
  String toString() {
    return 'AuthEvent.signUp(context: $context, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, UnemptyString email, UnemptyString password)
        signUp,
  }) {
    return signUp(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, UnemptyString email, UnemptyString password)?
        signUp,
  }) {
    return signUp?.call(context, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, UnemptyString email, UnemptyString password)?
        signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(context, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started(
      {required final BuildContext context,
      required final UnemptyString email,
      required final UnemptyString password}) = _$_Started;

  @override
  BuildContext get context;
  @override
  UnemptyString get email;
  @override
  UnemptyString get password;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  Option<Either<AuthFailure, bool>> get optionFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({Option<Either<AuthFailure, bool>> optionFailureOrSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<AuthFailure, bool>> optionFailureOrSuccess});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_$_AuthState(
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({required this.optionFailureOrSuccess});

  @override
  final Option<Either<AuthFailure, bool>> optionFailureOrSuccess;

  @override
  String toString() {
    return 'AuthState(optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.optionFailureOrSuccess, optionFailureOrSuccess) ||
                other.optionFailureOrSuccess == optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final Option<Either<AuthFailure, bool>>
          optionFailureOrSuccess}) = _$_AuthState;

  @override
  Option<Either<AuthFailure, bool>> get optionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
