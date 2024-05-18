import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';
import 'package:hadith_flashcard/domain/remote_config/app_version_information/app_version_information.dart';

part 'app_version_information_model.freezed.dart';
part 'app_version_information_model.g.dart';

@freezed
class AppVersionInformationModel with _$AppVersionInformationModel {
  const factory AppVersionInformationModel({
    required String canUpdateVersion,
    required String forceUpdateVersion,
    required String playstoreUrl,
    required String appstoreUrl,
  }) = _AppVersionInformationModel;

  factory AppVersionInformationModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionInformationModelFromJson(json);
}

extension AppVersionInformationModelX on AppVersionInformationModel {
  AppVersionInformation toDomain() => AppVersionInformation(
        canUpdateVersion: UnemptyString(canUpdateVersion),
        forceUpdateVersion: UnemptyString(forceUpdateVersion),
        playstoreUrl: UnemptyString(playstoreUrl),
        appstoreUrl: UnemptyString(appstoreUrl),
      );
}
