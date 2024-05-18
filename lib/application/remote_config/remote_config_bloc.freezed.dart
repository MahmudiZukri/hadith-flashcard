// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUpdateVersionInfo,
    required TResult Function() getAdsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUpdateVersionInfo,
    TResult? Function()? getAdsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUpdateVersionInfo,
    TResult Function()? getAdsStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUpdateVersionInfo value) getUpdateVersionInfo,
    required TResult Function(_GetAdsStatus value) getAdsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult? Function(_GetAdsStatus value)? getAdsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult Function(_GetAdsStatus value)? getAdsStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigEventCopyWith<$Res> {
  factory $RemoteConfigEventCopyWith(
          RemoteConfigEvent value, $Res Function(RemoteConfigEvent) then) =
      _$RemoteConfigEventCopyWithImpl<$Res, RemoteConfigEvent>;
}

/// @nodoc
class _$RemoteConfigEventCopyWithImpl<$Res, $Val extends RemoteConfigEvent>
    implements $RemoteConfigEventCopyWith<$Res> {
  _$RemoteConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUpdateVersionInfoImplCopyWith<$Res> {
  factory _$$GetUpdateVersionInfoImplCopyWith(_$GetUpdateVersionInfoImpl value,
          $Res Function(_$GetUpdateVersionInfoImpl) then) =
      __$$GetUpdateVersionInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUpdateVersionInfoImplCopyWithImpl<$Res>
    extends _$RemoteConfigEventCopyWithImpl<$Res, _$GetUpdateVersionInfoImpl>
    implements _$$GetUpdateVersionInfoImplCopyWith<$Res> {
  __$$GetUpdateVersionInfoImplCopyWithImpl(_$GetUpdateVersionInfoImpl _value,
      $Res Function(_$GetUpdateVersionInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUpdateVersionInfoImpl implements _GetUpdateVersionInfo {
  const _$GetUpdateVersionInfoImpl();

  @override
  String toString() {
    return 'RemoteConfigEvent.getUpdateVersionInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUpdateVersionInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUpdateVersionInfo,
    required TResult Function() getAdsStatus,
  }) {
    return getUpdateVersionInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUpdateVersionInfo,
    TResult? Function()? getAdsStatus,
  }) {
    return getUpdateVersionInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUpdateVersionInfo,
    TResult Function()? getAdsStatus,
    required TResult orElse(),
  }) {
    if (getUpdateVersionInfo != null) {
      return getUpdateVersionInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUpdateVersionInfo value) getUpdateVersionInfo,
    required TResult Function(_GetAdsStatus value) getAdsStatus,
  }) {
    return getUpdateVersionInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult? Function(_GetAdsStatus value)? getAdsStatus,
  }) {
    return getUpdateVersionInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult Function(_GetAdsStatus value)? getAdsStatus,
    required TResult orElse(),
  }) {
    if (getUpdateVersionInfo != null) {
      return getUpdateVersionInfo(this);
    }
    return orElse();
  }
}

abstract class _GetUpdateVersionInfo implements RemoteConfigEvent {
  const factory _GetUpdateVersionInfo() = _$GetUpdateVersionInfoImpl;
}

/// @nodoc
abstract class _$$GetAdsStatusImplCopyWith<$Res> {
  factory _$$GetAdsStatusImplCopyWith(
          _$GetAdsStatusImpl value, $Res Function(_$GetAdsStatusImpl) then) =
      __$$GetAdsStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAdsStatusImplCopyWithImpl<$Res>
    extends _$RemoteConfigEventCopyWithImpl<$Res, _$GetAdsStatusImpl>
    implements _$$GetAdsStatusImplCopyWith<$Res> {
  __$$GetAdsStatusImplCopyWithImpl(
      _$GetAdsStatusImpl _value, $Res Function(_$GetAdsStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAdsStatusImpl implements _GetAdsStatus {
  const _$GetAdsStatusImpl();

  @override
  String toString() {
    return 'RemoteConfigEvent.getAdsStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAdsStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUpdateVersionInfo,
    required TResult Function() getAdsStatus,
  }) {
    return getAdsStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUpdateVersionInfo,
    TResult? Function()? getAdsStatus,
  }) {
    return getAdsStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUpdateVersionInfo,
    TResult Function()? getAdsStatus,
    required TResult orElse(),
  }) {
    if (getAdsStatus != null) {
      return getAdsStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUpdateVersionInfo value) getUpdateVersionInfo,
    required TResult Function(_GetAdsStatus value) getAdsStatus,
  }) {
    return getAdsStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult? Function(_GetAdsStatus value)? getAdsStatus,
  }) {
    return getAdsStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUpdateVersionInfo value)? getUpdateVersionInfo,
    TResult Function(_GetAdsStatus value)? getAdsStatus,
    required TResult orElse(),
  }) {
    if (getAdsStatus != null) {
      return getAdsStatus(this);
    }
    return orElse();
  }
}

abstract class _GetAdsStatus implements RemoteConfigEvent {
  const factory _GetAdsStatus() = _$GetAdsStatusImpl;
}

/// @nodoc
mixin _$RemoteConfigState {
  Option<Either<CommonFailures, bool>> get optionFailureOrIsEnabledAds =>
      throw _privateConstructorUsedError;
  Option<Either<CommonFailures, AppVersionInformation>>
      get optionFailureOrAppVersionInformation =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigStateCopyWith<RemoteConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigStateCopyWith<$Res> {
  factory $RemoteConfigStateCopyWith(
          RemoteConfigState value, $Res Function(RemoteConfigState) then) =
      _$RemoteConfigStateCopyWithImpl<$Res, RemoteConfigState>;
  @useResult
  $Res call(
      {Option<Either<CommonFailures, bool>> optionFailureOrIsEnabledAds,
      Option<Either<CommonFailures, AppVersionInformation>>
          optionFailureOrAppVersionInformation});
}

/// @nodoc
class _$RemoteConfigStateCopyWithImpl<$Res, $Val extends RemoteConfigState>
    implements $RemoteConfigStateCopyWith<$Res> {
  _$RemoteConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrIsEnabledAds = null,
    Object? optionFailureOrAppVersionInformation = null,
  }) {
    return _then(_value.copyWith(
      optionFailureOrIsEnabledAds: null == optionFailureOrIsEnabledAds
          ? _value.optionFailureOrIsEnabledAds
          : optionFailureOrIsEnabledAds // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, bool>>,
      optionFailureOrAppVersionInformation: null ==
              optionFailureOrAppVersionInformation
          ? _value.optionFailureOrAppVersionInformation
          : optionFailureOrAppVersionInformation // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, AppVersionInformation>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoteConfigStateImplCopyWith<$Res>
    implements $RemoteConfigStateCopyWith<$Res> {
  factory _$$RemoteConfigStateImplCopyWith(_$RemoteConfigStateImpl value,
          $Res Function(_$RemoteConfigStateImpl) then) =
      __$$RemoteConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<CommonFailures, bool>> optionFailureOrIsEnabledAds,
      Option<Either<CommonFailures, AppVersionInformation>>
          optionFailureOrAppVersionInformation});
}

/// @nodoc
class __$$RemoteConfigStateImplCopyWithImpl<$Res>
    extends _$RemoteConfigStateCopyWithImpl<$Res, _$RemoteConfigStateImpl>
    implements _$$RemoteConfigStateImplCopyWith<$Res> {
  __$$RemoteConfigStateImplCopyWithImpl(_$RemoteConfigStateImpl _value,
      $Res Function(_$RemoteConfigStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrIsEnabledAds = null,
    Object? optionFailureOrAppVersionInformation = null,
  }) {
    return _then(_$RemoteConfigStateImpl(
      optionFailureOrIsEnabledAds: null == optionFailureOrIsEnabledAds
          ? _value.optionFailureOrIsEnabledAds
          : optionFailureOrIsEnabledAds // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, bool>>,
      optionFailureOrAppVersionInformation: null ==
              optionFailureOrAppVersionInformation
          ? _value.optionFailureOrAppVersionInformation
          : optionFailureOrAppVersionInformation // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, AppVersionInformation>>,
    ));
  }
}

/// @nodoc

class _$RemoteConfigStateImpl implements _RemoteConfigState {
  const _$RemoteConfigStateImpl(
      {required this.optionFailureOrIsEnabledAds,
      required this.optionFailureOrAppVersionInformation});

  @override
  final Option<Either<CommonFailures, bool>> optionFailureOrIsEnabledAds;
  @override
  final Option<Either<CommonFailures, AppVersionInformation>>
      optionFailureOrAppVersionInformation;

  @override
  String toString() {
    return 'RemoteConfigState(optionFailureOrIsEnabledAds: $optionFailureOrIsEnabledAds, optionFailureOrAppVersionInformation: $optionFailureOrAppVersionInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteConfigStateImpl &&
            (identical(other.optionFailureOrIsEnabledAds,
                    optionFailureOrIsEnabledAds) ||
                other.optionFailureOrIsEnabledAds ==
                    optionFailureOrIsEnabledAds) &&
            (identical(other.optionFailureOrAppVersionInformation,
                    optionFailureOrAppVersionInformation) ||
                other.optionFailureOrAppVersionInformation ==
                    optionFailureOrAppVersionInformation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionFailureOrIsEnabledAds,
      optionFailureOrAppVersionInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteConfigStateImplCopyWith<_$RemoteConfigStateImpl> get copyWith =>
      __$$RemoteConfigStateImplCopyWithImpl<_$RemoteConfigStateImpl>(
          this, _$identity);
}

abstract class _RemoteConfigState implements RemoteConfigState {
  const factory _RemoteConfigState(
      {required final Option<Either<CommonFailures, bool>>
          optionFailureOrIsEnabledAds,
      required final Option<Either<CommonFailures, AppVersionInformation>>
          optionFailureOrAppVersionInformation}) = _$RemoteConfigStateImpl;

  @override
  Option<Either<CommonFailures, bool>> get optionFailureOrIsEnabledAds;
  @override
  Option<Either<CommonFailures, AppVersionInformation>>
      get optionFailureOrAppVersionInformation;
  @override
  @JsonKey(ignore: true)
  _$$RemoteConfigStateImplCopyWith<_$RemoteConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
