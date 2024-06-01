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
    required TResult Function(BuildContext context) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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
abstract class _$$StartedImplCopyWith<$Res>
    implements $ShowcaseEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ShowcaseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$StartedImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ShowcaseEvent.started(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) started,
  }) {
    return started(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? started,
  }) {
    return started?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ShowcaseEvent {
  const factory _Started({required final BuildContext context}) = _$StartedImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShowcaseState {
  GlobalKey<State<StatefulWidget>> get reviewGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get narratorGlobalKey =>
      throw _privateConstructorUsedError;
  GlobalKey<State<StatefulWidget>> get profileGlobalKey =>
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
      {GlobalKey<State<StatefulWidget>> reviewGlobalKey,
      GlobalKey<State<StatefulWidget>> narratorGlobalKey,
      GlobalKey<State<StatefulWidget>> profileGlobalKey});
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
    Object? reviewGlobalKey = null,
    Object? narratorGlobalKey = null,
    Object? profileGlobalKey = null,
  }) {
    return _then(_value.copyWith(
      reviewGlobalKey: null == reviewGlobalKey
          ? _value.reviewGlobalKey
          : reviewGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      narratorGlobalKey: null == narratorGlobalKey
          ? _value.narratorGlobalKey
          : narratorGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      profileGlobalKey: null == profileGlobalKey
          ? _value.profileGlobalKey
          : profileGlobalKey // ignore: cast_nullable_to_non_nullable
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
      {GlobalKey<State<StatefulWidget>> reviewGlobalKey,
      GlobalKey<State<StatefulWidget>> narratorGlobalKey,
      GlobalKey<State<StatefulWidget>> profileGlobalKey});
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
    Object? reviewGlobalKey = null,
    Object? narratorGlobalKey = null,
    Object? profileGlobalKey = null,
  }) {
    return _then(_$ShowcaseStateImpl(
      reviewGlobalKey: null == reviewGlobalKey
          ? _value.reviewGlobalKey
          : reviewGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      narratorGlobalKey: null == narratorGlobalKey
          ? _value.narratorGlobalKey
          : narratorGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
      profileGlobalKey: null == profileGlobalKey
          ? _value.profileGlobalKey
          : profileGlobalKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<State<StatefulWidget>>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateImpl implements _ShowcaseState {
  const _$ShowcaseStateImpl(
      {required this.reviewGlobalKey,
      required this.narratorGlobalKey,
      required this.profileGlobalKey});

  @override
  final GlobalKey<State<StatefulWidget>> reviewGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> narratorGlobalKey;
  @override
  final GlobalKey<State<StatefulWidget>> profileGlobalKey;

  @override
  String toString() {
    return 'ShowcaseState(reviewGlobalKey: $reviewGlobalKey, narratorGlobalKey: $narratorGlobalKey, profileGlobalKey: $profileGlobalKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseStateImpl &&
            (identical(other.reviewGlobalKey, reviewGlobalKey) ||
                other.reviewGlobalKey == reviewGlobalKey) &&
            (identical(other.narratorGlobalKey, narratorGlobalKey) ||
                other.narratorGlobalKey == narratorGlobalKey) &&
            (identical(other.profileGlobalKey, profileGlobalKey) ||
                other.profileGlobalKey == profileGlobalKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, reviewGlobalKey, narratorGlobalKey, profileGlobalKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowcaseStateImplCopyWith<_$ShowcaseStateImpl> get copyWith =>
      __$$ShowcaseStateImplCopyWithImpl<_$ShowcaseStateImpl>(this, _$identity);
}

abstract class _ShowcaseState implements ShowcaseState {
  const factory _ShowcaseState(
          {required final GlobalKey<State<StatefulWidget>> reviewGlobalKey,
          required final GlobalKey<State<StatefulWidget>> narratorGlobalKey,
          required final GlobalKey<State<StatefulWidget>> profileGlobalKey}) =
      _$ShowcaseStateImpl;

  @override
  GlobalKey<State<StatefulWidget>> get reviewGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get narratorGlobalKey;
  @override
  GlobalKey<State<StatefulWidget>> get profileGlobalKey;
  @override
  @JsonKey(ignore: true)
  _$$ShowcaseStateImplCopyWith<_$ShowcaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
