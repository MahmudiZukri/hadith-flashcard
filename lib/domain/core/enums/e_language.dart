part of 'enums.dart';

enum ELanguage { indonesia, english }

extension ELanguageX on ELanguage {
  static const indexes = {
    ELanguage.indonesia: 0,
    ELanguage.english: 1,
  };

  static const names = {
    ELanguage.indonesia: 'Indonesia',
    ELanguage.english: 'English US',
  };

  static const locales = {
    ELanguage.indonesia: 'id',
    ELanguage.english: 'en',
  };

  static const imageUrls = {
    ELanguage.indonesia: AssetUrl.indonesiaFlag,
    ELanguage.english: AssetUrl.unitedStatesFlag,
  };

  static const questionPrefixes = {
    ELanguage.indonesia: 'Apa bunyi dari',
    ELanguage.english: 'What is the content of',
  };

  int get index => indexes[this] ?? 0;
  String get name => names[this] ?? 'Indonesia';
  String get imageUrl => imageUrls[this] ?? AssetUrl.indonesiaFlag;
  String get locale => locales[this] ?? 'id';
  String get questionPrefix => questionPrefixes[this] ?? 'Apa bunyi dari';
}
