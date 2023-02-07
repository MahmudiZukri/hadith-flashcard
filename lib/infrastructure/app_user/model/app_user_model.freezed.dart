// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) {
  return _AppUserModel.fromJson(json);
}

/// @nodoc
mixin _$AppUserModel {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserModelCopyWith<AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res, AppUserModel>;
  @useResult
  $Res call({String id, String? email, String name});
}

/// @nodoc
class _$AppUserModelCopyWithImpl<$Res, $Val extends AppUserModel>
    implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserModelCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$$_AppUserModelCopyWith(
          _$_AppUserModel value, $Res Function(_$_AppUserModel) then) =
      __$$_AppUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? email, String name});
}

/// @nodoc
class __$$_AppUserModelCopyWithImpl<$Res>
    extends _$AppUserModelCopyWithImpl<$Res, _$_AppUserModel>
    implements _$$_AppUserModelCopyWith<$Res> {
  __$$_AppUserModelCopyWithImpl(
      _$_AppUserModel _value, $Res Function(_$_AppUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? name = null,
  }) {
    return _then(_$_AppUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUserModel implements _AppUserModel {
  const _$_AppUserModel(
      {required this.id, required this.email, required this.name});

  factory _$_AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserModelFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String name;

  @override
  String toString() {
    return 'AppUserModel(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserModelCopyWith<_$_AppUserModel> get copyWith =>
      __$$_AppUserModelCopyWithImpl<_$_AppUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserModelToJson(
      this,
    );
  }
}

abstract class _AppUserModel implements AppUserModel {
  const factory _AppUserModel(
      {required final String id,
      required final String? email,
      required final String name}) = _$_AppUserModel;

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$_AppUserModel.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserModelCopyWith<_$_AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
