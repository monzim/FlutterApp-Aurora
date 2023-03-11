import 'package:flutter/material.dart' show IconData, Icons, ThemeMode;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'theme_mode_provider.dart';
part 'themes_provider.g.dart';

@riverpod
bool isDarkMode(IsDarkModeRef ref) {
  final themeMode = ref.watch(appThemeServiceProvider);
  return themeMode == ThemeMode.dark;
}

@riverpod
IconData themeIcon(ThemeIconRef ref) {
  final themeMode = ref.watch(appThemeServiceProvider);

  switch (themeMode ?? ThemeMode.system) {
    case ThemeMode.light:
      return Icons.brightness_5;

    case ThemeMode.dark:
      return Icons.brightness_3;

    case ThemeMode.system:
      return Icons.brightness_auto;
  }
}
