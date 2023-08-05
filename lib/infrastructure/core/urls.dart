class Urls {
  static const String getHadithNarrators = '/hadith';
  static String getHadithsByNarrator(String narratorName) =>
      '/hadith/$narratorName';
}
