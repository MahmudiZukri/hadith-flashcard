import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeStorage {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  /// Load isDarkMode from local storage and if it's empty, returns false (that means default theme is light)
  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  /// Save isDarkMode to local storage
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(
      _loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark,
    );
    _saveThemeToBox(
      !_loadThemeFromBox(),
    );
  }
}

class LocalizationStorage {
  final _box = GetStorage();
  final _key = 'currentLocale';

  /// Get locale info from local storage and return Locale
  String get locale => _box.read(_key) ?? 'id';

  /// Save locale to local storage
  _saveLocaleToBox(String localeStr) => _box.write(_key, localeStr);

  /// Switch theme and save to local storage
  void switchLocale({
    required String localeStr,
  }) {
    _saveLocaleToBox(localeStr);

    Get.updateLocale(
      Locale(localeStr),
    );
  }
}

class OpenedFirstTimeStorage {
  final _box = GetStorage();
  final _key = 'isOpenedFirstTime';

  /// Get value from local storage and return bool
  bool get isOpenedFirstTime => _box.read(_key) ?? true;

  /// Save value to local storage
  _saveOpenedFirstTimeToBox(bool value) => _box.write(_key, value);

  /// Open app first time
  void openApp() {
    _saveOpenedFirstTimeToBox(false);
  }
}
