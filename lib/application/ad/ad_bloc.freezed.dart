// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdEvent {
  EAd get adEnum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAd value) loadAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdEventCopyWith<AdEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventCopyWith<$Res> {
  factory $AdEventCopyWith(AdEvent value, $Res Function(AdEvent) then) =
      _$AdEventCopyWithImpl<$Res, AdEvent>;
  @useResult
  $Res call({EAd adEnum});
}

/// @nodoc
class _$AdEventCopyWithImpl<$Res, $Val extends AdEvent>
    implements $AdEventCopyWith<$Res> {
  _$AdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adEnum = null,
  }) {
    return _then(_value.copyWith(
      adEnum: null == adEnum
          ? _value.adEnum
          : adEnum // ignore: cast_nullable_to_non_nullable
              as EAd,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadAdImplCopyWith<$Res> implements $AdEventCopyWith<$Res> {
  factory _$$LoadAdImplCopyWith(
          _$LoadAdImpl value, $Res Function(_$LoadAdImpl) then) =
      __$$LoadAdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EAd adEnum});
}

/// @nodoc
class __$$LoadAdImplCopyWithImpl<$Res>
    extends _$AdEventCopyWithImpl<$Res, _$LoadAdImpl>
    implements _$$LoadAdImplCopyWith<$Res> {
  __$$LoadAdImplCopyWithImpl(
      _$LoadAdImpl _value, $Res Function(_$LoadAdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adEnum = null,
  }) {
    return _then(_$LoadAdImpl(
      adEnum: null == adEnum
          ? _value.adEnum
          : adEnum // ignore: cast_nullable_to_non_nullable
              as EAd,
    ));
  }
}

/// @nodoc

class _$LoadAdImpl implements _LoadAd {
  const _$LoadAdImpl({required this.adEnum});

  @override
  final EAd adEnum;

  @override
  String toString() {
    return 'AdEvent.loadAd(adEnum: $adEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAdImpl &&
            (identical(other.adEnum, adEnum) || other.adEnum == adEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAdImplCopyWith<_$LoadAdImpl> get copyWith =>
      __$$LoadAdImplCopyWithImpl<_$LoadAdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
  }) {
    return loadAd(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
  }) {
    return loadAd?.call(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    required TResult orElse(),
  }) {
    if (loadAd != null) {
      return loadAd(adEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAd value) loadAd,
  }) {
    return loadAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
  }) {
    return loadAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    required TResult orElse(),
  }) {
    if (loadAd != null) {
      return loadAd(this);
    }
    return orElse();
  }
}

abstract class _LoadAd implements AdEvent {
  const factory _LoadAd({required final EAd adEnum}) = _$LoadAdImpl;

  @override
  EAd get adEnum;
  @override
  @JsonKey(ignore: true)
  _$$LoadAdImplCopyWith<_$LoadAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdState {
  BannerAd? get reviewPageBannerAd => throw _privateConstructorUsedError;
  BannerAd? get profilePageBannerAd => throw _privateConstructorUsedError;
  BannerAd? get hadithPageBannerAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdStateCopyWith<AdState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res, AdState>;
  @useResult
  $Res call(
      {BannerAd? reviewPageBannerAd,
      BannerAd? profilePageBannerAd,
      BannerAd? hadithPageBannerAd});
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res, $Val extends AdState>
    implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewPageBannerAd = freezed,
    Object? profilePageBannerAd = freezed,
    Object? hadithPageBannerAd = freezed,
  }) {
    return _then(_value.copyWith(
      reviewPageBannerAd: freezed == reviewPageBannerAd
          ? _value.reviewPageBannerAd
          : reviewPageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      profilePageBannerAd: freezed == profilePageBannerAd
          ? _value.profilePageBannerAd
          : profilePageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      hadithPageBannerAd: freezed == hadithPageBannerAd
          ? _value.hadithPageBannerAd
          : hadithPageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdStateImplCopyWith<$Res> implements $AdStateCopyWith<$Res> {
  factory _$$AdStateImplCopyWith(
          _$AdStateImpl value, $Res Function(_$AdStateImpl) then) =
      __$$AdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannerAd? reviewPageBannerAd,
      BannerAd? profilePageBannerAd,
      BannerAd? hadithPageBannerAd});
}

/// @nodoc
class __$$AdStateImplCopyWithImpl<$Res>
    extends _$AdStateCopyWithImpl<$Res, _$AdStateImpl>
    implements _$$AdStateImplCopyWith<$Res> {
  __$$AdStateImplCopyWithImpl(
      _$AdStateImpl _value, $Res Function(_$AdStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewPageBannerAd = freezed,
    Object? profilePageBannerAd = freezed,
    Object? hadithPageBannerAd = freezed,
  }) {
    return _then(_$AdStateImpl(
      reviewPageBannerAd: freezed == reviewPageBannerAd
          ? _value.reviewPageBannerAd
          : reviewPageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      profilePageBannerAd: freezed == profilePageBannerAd
          ? _value.profilePageBannerAd
          : profilePageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      hadithPageBannerAd: freezed == hadithPageBannerAd
          ? _value.hadithPageBannerAd
          : hadithPageBannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ));
  }
}

/// @nodoc

class _$AdStateImpl implements _AdState {
  const _$AdStateImpl(
      {required this.reviewPageBannerAd,
      required this.profilePageBannerAd,
      required this.hadithPageBannerAd});

  @override
  final BannerAd? reviewPageBannerAd;
  @override
  final BannerAd? profilePageBannerAd;
  @override
  final BannerAd? hadithPageBannerAd;

  @override
  String toString() {
    return 'AdState(reviewPageBannerAd: $reviewPageBannerAd, profilePageBannerAd: $profilePageBannerAd, hadithPageBannerAd: $hadithPageBannerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdStateImpl &&
            (identical(other.reviewPageBannerAd, reviewPageBannerAd) ||
                other.reviewPageBannerAd == reviewPageBannerAd) &&
            (identical(other.profilePageBannerAd, profilePageBannerAd) ||
                other.profilePageBannerAd == profilePageBannerAd) &&
            (identical(other.hadithPageBannerAd, hadithPageBannerAd) ||
                other.hadithPageBannerAd == hadithPageBannerAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, reviewPageBannerAd, profilePageBannerAd, hadithPageBannerAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdStateImplCopyWith<_$AdStateImpl> get copyWith =>
      __$$AdStateImplCopyWithImpl<_$AdStateImpl>(this, _$identity);
}

abstract class _AdState implements AdState {
  const factory _AdState(
      {required final BannerAd? reviewPageBannerAd,
      required final BannerAd? profilePageBannerAd,
      required final BannerAd? hadithPageBannerAd}) = _$AdStateImpl;

  @override
  BannerAd? get reviewPageBannerAd;
  @override
  BannerAd? get profilePageBannerAd;
  @override
  BannerAd? get hadithPageBannerAd;
  @override
  @JsonKey(ignore: true)
  _$$AdStateImplCopyWith<_$AdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
