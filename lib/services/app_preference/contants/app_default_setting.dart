import 'package:flutter/material.dart' show Color, Colors, Locale, immutable;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

import '/services/localization/providers/localization_provider.dart';

@immutable
class AppDefaultSettings {
  static bool get isDarkMode => _isDarkMode;
  static bool get isSystemThemeMode => _isSystemThemeMode;
  static Locale get locale => _locale;
  static String? get fontFamily => GoogleFonts.ubuntu().fontFamily;
  static Color get colorSchemeSeed => _colorSchemeSeed;

  static const _isDarkMode = false;
  static const _isSystemThemeMode = true;
  static const _locale = AppLocales.enUS;
  static const _colorSchemeSeed = Colors.indigo;
}
