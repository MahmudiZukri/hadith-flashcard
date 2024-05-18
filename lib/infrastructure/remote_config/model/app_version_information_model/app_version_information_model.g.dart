// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppVersionInformationModelImpl _$$AppVersionInformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppVersionInformationModelImpl(
      canUpdateVersion: json['canUpdateVersion'] as String,
      forceUpdateVersion: json['forceUpdateVersion'] as String,
      playstoreUrl: json['playstoreUrl'] as String,
      appstoreUrl: json['appstoreUrl'] as String,
    );

Map<String, dynamic> _$$AppVersionInformationModelImplToJson(
        _$AppVersionInformationModelImpl instance) =>
    <String, dynamic>{
      'canUpdateVersion': instance.canUpdateVersion,
      'forceUpdateVersion': instance.forceUpdateVersion,
      'playstoreUrl': instance.playstoreUrl,
      'appstoreUrl': instance.appstoreUrl,
    };
