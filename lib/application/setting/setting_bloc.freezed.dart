// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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
  ELanguage get selectedLang => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ELanguage selectedLang) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ELanguage selectedLang)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ELanguage selectedLang)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingEventCopyWith<SettingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
  @useResult
  $Res call({ELanguage selectedLang});
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLang = null,
  }) {
    return _then(_value.copyWith(
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as ELanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeLanguageCopyWith<$Res>
    implements $SettingEventCopyWith<$Res> {
  factory _$$_ChangeLanguageCopyWith(
          _$_ChangeLanguage value, $Res Function(_$_ChangeLanguage) then) =
      __$$_ChangeLanguageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ELanguage selectedLang});
}

/// @nodoc
class __$$_ChangeLanguageCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$_ChangeLanguage>
    implements _$$_ChangeLanguageCopyWith<$Res> {
  __$$_ChangeLanguageCopyWithImpl(
      _$_ChangeLanguage _value, $Res Function(_$_ChangeLanguage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLang = null,
  }) {
    return _then(_$_ChangeLanguage(
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as ELanguage,
    ));
  }
}

/// @nodoc

class _$_ChangeLanguage implements _ChangeLanguage {
  const _$_ChangeLanguage({required this.selectedLang});

  @override
  final ELanguage selectedLang;

  @override
  String toString() {
    return 'SettingEvent.changeLanguage(selectedLang: $selectedLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLanguage &&
            (identical(other.selectedLang, selectedLang) ||
                other.selectedLang == selectedLang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLanguageCopyWith<_$_ChangeLanguage> get copyWith =>
      __$$_ChangeLanguageCopyWithImpl<_$_ChangeLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ELanguage selectedLang) changeLanguage,
  }) {
    return changeLanguage(selectedLang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ELanguage selectedLang)? changeLanguage,
  }) {
    return changeLanguage?.call(selectedLang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ELanguage selectedLang)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(selectedLang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements SettingEvent {
  const factory _ChangeLanguage({required final ELanguage selectedLang}) =
      _$_ChangeLanguage;

  @override
  ELanguage get selectedLang;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeLanguageCopyWith<_$_ChangeLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  ELanguage get selectedLang => throw _privateConstructorUsedError;

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
  $Res call({ELanguage selectedLang});
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
    Object? selectedLang = null,
  }) {
    return _then(_value.copyWith(
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as ELanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$_SettingStateCopyWith(
          _$_SettingState value, $Res Function(_$_SettingState) then) =
      __$$_SettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ELanguage selectedLang});
}

/// @nodoc
class __$$_SettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$_SettingState>
    implements _$$_SettingStateCopyWith<$Res> {
  __$$_SettingStateCopyWithImpl(
      _$_SettingState _value, $Res Function(_$_SettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLang = null,
  }) {
    return _then(_$_SettingState(
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as ELanguage,
    ));
  }
}

/// @nodoc

class _$_SettingState implements _SettingState {
  const _$_SettingState({required this.selectedLang});

  @override
  final ELanguage selectedLang;

  @override
  String toString() {
    return 'SettingState(selectedLang: $selectedLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingState &&
            (identical(other.selectedLang, selectedLang) ||
                other.selectedLang == selectedLang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      __$$_SettingStateCopyWithImpl<_$_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({required final ELanguage selectedLang}) =
      _$_SettingState;

  @override
  ELanguage get selectedLang;
  @override
  @JsonKey(ignore: true)
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
