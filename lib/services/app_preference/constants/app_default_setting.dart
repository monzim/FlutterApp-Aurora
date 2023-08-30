import 'package:flutter/material.dart' show Color, Colors, Locale, immutable;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

import '/services/localization/providers/localization_provider.dart';

@immutable
class AppDefaultSettings {
  static const bool isDarkMode = false;
  static const bool isSystemThemeMode = true;
  static const Locale locale = AppLocales.enUS;
  static String? get fontFamily => GoogleFonts.lato().fontFamily;
  static const Color colorSchemeSeed = Colors.red;
}
