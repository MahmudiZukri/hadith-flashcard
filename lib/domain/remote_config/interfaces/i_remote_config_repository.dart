import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/common_failures/common_failures.dart';
import 'package:hadith_flashcard/domain/remote_config/app_version_information/app_version_information.dart';

abstract class IRemoteConfigRepository {
  Future<Either<CommonFailures, AppVersionInformation>> getUpdateVersionInfo();
  Future<Either<CommonFailures, bool>> getAdsStatus();
}
