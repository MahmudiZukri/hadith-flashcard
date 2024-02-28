class Urls {
  static const String getHadithNarrators = '/hadith';
  static String getHadithsByNarrator(String narratorName) =>
      '/hadith/$narratorName';
  static String getHadithByNarrator(String narratorName, int hadithNumber) =>
      '/hadith/$narratorName/$hadithNumber';
}
