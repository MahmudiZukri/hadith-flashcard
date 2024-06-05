import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/remote_config/app_version_information/app_version_information.dart';
import 'package:hadith_flashcard/domain/remote_config/interfaces/i_remote_config_repository.dart';
import 'package:hadith_flashcard/infrastructure/core/services/services.dart';
import 'package:hadith_flashcard/infrastructure/remote_config/model/app_version_information_model/app_version_information_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemoteConfigRepository)
class RemoteConfigRepository implements IRemoteConfigRepository {
  @override
  Future<Either<CommonFailures, bool>> getAdsStatus() async {
    try {
      // Get remote config value base on key string
      var remoteConfigValue = await RemoteConfigServices.getRemoteConfigValue(
        key: 'enable_ads',
      );

      return right(
        remoteConfigValue.asBool(),
      );
    } catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');

      return left(
        const CommonFailures.other(
          message: 'Failed to retrieve remote configuration value',
        ),
      );
    }
  }

  @override
  Future<Either<CommonFailures, AppVersionInformation>>
      getUpdateVersionInfo() async {
    try {
      // Get remote config value base on key string
      var remoteConfigValue = await RemoteConfigServices.getRemoteConfigValue(
        key: 'update_app_version',
      );

      var stringValue = remoteConfigValue.asString();
      var jsonValue = json.decode(stringValue) as Map<String, dynamic>;
      var appVersionInformationModel =
          AppVersionInformationModel.fromJson(jsonValue);

      return right(
        appVersionInformationModel.toDomain(),
      );
    } catch (e, stackTrace) {
      debugPrint('1------- $stackTrace -------1');

      return left(
        const CommonFailures.other(
          message: 'Failed to retrieve remote configuration value',
        ),
      );
    }
  }
}
