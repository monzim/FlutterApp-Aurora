import 'package:flutter/material.dart';
import '/services/riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_provider.g.dart';

@riverpod
class ThemeModeService extends _$ThemeModeService {
  @override
  ThemeMode build() {
    ProviderHelper.onInit('ThemeModeService', ref.formatHash);
    return ThemeMode.light;
  }

  void toggleTheme() {
    switch (state) {
      case ThemeMode.system:
        // TODO: Implement system theme check if light then set to dark
        setTheme(ThemeMode.light);
        break;
      case ThemeMode.light:
        setTheme(ThemeMode.dark);
        break;
      case ThemeMode.dark:
        setTheme(ThemeMode.light);
        break;
    }
  }

  void setTheme(ThemeMode themeMode) {
    state = themeMode;
  }

  void setSystemTheme() {
    setTheme(ThemeMode.system);
  }
}
