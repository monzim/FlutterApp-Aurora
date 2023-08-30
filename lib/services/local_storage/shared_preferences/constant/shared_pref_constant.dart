import 'package:flutter/foundation.dart' show immutable;

@immutable
class SharedPrefConstant {
  static const String isDarkMode = 'isDarkMode';
  static const String isSystemThemeMode = 'isSystemThemeMode';
  static const String fontFamily = 'fontFamily';
  static const String language = 'language';
  static const String colorSchemeSeed = 'colorSchemeSeed';
  static const String isOnboarding = 'isOnboarding';
  static const String isLogin = 'isLogin';

  static const String appPreferences = 'appPreferences';
  // ignore: constant_identifier_names
  static const String FIRSTRUN = 'firstRun';

  static withPref(String key) {
    return '$appPreferences.$key';
  }
}
