// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppVersionInformationModel _$AppVersionInformationModelFromJson(
    Map<String, dynamic> json) {
  return _AppVersionInformationModel.fromJson(json);
}

/// @nodoc
mixin _$AppVersionInformationModel {
  String get canUpdateVersion => throw _privateConstructorUsedError;
  String get forceUpdateVersion => throw _privateConstructorUsedError;
  String get playstoreUrl => throw _privateConstructorUsedError;
  String get appstoreUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionInformationModelCopyWith<AppVersionInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionInformationModelCopyWith<$Res> {
  factory $AppVersionInformationModelCopyWith(AppVersionInformationModel value,
          $Res Function(AppVersionInformationModel) then) =
      _$AppVersionInformationModelCopyWithImpl<$Res,
          AppVersionInformationModel>;
  @useResult
  $Res call(
      {String canUpdateVersion,
      String forceUpdateVersion,
      String playstoreUrl,
      String appstoreUrl});
}

/// @nodoc
class _$AppVersionInformationModelCopyWithImpl<$Res,
        $Val extends AppVersionInformationModel>
    implements $AppVersionInformationModelCopyWith<$Res> {
  _$AppVersionInformationModelCopyWithImpl(this._value, this._then);

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
              as String,
      forceUpdateVersion: null == forceUpdateVersion
          ? _value.forceUpdateVersion
          : forceUpdateVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playstoreUrl: null == playstoreUrl
          ? _value.playstoreUrl
          : playstoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
      appstoreUrl: null == appstoreUrl
          ? _value.appstoreUrl
          : appstoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionInformationModelImplCopyWith<$Res>
    implements $AppVersionInformationModelCopyWith<$Res> {
  factory _$$AppVersionInformationModelImplCopyWith(
          _$AppVersionInformationModelImpl value,
          $Res Function(_$AppVersionInformationModelImpl) then) =
      __$$AppVersionInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String canUpdateVersion,
      String forceUpdateVersion,
      String playstoreUrl,
      String appstoreUrl});
}

/// @nodoc
class __$$AppVersionInformationModelImplCopyWithImpl<$Res>
    extends _$AppVersionInformationModelCopyWithImpl<$Res,
        _$AppVersionInformationModelImpl>
    implements _$$AppVersionInformationModelImplCopyWith<$Res> {
  __$$AppVersionInformationModelImplCopyWithImpl(
      _$AppVersionInformationModelImpl _value,
      $Res Function(_$AppVersionInformationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canUpdateVersion = null,
    Object? forceUpdateVersion = null,
    Object? playstoreUrl = null,
    Object? appstoreUrl = null,
  }) {
    return _then(_$AppVersionInformationModelImpl(
      canUpdateVersion: null == canUpdateVersion
          ? _value.canUpdateVersion
          : canUpdateVersion // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpdateVersion: null == forceUpdateVersion
          ? _value.forceUpdateVersion
          : forceUpdateVersion // ignore: cast_nullable_to_non_nullable
              as String,
      playstoreUrl: null == playstoreUrl
          ? _value.playstoreUrl
          : playstoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
      appstoreUrl: null == appstoreUrl
          ? _value.appstoreUrl
          : appstoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppVersionInformationModelImpl implements _AppVersionInformationModel {
  const _$AppVersionInformationModelImpl(
      {required this.canUpdateVersion,
      required this.forceUpdateVersion,
      required this.playstoreUrl,
      required this.appstoreUrl});

  factory _$AppVersionInformationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppVersionInformationModelImplFromJson(json);

  @override
  final String canUpdateVersion;
  @override
  final String forceUpdateVersion;
  @override
  final String playstoreUrl;
  @override
  final String appstoreUrl;

  @override
  String toString() {
    return 'AppVersionInformationModel(canUpdateVersion: $canUpdateVersion, forceUpdateVersion: $forceUpdateVersion, playstoreUrl: $playstoreUrl, appstoreUrl: $appstoreUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionInformationModelImpl &&
            (identical(other.canUpdateVersion, canUpdateVersion) ||
                other.canUpdateVersion == canUpdateVersion) &&
            (identical(other.forceUpdateVersion, forceUpdateVersion) ||
                other.forceUpdateVersion == forceUpdateVersion) &&
            (identical(other.playstoreUrl, playstoreUrl) ||
                other.playstoreUrl == playstoreUrl) &&
            (identical(other.appstoreUrl, appstoreUrl) ||
                other.appstoreUrl == appstoreUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, canUpdateVersion,
      forceUpdateVersion, playstoreUrl, appstoreUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionInformationModelImplCopyWith<_$AppVersionInformationModelImpl>
      get copyWith => __$$AppVersionInformationModelImplCopyWithImpl<
          _$AppVersionInformationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppVersionInformationModelImplToJson(
      this,
    );
  }
}

abstract class _AppVersionInformationModel
    implements AppVersionInformationModel {
  const factory _AppVersionInformationModel(
      {required final String canUpdateVersion,
      required final String forceUpdateVersion,
      required final String playstoreUrl,
      required final String appstoreUrl}) = _$AppVersionInformationModelImpl;

  factory _AppVersionInformationModel.fromJson(Map<String, dynamic> json) =
      _$AppVersionInformationModelImpl.fromJson;

  @override
  String get canUpdateVersion;
  @override
  String get forceUpdateVersion;
  @override
  String get playstoreUrl;
  @override
  String get appstoreUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionInformationModelImplCopyWith<_$AppVersionInformationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
