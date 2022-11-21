import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueString id,
    required UnemptyString email,
    required UnemptyString password,
  }) = _AppUser;
}
