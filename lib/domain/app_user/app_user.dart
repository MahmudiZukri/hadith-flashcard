import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueString id,
    required EmailAddress email,
    // we changed this to UnemptyString because guest name is filled with number
    required UnemptyString name,
    required bool isActive,
    required DateTime? createdAt,
    required UrlAddress? photoUrl,
  }) = _AppUser;
}
