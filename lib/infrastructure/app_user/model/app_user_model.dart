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
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);
}

extension AppUserModelX on AppUserModel {
  AppUser toDomain() => AppUser(
        id: UniqueString.fromUniqueString(id),
        email: email != null ? EmailAddress(email!) : EmailAddress.empty(),
        name: PersonName(name),
      );
}
