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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdEvent {
  EAd get adEnum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
    required TResult Function(EAd adEnum, BannerAd bannerAd) adLoaded,
    required TResult Function(EAd adEnum) adFailedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
    TResult? Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult? Function(EAd adEnum)? adFailedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    TResult Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult Function(EAd adEnum)? adFailedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAd value) loadAd,
    required TResult Function(_AdLoaded value) adLoaded,
    required TResult Function(_AdFailedToLoad value) adFailedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
    TResult? Function(_AdLoaded value)? adLoaded,
    TResult? Function(_AdFailedToLoad value)? adFailedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    TResult Function(_AdLoaded value)? adLoaded,
    TResult Function(_AdFailedToLoad value)? adFailedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAdImpl &&
            (identical(other.adEnum, adEnum) || other.adEnum == adEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adEnum);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAdImplCopyWith<_$LoadAdImpl> get copyWith =>
      __$$LoadAdImplCopyWithImpl<_$LoadAdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
    required TResult Function(EAd adEnum, BannerAd bannerAd) adLoaded,
    required TResult Function(EAd adEnum) adFailedToLoad,
  }) {
    return loadAd(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
    TResult? Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult? Function(EAd adEnum)? adFailedToLoad,
  }) {
    return loadAd?.call(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    TResult Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult Function(EAd adEnum)? adFailedToLoad,
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
    required TResult Function(_AdLoaded value) adLoaded,
    required TResult Function(_AdFailedToLoad value) adFailedToLoad,
  }) {
    return loadAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
    TResult? Function(_AdLoaded value)? adLoaded,
    TResult? Function(_AdFailedToLoad value)? adFailedToLoad,
  }) {
    return loadAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    TResult Function(_AdLoaded value)? adLoaded,
    TResult Function(_AdFailedToLoad value)? adFailedToLoad,
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

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAdImplCopyWith<_$LoadAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdLoadedImplCopyWith<$Res> implements $AdEventCopyWith<$Res> {
  factory _$$AdLoadedImplCopyWith(
          _$AdLoadedImpl value, $Res Function(_$AdLoadedImpl) then) =
      __$$AdLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EAd adEnum, BannerAd bannerAd});
}

/// @nodoc
class __$$AdLoadedImplCopyWithImpl<$Res>
    extends _$AdEventCopyWithImpl<$Res, _$AdLoadedImpl>
    implements _$$AdLoadedImplCopyWith<$Res> {
  __$$AdLoadedImplCopyWithImpl(
      _$AdLoadedImpl _value, $Res Function(_$AdLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adEnum = null,
    Object? bannerAd = null,
  }) {
    return _then(_$AdLoadedImpl(
      adEnum: null == adEnum
          ? _value.adEnum
          : adEnum // ignore: cast_nullable_to_non_nullable
              as EAd,
      bannerAd: null == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd,
    ));
  }
}

/// @nodoc

class _$AdLoadedImpl implements _AdLoaded {
  const _$AdLoadedImpl({required this.adEnum, required this.bannerAd});

  @override
  final EAd adEnum;
  @override
  final BannerAd bannerAd;

  @override
  String toString() {
    return 'AdEvent.adLoaded(adEnum: $adEnum, bannerAd: $bannerAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdLoadedImpl &&
            (identical(other.adEnum, adEnum) || other.adEnum == adEnum) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adEnum, bannerAd);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdLoadedImplCopyWith<_$AdLoadedImpl> get copyWith =>
      __$$AdLoadedImplCopyWithImpl<_$AdLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
    required TResult Function(EAd adEnum, BannerAd bannerAd) adLoaded,
    required TResult Function(EAd adEnum) adFailedToLoad,
  }) {
    return adLoaded(adEnum, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
    TResult? Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult? Function(EAd adEnum)? adFailedToLoad,
  }) {
    return adLoaded?.call(adEnum, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    TResult Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult Function(EAd adEnum)? adFailedToLoad,
    required TResult orElse(),
  }) {
    if (adLoaded != null) {
      return adLoaded(adEnum, bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAd value) loadAd,
    required TResult Function(_AdLoaded value) adLoaded,
    required TResult Function(_AdFailedToLoad value) adFailedToLoad,
  }) {
    return adLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
    TResult? Function(_AdLoaded value)? adLoaded,
    TResult? Function(_AdFailedToLoad value)? adFailedToLoad,
  }) {
    return adLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    TResult Function(_AdLoaded value)? adLoaded,
    TResult Function(_AdFailedToLoad value)? adFailedToLoad,
    required TResult orElse(),
  }) {
    if (adLoaded != null) {
      return adLoaded(this);
    }
    return orElse();
  }
}

abstract class _AdLoaded implements AdEvent {
  const factory _AdLoaded(
      {required final EAd adEnum,
      required final BannerAd bannerAd}) = _$AdLoadedImpl;

  @override
  EAd get adEnum;
  BannerAd get bannerAd;

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdLoadedImplCopyWith<_$AdLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdFailedToLoadImplCopyWith<$Res>
    implements $AdEventCopyWith<$Res> {
  factory _$$AdFailedToLoadImplCopyWith(_$AdFailedToLoadImpl value,
          $Res Function(_$AdFailedToLoadImpl) then) =
      __$$AdFailedToLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EAd adEnum});
}

/// @nodoc
class __$$AdFailedToLoadImplCopyWithImpl<$Res>
    extends _$AdEventCopyWithImpl<$Res, _$AdFailedToLoadImpl>
    implements _$$AdFailedToLoadImplCopyWith<$Res> {
  __$$AdFailedToLoadImplCopyWithImpl(
      _$AdFailedToLoadImpl _value, $Res Function(_$AdFailedToLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adEnum = null,
  }) {
    return _then(_$AdFailedToLoadImpl(
      adEnum: null == adEnum
          ? _value.adEnum
          : adEnum // ignore: cast_nullable_to_non_nullable
              as EAd,
    ));
  }
}

/// @nodoc

class _$AdFailedToLoadImpl implements _AdFailedToLoad {
  const _$AdFailedToLoadImpl({required this.adEnum});

  @override
  final EAd adEnum;

  @override
  String toString() {
    return 'AdEvent.adFailedToLoad(adEnum: $adEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdFailedToLoadImpl &&
            (identical(other.adEnum, adEnum) || other.adEnum == adEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adEnum);

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdFailedToLoadImplCopyWith<_$AdFailedToLoadImpl> get copyWith =>
      __$$AdFailedToLoadImplCopyWithImpl<_$AdFailedToLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EAd adEnum) loadAd,
    required TResult Function(EAd adEnum, BannerAd bannerAd) adLoaded,
    required TResult Function(EAd adEnum) adFailedToLoad,
  }) {
    return adFailedToLoad(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EAd adEnum)? loadAd,
    TResult? Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult? Function(EAd adEnum)? adFailedToLoad,
  }) {
    return adFailedToLoad?.call(adEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EAd adEnum)? loadAd,
    TResult Function(EAd adEnum, BannerAd bannerAd)? adLoaded,
    TResult Function(EAd adEnum)? adFailedToLoad,
    required TResult orElse(),
  }) {
    if (adFailedToLoad != null) {
      return adFailedToLoad(adEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAd value) loadAd,
    required TResult Function(_AdLoaded value) adLoaded,
    required TResult Function(_AdFailedToLoad value) adFailedToLoad,
  }) {
    return adFailedToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadAd value)? loadAd,
    TResult? Function(_AdLoaded value)? adLoaded,
    TResult? Function(_AdFailedToLoad value)? adFailedToLoad,
  }) {
    return adFailedToLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAd value)? loadAd,
    TResult Function(_AdLoaded value)? adLoaded,
    TResult Function(_AdFailedToLoad value)? adFailedToLoad,
    required TResult orElse(),
  }) {
    if (adFailedToLoad != null) {
      return adFailedToLoad(this);
    }
    return orElse();
  }
}

abstract class _AdFailedToLoad implements AdEvent {
  const factory _AdFailedToLoad({required final EAd adEnum}) =
      _$AdFailedToLoadImpl;

  @override
  EAd get adEnum;

  /// Create a copy of AdEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdFailedToLoadImplCopyWith<_$AdFailedToLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdState {
  BannerAd? get reviewPageBannerAd => throw _privateConstructorUsedError;
  BannerAd? get profilePageBannerAd => throw _privateConstructorUsedError;
  BannerAd? get hadithPageBannerAd => throw _privateConstructorUsedError;

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
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
  bool operator ==(Object other) {
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

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdStateImplCopyWith<_$AdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
