// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showcase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowcaseEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowcaseEventCopyWith<ShowcaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseEventCopyWith<$Res> {
  factory $ShowcaseEventCopyWith(
          ShowcaseEvent value, $Res Function(ShowcaseEvent) then) =
      _$ShowcaseEventCopyWithImpl<$Res, ShowcaseEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowcaseEventCopyWithImpl<$Res, $Val extends ShowcaseEvent>
    implements $ShowcaseEventCopyWith<$Res> {
  _$ShowcaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartImplCopyWith<$Res>
    implements $ShowcaseEventCopyWith<$Res> {
  factory _$$StartImplCopyWith(
          _$StartImpl value, $Res Function(_$StartImpl) then) =
      __$$StartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$StartImplCopyWithImpl<$Res>
    extends _$ShowcaseEventCopyWithImpl<$Res, _$StartImpl>
    implements _$$StartImplCopyWith<$Res> {
  __$$StartImplCopyWithImpl(
      _$StartImpl _value, $Res Function(_$StartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$StartImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$StartImpl implements _Start {
  const _$StartImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ShowcaseEvent.start(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      __$$StartImplCopyWithImpl<_$StartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) start,
  }) {
    return start(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? start,
  }) {
    return start?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements ShowcaseEvent {
  const factory _Start({required final BuildContext context}) = _$StartImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$StartImplCopyWith<_$StartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShowcaseState {
  GlobalKey<State<StatefulWidget>> get welcomeGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get reviewNavBarGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get narratorNavBarGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get profileNavBarGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get enjoyGlobalKey =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowcaseStateCopyWith<ShowcaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateCopyWith(
          ShowcaseState value, $Res Function(ShowcaseState) then) =
      _$ShowcaseStateCopyWithImpl<$Res, ShowcaseState>;
  @useResult
  $Res call(
      {GlobalKey<State<StatefulWidget>> welcomeGlobalKey,
      GlobalKey<State<StatefulWidget>> reviewNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> narratorNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> profileNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> enjoyGlobalKey});
}

/// @nodoc
class _$ShowcaseStateCopyWithImpl<$Res, $Val extends ShowcaseState>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? welcomeGlobalKey = null,
    Object? reviewNavBarGlobalKey = null,
    Object? narratorNavBarGlobalKey = null,
    Object? profileNavBarGlobalKey = null,
    Object? enjoyGlobalKey = null,
  }) {
    return _then(_value.copyWith(
      welcomeGlobalKey: null == welcomeGlobalKey
          ? _value.welcomeGlobalKey
          : welcomeGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      reviewNavBarGlobalKey: null == reviewNavBarGlobalKey
          ? _value.reviewNavBarGlobalKey
          : reviewNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      narratorNavBarGlobalKey: null == narratorNavBarGlobalKey
          ? _value.narratorNavBarGlobalKey
          : narratorNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      profileNavBarGlobalKey: null == profileNavBarGlobalKey
          ? _value.profileNavBarGlobalKey
          : profileNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      enjoyGlobalKey: null == enjoyGlobalKey
          ? _value.enjoyGlobalKey
          : enjoyGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowcaseStateImplCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory _$$ShowcaseStateImplCopyWith(
          _$ShowcaseStateImpl value, $Res Function(_$ShowcaseStateImpl) then) =
      __$$ShowcaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<State<StatefulWidget>> welcomeGlobalKey,
      GlobalKey<State<StatefulWidget>> reviewNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> narratorNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> profileNavBarGlobalKey,
      GlobalKey<State<StatefulWidget>> enjoyGlobalKey});
}

/// @nodoc
class __$$ShowcaseStateImplCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res, _$ShowcaseStateImpl>
    implements _$$ShowcaseStateImplCopyWith<$Res> {
  __$$ShowcaseStateImplCopyWithImpl(
      _$ShowcaseStateImpl _value, $Res Function(_$ShowcaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? welcomeGlobalKey = null,
    Object? reviewNavBarGlobalKey = null,
    Object? narratorNavBarGlobalKey = null,
    Object? profileNavBarGlobalKey = null,
    Object? enjoyGlobalKey = null,
  }) {
    return _then(_$ShowcaseStateImpl(
      welcomeGlobalKey: null == welcomeGlobalKey
          ? _value.welcomeGlobalKey
          : welcomeGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      reviewNavBarGlobalKey: null == reviewNavBarGlobalKey
          ? _value.reviewNavBarGlobalKey
          : reviewNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      narratorNavBarGlobalKey: null == narratorNavBarGlobalKey
          ? _value.narratorNavBarGlobalKey
          : narratorNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      profileNavBarGlobalKey: null == profileNavBarGlobalKey
          ? _value.profileNavBarGlobalKey
          : profileNavBarGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      enjoyGlobalKey: null == enjoyGlobalKey
          ? _value.enjoyGlobalKey
          : enjoyGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateImpl implements _ShowcaseState {
  const _$ShowcaseStateImpl(
      {required this.welcomeGlobalKey,
      required this.reviewNavBarGlobalKey,
      required this.narratorNavBarGlobalKey,
      required this.profileNavBarGlobalKey,
      required this.enjoyGlobalKey});

  @override
  final GlobalKey<State<StatefulWidget>> welcomeGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> reviewNavBarGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> narratorNavBarGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> profileNavBarGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> enjoyGlobalKey;

  @override
  String toString() {
    return 'ShowcaseState(welcomeGlobalKey: $welcomeGlobalKey, reviewNavBarGlobalKey: $reviewNavBarGlobalKey, narratorNavBarGlobalKey: $narratorNavBarGlobalKey, profileNavBarGlobalKey: $profileNavBarGlobalKey, enjoyGlobalKey: $enjoyGlobalKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseStateImpl &&
            (identical(other.welcomeGlobalKey, welcomeGlobalKey) ||
                other.welcomeGlobalKey == welcomeGlobalKey) &&
            (identical(other.reviewNavBarGlobalKey, reviewNavBarGlobalKey) ||
                other.reviewNavBarGlobalKey == reviewNavBarGlobalKey) &&
            (identical(
                    other.narratorNavBarGlobalKey, narratorNavBarGlobalKey) ||
                other.narratorNavBarGlobalKey == narratorNavBarGlobalKey) &&
            (identical(other.profileNavBarGlobalKey, profileNavBarGlobalKey) ||
                other.profileNavBarGlobalKey == profileNavBarGlobalKey) &&
            (identical(other.enjoyGlobalKey, enjoyGlobalKey) ||
                other.enjoyGlobalKey == enjoyGlobalKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      welcomeGlobalKey,
      reviewNavBarGlobalKey,
      narratorNavBarGlobalKey,
      profileNavBarGlobalKey,
      enjoyGlobalKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowcaseStateImplCopyWith<_$ShowcaseStateImpl> get copyWith =>
      __$$ShowcaseStateImplCopyWithImpl<_$ShowcaseStateImpl>(this, _$identity);
}

abstract class _ShowcaseState implements ShowcaseState {
  const factory _ShowcaseState(
      {required final GlobalKey<State<StatefulWidget>> welcomeGlobalKey,
      required final GlobalKey<State<StatefulWidget>> reviewNavBarGlobalKey,
      required final GlobalKey<State<StatefulWidget>> narratorNavBarGlobalKey,
      required final GlobalKey<State<StatefulWidget>> profileNavBarGlobalKey,
      required final GlobalKey<State<StatefulWidget>>
          enjoyGlobalKey}) = _$ShowcaseStateImpl;

  @override
  GlobalKey<State<StatefulWidget>> get welcomeGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get reviewNavBarGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get narratorNavBarGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get profileNavBarGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get enjoyGlobalKey;
  @override
  @JsonKey(ignore: true)
  _$$ShowcaseStateImplCopyWith<_$ShowcaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
