part of 'enums.dart';

enum ELanguage { indonesia, english }

extension ELanguageX on ELanguage {
  static const index = {
    ELanguage.indonesia: 0,
    ELanguage.english: 1,
  };

  static const names = {
    ELanguage.indonesia: 'Indonesia',
    ELanguage.english: 'English US',
  };

  static const images = {
    ELanguage.indonesia: AssetUrl.indonesiaFlag,
    ELanguage.english: AssetUrl.unitedStatesFlag,
  };

  String? get imageUrl => images[this];
}
