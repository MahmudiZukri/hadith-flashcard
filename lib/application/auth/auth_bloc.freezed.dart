// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUp>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUp implements _SignUp {
  const _$_SignUp();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp() = _$_SignUp;
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn() = _$_SignIn;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$_NameChanged(
      nameStr: null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.nameStr});

  @override
  final String nameStr;

  @override
  String toString() {
    return 'AuthEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AuthEvent {
  const factory _NameChanged({required final String nameStr}) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      emailStr: null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.emailStr});

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged({required final String emailStr}) =
      _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PasswordChanged(
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged({required this.passwordStr});

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged({required final String passwordStr}) =
      _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordCopyWith<$Res> {
  factory _$$_ResetPasswordCopyWith(
          _$_ResetPassword value, $Res Function(_$_ResetPassword) then) =
      __$$_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_ResetPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResetPassword>
    implements _$$_ResetPasswordCopyWith<$Res> {
  __$$_ResetPasswordCopyWithImpl(
      _$_ResetPassword _value, $Res Function(_$_ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_ResetPassword(
      emailStr: null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword({required this.emailStr});

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassword &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      __$$_ResetPasswordCopyWithImpl<_$_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUp,
    required TResult Function() signIn,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
  }) {
    return resetPassword(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUp,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
  }) {
    return resetPassword?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUp,
    TResult Function()? signIn,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword({required final String emailStr}) =
      _$_ResetPassword;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get onLoading => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  PersonName get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get showSnackbar => throw _privateConstructorUsedError;
  Option<Either<CommonFailures, Unit>> get optionFailureOrSuccess =>
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
  $Res call(
      {bool onLoading,
      EmailAddress email,
      PersonName name,
      Password password,
      bool showErrorMessages,
      bool showSnackbar,
      Option<Either<CommonFailures, Unit>> optionFailureOrSuccess});
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
    Object? onLoading = null,
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? showSnackbar = null,
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      onLoading: null == onLoading
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PersonName,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
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
  $Res call(
      {bool onLoading,
      EmailAddress email,
      PersonName name,
      Password password,
      bool showErrorMessages,
      bool showSnackbar,
      Option<Either<CommonFailures, Unit>> optionFailureOrSuccess});
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
    Object? onLoading = null,
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? showSnackbar = null,
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_$_AuthState(
      onLoading: null == onLoading
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as PersonName,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.onLoading,
      required this.email,
      required this.name,
      required this.password,
      required this.showErrorMessages,
      required this.showSnackbar,
      required this.optionFailureOrSuccess});

  @override
  final bool onLoading;
  @override
  final EmailAddress email;
  @override
  final PersonName name;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool showSnackbar;
  @override
  final Option<Either<CommonFailures, Unit>> optionFailureOrSuccess;

  @override
  String toString() {
    return 'AuthState(onLoading: $onLoading, email: $email, name: $name, password: $password, showErrorMessages: $showErrorMessages, showSnackbar: $showSnackbar, optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.onLoading, onLoading) ||
                other.onLoading == onLoading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.showSnackbar, showSnackbar) ||
                other.showSnackbar == showSnackbar) &&
            (identical(other.optionFailureOrSuccess, optionFailureOrSuccess) ||
                other.optionFailureOrSuccess == optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onLoading, email, name, password,
      showErrorMessages, showSnackbar, optionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool onLoading,
      required final EmailAddress email,
      required final PersonName name,
      required final Password password,
      required final bool showErrorMessages,
      required final bool showSnackbar,
      required final Option<Either<CommonFailures, Unit>>
          optionFailureOrSuccess}) = _$_AuthState;

  @override
  bool get onLoading;
  @override
  EmailAddress get email;
  @override
  PersonName get name;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get showSnackbar;
  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
