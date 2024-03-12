// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, non_nullable_equals_parameter
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToDarkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeToDarkMode value) changeToDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeToDarkMode value)? changeToDarkMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeToDarkMode value)? changeToDarkMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$changeToDarkModeImplCopyWith<$Res> {
  factory _$$changeToDarkModeImplCopyWith(_$changeToDarkModeImpl value,
          $Res Function(_$changeToDarkModeImpl) then) =
      __$$changeToDarkModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$changeToDarkModeImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$changeToDarkModeImpl>
    implements _$$changeToDarkModeImplCopyWith<$Res> {
  __$$changeToDarkModeImplCopyWithImpl(_$changeToDarkModeImpl _value,
      $Res Function(_$changeToDarkModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$changeToDarkModeImpl implements _changeToDarkMode {
  const _$changeToDarkModeImpl();

  @override
  String toString() {
    return 'SettingEvent.changeToDarkMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$changeToDarkModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToDarkMode,
  }) {
    return changeToDarkMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToDarkMode,
  }) {
    return changeToDarkMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToDarkMode,
    required TResult orElse(),
  }) {
    if (changeToDarkMode != null) {
      return changeToDarkMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_changeToDarkMode value) changeToDarkMode,
  }) {
    return changeToDarkMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_changeToDarkMode value)? changeToDarkMode,
  }) {
    return changeToDarkMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_changeToDarkMode value)? changeToDarkMode,
    required TResult orElse(),
  }) {
    if (changeToDarkMode != null) {
      return changeToDarkMode(this);
    }
    return orElse();
  }
}

abstract class _changeToDarkMode implements SettingEvent {
  const factory _changeToDarkMode() = _$changeToDarkModeImpl;
}

/// @nodoc
mixin _$SettingState {
  bool get isDarkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$SettingStateImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl({required this.isDarkMode});

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'SettingState(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({required final bool isDarkMode}) =
      _$SettingStateImpl;

  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
