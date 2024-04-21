import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hadith_flashcard/domain/app_user/app_user.dart';
import 'package:hadith_flashcard/domain/core/objects/objects.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    required String id,
    required String? email,
    required String name,
    required bool isActive,
    required String? photoUrl,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);

  factory AppUserModel.fromDomain(AppUser user) {
    return AppUserModel(
      id: user.id.getOrCrash(),
      email: user.email.getOrNull(),
      name: user.name.getOrCrash(),
      isActive: user.isActive,
      photoUrl: user.photoUrl?.getOrNull(),
    );
  }
}

extension AppUserModelX on AppUserModel {
  AppUser toDomain() => AppUser(
        id: UniqueString.fromUniqueString(id),
        email: email != null ? EmailAddress(email!) : EmailAddress.empty(),
        name: PersonName(name),
        isActive: isActive,
        photoUrl: photoUrl == null
            ? null
            : UrlAddress(
                photoUrl!,
              ),
      );
}
