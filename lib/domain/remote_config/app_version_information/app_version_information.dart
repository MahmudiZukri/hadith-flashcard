import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';

part 'app_version_information.freezed.dart';

@freezed
class AppVersionInformation with _$AppVersionInformation {
  const factory AppVersionInformation({
    required UnemptyString canUpdateVersion,
    required UnemptyString forceUpdateVersion,
    required UnemptyString playstoreUrl,
    required UnemptyString appstoreUrl,
  }) = _AppVersionInformation;
}
