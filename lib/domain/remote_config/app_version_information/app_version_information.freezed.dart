// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppVersionInformation {
  UnemptyString get canUpdateVersion => throw _privateConstructorUsedError;
  UnemptyString get forceUpdateVersion => throw _privateConstructorUsedError;
  UnemptyString get playstoreUrl => throw _privateConstructorUsedError;
  UnemptyString get appstoreUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionInformationCopyWith<AppVersionInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionInformationCopyWith<$Res> {
  factory $AppVersionInformationCopyWith(AppVersionInformation value,
          $Res Function(AppVersionInformation) then) =
      _$AppVersionInformationCopyWithImpl<$Res, AppVersionInformation>;
  @useResult
  $Res call(
      {UnemptyString canUpdateVersion,
      UnemptyString forceUpdateVersion,
      UnemptyString playstoreUrl,
      UnemptyString appstoreUrl});
}

/// @nodoc
class _$AppVersionInformationCopyWithImpl<$Res,
        $Val extends AppVersionInformation>
    implements $AppVersionInformationCopyWith<$Res> {
  _$AppVersionInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canUpdateVersion = null,
    Object? forceUpdateVersion = null,
    Object? playstoreUrl = null,
    Object? appstoreUrl = null,
  }) {
    return _then(_value.copyWith(
      canUpdateVersion: null == canUpdateVersion
          ? _value.canUpdateVersion
          : canUpdateVersion // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      forceUpdateVersion: null == forceUpdateVersion
          ? _value.forceUpdateVersion
          : forceUpdateVersion // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      playstoreUrl: null == playstoreUrl
          ? _value.playstoreUrl
          : playstoreUrl // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      appstoreUrl: null == appstoreUrl
          ? _value.appstoreUrl
          : appstoreUrl // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionInformationImplCopyWith<$Res>
    implements $AppVersionInformationCopyWith<$Res> {
  factory _$$AppVersionInformationImplCopyWith(
          _$AppVersionInformationImpl value,
          $Res Function(_$AppVersionInformationImpl) then) =
      __$$AppVersionInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UnemptyString canUpdateVersion,
      UnemptyString forceUpdateVersion,
      UnemptyString playstoreUrl,
      UnemptyString appstoreUrl});
}

/// @nodoc
class __$$AppVersionInformationImplCopyWithImpl<$Res>
    extends _$AppVersionInformationCopyWithImpl<$Res,
        _$AppVersionInformationImpl>
    implements _$$AppVersionInformationImplCopyWith<$Res> {
  __$$AppVersionInformationImplCopyWithImpl(_$AppVersionInformationImpl _value,
      $Res Function(_$AppVersionInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canUpdateVersion = null,
    Object? forceUpdateVersion = null,
    Object? playstoreUrl = null,
    Object? appstoreUrl = null,
  }) {
    return _then(_$AppVersionInformationImpl(
      canUpdateVersion: null == canUpdateVersion
          ? _value.canUpdateVersion
          : canUpdateVersion // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      forceUpdateVersion: null == forceUpdateVersion
          ? _value.forceUpdateVersion
          : forceUpdateVersion // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      playstoreUrl: null == playstoreUrl
          ? _value.playstoreUrl
          : playstoreUrl // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      appstoreUrl: null == appstoreUrl
          ? _value.appstoreUrl
          : appstoreUrl // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ));
  }
}

/// @nodoc

class _$AppVersionInformationImpl implements _AppVersionInformation {
  const _$AppVersionInformationImpl(
      {required this.canUpdateVersion,
      required this.forceUpdateVersion,
      required this.playstoreUrl,
      required this.appstoreUrl});

  @override
  final UnemptyString canUpdateVersion;
  @override
  final UnemptyString forceUpdateVersion;
  @override
  final UnemptyString playstoreUrl;
  @override
  final UnemptyString appstoreUrl;

  @override
  String toString() {
    return 'AppVersionInformation(canUpdateVersion: $canUpdateVersion, forceUpdateVersion: $forceUpdateVersion, playstoreUrl: $playstoreUrl, appstoreUrl: $appstoreUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionInformationImpl &&
            (identical(other.canUpdateVersion, canUpdateVersion) ||
                other.canUpdateVersion == canUpdateVersion) &&
            (identical(other.forceUpdateVersion, forceUpdateVersion) ||
                other.forceUpdateVersion == forceUpdateVersion) &&
            (identical(other.playstoreUrl, playstoreUrl) ||
                other.playstoreUrl == playstoreUrl) &&
            (identical(other.appstoreUrl, appstoreUrl) ||
                other.appstoreUrl == appstoreUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canUpdateVersion,
      forceUpdateVersion, playstoreUrl, appstoreUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionInformationImplCopyWith<_$AppVersionInformationImpl>
      get copyWith => __$$AppVersionInformationImplCopyWithImpl<
          _$AppVersionInformationImpl>(this, _$identity);
}

abstract class _AppVersionInformation implements AppVersionInformation {
  const factory _AppVersionInformation(
      {required final UnemptyString canUpdateVersion,
      required final UnemptyString forceUpdateVersion,
      required final UnemptyString playstoreUrl,
      required final UnemptyString appstoreUrl}) = _$AppVersionInformationImpl;

  @override
  UnemptyString get canUpdateVersion;
  @override
  UnemptyString get forceUpdateVersion;
  @override
  UnemptyString get playstoreUrl;
  @override
  UnemptyString get appstoreUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionInformationImplCopyWith<_$AppVersionInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
