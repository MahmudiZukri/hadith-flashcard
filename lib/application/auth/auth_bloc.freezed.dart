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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
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
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isLinking});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLinking = freezed,
  }) {
    return _then(_$SignUpImpl(
      isLinking: freezed == isLinking
          ? _value.isLinking
          : isLinking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl({this.isLinking});

  @override
  final bool? isLinking;

  @override
  String toString() {
    return 'AuthEvent.signUp(isLinking: $isLinking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.isLinking, isLinking) ||
                other.isLinking == isLinking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLinking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return signUp(isLinking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return signUp?.call(isLinking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(isLinking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp({final bool? isLinking}) = _$SignUpImpl;

  bool? get isLinking;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$GuestSignUpOrSignInImplCopyWith<$Res> {
  factory _$$GuestSignUpOrSignInImplCopyWith(_$GuestSignUpOrSignInImpl value,
          $Res Function(_$GuestSignUpOrSignInImpl) then) =
      __$$GuestSignUpOrSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuestSignUpOrSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GuestSignUpOrSignInImpl>
    implements _$$GuestSignUpOrSignInImplCopyWith<$Res> {
  __$$GuestSignUpOrSignInImplCopyWithImpl(_$GuestSignUpOrSignInImpl _value,
      $Res Function(_$GuestSignUpOrSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GuestSignUpOrSignInImpl implements _GuestSignUpOrSignIn {
  const _$GuestSignUpOrSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.guestSignUpOrSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestSignUpOrSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return guestSignUpOrSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return guestSignUpOrSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (guestSignUpOrSignIn != null) {
      return guestSignUpOrSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return guestSignUpOrSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return guestSignUpOrSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (guestSignUpOrSignIn != null) {
      return guestSignUpOrSignIn(this);
    }
    return orElse();
  }
}

abstract class _GuestSignUpOrSignIn implements AuthEvent {
  const factory _GuestSignUpOrSignIn() = _$GuestSignUpOrSignInImpl;
}

/// @nodoc
abstract class _$$SignUpOrSignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignUpOrSignInWithGoogleImplCopyWith(
          _$SignUpOrSignInWithGoogleImpl value,
          $Res Function(_$SignUpOrSignInWithGoogleImpl) then) =
      __$$SignUpOrSignInWithGoogleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isLinking});
}

/// @nodoc
class __$$SignUpOrSignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpOrSignInWithGoogleImpl>
    implements _$$SignUpOrSignInWithGoogleImplCopyWith<$Res> {
  __$$SignUpOrSignInWithGoogleImplCopyWithImpl(
      _$SignUpOrSignInWithGoogleImpl _value,
      $Res Function(_$SignUpOrSignInWithGoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLinking = freezed,
  }) {
    return _then(_$SignUpOrSignInWithGoogleImpl(
      isLinking: freezed == isLinking
          ? _value.isLinking
          : isLinking // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignUpOrSignInWithGoogleImpl implements _SignUpOrSignInWithGoogle {
  const _$SignUpOrSignInWithGoogleImpl({this.isLinking});

  @override
  final bool? isLinking;

  @override
  String toString() {
    return 'AuthEvent.signUpOrSignInWithGoogle(isLinking: $isLinking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOrSignInWithGoogleImpl &&
            (identical(other.isLinking, isLinking) ||
                other.isLinking == isLinking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLinking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpOrSignInWithGoogleImplCopyWith<_$SignUpOrSignInWithGoogleImpl>
      get copyWith => __$$SignUpOrSignInWithGoogleImplCopyWithImpl<
          _$SignUpOrSignInWithGoogleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return signUpOrSignInWithGoogle(isLinking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return signUpOrSignInWithGoogle?.call(isLinking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUpOrSignInWithGoogle != null) {
      return signUpOrSignInWithGoogle(isLinking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signUpOrSignInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signUpOrSignInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUpOrSignInWithGoogle != null) {
      return signUpOrSignInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignUpOrSignInWithGoogle implements AuthEvent {
  const factory _SignUpOrSignInWithGoogle({final bool? isLinking}) =
      _$SignUpOrSignInWithGoogleImpl;

  bool? get isLinking;
  @JsonKey(ignore: true)
  _$$SignUpOrSignInWithGoogleImplCopyWith<_$SignUpOrSignInWithGoogleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpOrSignInWithFacebookImplCopyWith<$Res> {
  factory _$$SignUpOrSignInWithFacebookImplCopyWith(
          _$SignUpOrSignInWithFacebookImpl value,
          $Res Function(_$SignUpOrSignInWithFacebookImpl) then) =
      __$$SignUpOrSignInWithFacebookImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpOrSignInWithFacebookImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpOrSignInWithFacebookImpl>
    implements _$$SignUpOrSignInWithFacebookImplCopyWith<$Res> {
  __$$SignUpOrSignInWithFacebookImplCopyWithImpl(
      _$SignUpOrSignInWithFacebookImpl _value,
      $Res Function(_$SignUpOrSignInWithFacebookImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpOrSignInWithFacebookImpl implements _SignUpOrSignInWithFacebook {
  const _$SignUpOrSignInWithFacebookImpl();

  @override
  String toString() {
    return 'AuthEvent.signUpOrSignInWithFacebook()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOrSignInWithFacebookImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return signUpOrSignInWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return signUpOrSignInWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUpOrSignInWithFacebook != null) {
      return signUpOrSignInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signUpOrSignInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signUpOrSignInWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signUpOrSignInWithFacebook != null) {
      return signUpOrSignInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _SignUpOrSignInWithFacebook implements AuthEvent {
  const factory _SignUpOrSignInWithFacebook() =
      _$SignUpOrSignInWithFacebookImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      nameStr: null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl({required this.nameStr});

  @override
  final String nameStr;

  @override
  String toString() {
    return 'AuthEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AuthEvent {
  const factory _NameChanged({required final String nameStr}) =
      _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      emailStr: null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl({required this.emailStr});

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
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
      _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl({required this.passwordStr});

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
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
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$ResetPasswordImpl(
      emailStr: null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl({required this.emailStr});

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return resetPassword(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return resetPassword?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
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
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
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
      _$ResetPasswordImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeactivateAccountImplCopyWith<$Res> {
  factory _$$DeactivateAccountImplCopyWith(_$DeactivateAccountImpl value,
          $Res Function(_$DeactivateAccountImpl) then) =
      __$$DeactivateAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user, bool isActivated});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DeactivateAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeactivateAccountImpl>
    implements _$$DeactivateAccountImplCopyWith<$Res> {
  __$$DeactivateAccountImplCopyWithImpl(_$DeactivateAccountImpl _value,
      $Res Function(_$DeactivateAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isActivated = null,
  }) {
    return _then(_$DeactivateAccountImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      isActivated: null == isActivated
          ? _value.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$DeactivateAccountImpl implements _DeactivateAccount {
  const _$DeactivateAccountImpl(
      {required this.user, required this.isActivated});

  @override
  final AppUser user;
  @override
  final bool isActivated;

  @override
  String toString() {
    return 'AuthEvent.activeOrDeactivateAccount(user: $user, isActivated: $isActivated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeactivateAccountImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isActivated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeactivateAccountImplCopyWith<_$DeactivateAccountImpl> get copyWith =>
      __$$DeactivateAccountImplCopyWithImpl<_$DeactivateAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return activeOrDeactivateAccount(user, isActivated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return activeOrDeactivateAccount?.call(user, isActivated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (activeOrDeactivateAccount != null) {
      return activeOrDeactivateAccount(user, isActivated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return activeOrDeactivateAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return activeOrDeactivateAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (activeOrDeactivateAccount != null) {
      return activeOrDeactivateAccount(this);
    }
    return orElse();
  }
}

abstract class _DeactivateAccount implements AuthEvent {
  const factory _DeactivateAccount(
      {required final AppUser user,
      required final bool isActivated}) = _$DeactivateAccountImpl;

  AppUser get user;
  bool get isActivated;
  @JsonKey(ignore: true)
  _$$DeactivateAccountImplCopyWith<_$DeactivateAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccountImpl implements _DeleteAccount {
  const _$DeleteAccountImpl();

  @override
  String toString() {
    return 'AuthEvent.deleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isLinking) signUp,
    required TResult Function() signIn,
    required TResult Function() guestSignUpOrSignIn,
    required TResult Function(bool? isLinking) signUpOrSignInWithGoogle,
    required TResult Function() signUpOrSignInWithFacebook,
    required TResult Function() signOut,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String emailStr) resetPassword,
    required TResult Function(AppUser user, bool isActivated)
        activeOrDeactivateAccount,
    required TResult Function() deleteAccount,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isLinking)? signUp,
    TResult? Function()? signIn,
    TResult? Function()? guestSignUpOrSignIn,
    TResult? Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult? Function()? signUpOrSignInWithFacebook,
    TResult? Function()? signOut,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String emailStr)? resetPassword,
    TResult? Function(AppUser user, bool isActivated)?
        activeOrDeactivateAccount,
    TResult? Function()? deleteAccount,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isLinking)? signUp,
    TResult Function()? signIn,
    TResult Function()? guestSignUpOrSignIn,
    TResult Function(bool? isLinking)? signUpOrSignInWithGoogle,
    TResult Function()? signUpOrSignInWithFacebook,
    TResult Function()? signOut,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String emailStr)? resetPassword,
    TResult Function(AppUser user, bool isActivated)? activeOrDeactivateAccount,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_GuestSignUpOrSignIn value) guestSignUpOrSignIn,
    required TResult Function(_SignUpOrSignInWithGoogle value)
        signUpOrSignInWithGoogle,
    required TResult Function(_SignUpOrSignInWithFacebook value)
        signUpOrSignInWithFacebook,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_DeactivateAccount value)
        activeOrDeactivateAccount,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult? Function(_SignUpOrSignInWithGoogle value)?
        signUpOrSignInWithGoogle,
    TResult? Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_GuestSignUpOrSignIn value)? guestSignUpOrSignIn,
    TResult Function(_SignUpOrSignInWithGoogle value)? signUpOrSignInWithGoogle,
    TResult Function(_SignUpOrSignInWithFacebook value)?
        signUpOrSignInWithFacebook,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_DeactivateAccount value)? activeOrDeactivateAccount,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements AuthEvent {
  const factory _DeleteAccount() = _$DeleteAccountImpl;
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
  Option<Either<CommonFailures, Unit>> get optionDeleteFailureOrSuccess =>
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
      Option<Either<CommonFailures, Unit>> optionFailureOrSuccess,
      Option<Either<CommonFailures, Unit>> optionDeleteFailureOrSuccess});
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
    Object? optionDeleteFailureOrSuccess = null,
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
      optionDeleteFailureOrSuccess: null == optionDeleteFailureOrSuccess
          ? _value.optionDeleteFailureOrSuccess
          : optionDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool onLoading,
      EmailAddress email,
      PersonName name,
      Password password,
      bool showErrorMessages,
      bool showSnackbar,
      Option<Either<CommonFailures, Unit>> optionFailureOrSuccess,
      Option<Either<CommonFailures, Unit>> optionDeleteFailureOrSuccess});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
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
    Object? optionDeleteFailureOrSuccess = null,
  }) {
    return _then(_$AuthStateImpl(
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
      optionDeleteFailureOrSuccess: null == optionDeleteFailureOrSuccess
          ? _value.optionDeleteFailureOrSuccess
          : optionDeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.onLoading,
      required this.email,
      required this.name,
      required this.password,
      required this.showErrorMessages,
      required this.showSnackbar,
      required this.optionFailureOrSuccess,
      required this.optionDeleteFailureOrSuccess});

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
  final Option<Either<CommonFailures, Unit>> optionDeleteFailureOrSuccess;

  @override
  String toString() {
    return 'AuthState(onLoading: $onLoading, email: $email, name: $name, password: $password, showErrorMessages: $showErrorMessages, showSnackbar: $showSnackbar, optionFailureOrSuccess: $optionFailureOrSuccess, optionDeleteFailureOrSuccess: $optionDeleteFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
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
                other.optionFailureOrSuccess == optionFailureOrSuccess) &&
            (identical(other.optionDeleteFailureOrSuccess,
                    optionDeleteFailureOrSuccess) ||
                other.optionDeleteFailureOrSuccess ==
                    optionDeleteFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      onLoading,
      email,
      name,
      password,
      showErrorMessages,
      showSnackbar,
      optionFailureOrSuccess,
      optionDeleteFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
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
          optionFailureOrSuccess,
      required final Option<Either<CommonFailures, Unit>>
          optionDeleteFailureOrSuccess}) = _$AuthStateImpl;

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
  Option<Either<CommonFailures, Unit>> get optionDeleteFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
