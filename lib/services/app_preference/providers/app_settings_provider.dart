import 'dart:ui' show Color;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/riverpod/riverpod.dart';
import '/services/app_preference/models/app_preference.dart';
import '/services/local_storage/isar/constants/isar_constants.dart';
import '/services/local_storage/isar/providers/isar_provider.dart';
import '/services/themes/extention/color_extention.dart';

part 'app_settings_provider.g.dart';

@riverpod
class AppSettings extends _$AppSettings {
  @override
  Future<AppPreferences> build() async {
    ProviderHelper.onInit('AppSettings', ref.formatHash);
    final appPreferences = await _getData();
    return appPreferences;
  }

  void updateDarkMode(bool isDarkMode) {
    final appPreferences = state.value;
    appPreferences?.isDarkMode = isDarkMode;
    _update(appPreferences);
  }

  void toggleSystemTheme() {
    final appPreferences = state.value;
    if (appPreferences != null) {
      appPreferences.isSystemThemeMode = !appPreferences.isSystemThemeMode;
      appPreferences.isDarkMode =
          appPreferences.isSystemThemeMode ? false : appPreferences.isDarkMode;
      _update(appPreferences);
    }
  }

  void toggleTheme() {
    final appPreferences = state.value;
    if (appPreferences != null) {
      appPreferences.isSystemThemeMode = false;
      appPreferences.isDarkMode = !appPreferences.isDarkMode;

      _update(appPreferences);
    }
  }

  void updateFontFamily(String? fontFamily) {
    final appPreferences = state.value;
    appPreferences?.fontFamily = fontFamily;
    _update(appPreferences);
  }

  void updateLanguage(String language) {
    final appPreferences = state.value;
    appPreferences?.language = language;
    _update(appPreferences);
  }

  void updateIsSystemThemeMode(bool isSystemThemeMode) {
    final appPreferences = state.value;
    appPreferences?.isSystemThemeMode = isSystemThemeMode;
    _update(appPreferences);
  }

  void updateColorSchemeSeed(Color color) {
    final appPreferences = state.value;
    appPreferences?.colorSchemeSeed = color.toHex();
    _update(appPreferences);
  }

  void reset() {
    final appPreferences = AppPreferences();
    _update(appPreferences);
  }

  void _update(AppPreferences? appPreferences) {
    ProviderHelper.onUpdate('AppSettings', ref.formatHash);
    if (appPreferences != null) {
      _savePreferences(appPreferences);
      state = AsyncValue.data(appPreferences);
    }
  }

  Future<AppPreferences> _getData() async {
    // Add a delay to show the splash screen

    final isar = await ref.read(isarServiceProvider.future);
    final appPreferences =
        await isar?.appPreferences.get(IsarConstantsCollections.appPreferences);

    //! TODO: Remove this delay if you don't want to show the splash screen
    await Future.delayed(const Duration(milliseconds: 700));

    if (appPreferences != null) {
      return appPreferences;
    }

    final newAppPreferences = AppPreferences();
    _savePreferences(newAppPreferences);
    return newAppPreferences;
  }

  Future<void> _savePreferences(AppPreferences preferences) async {
    final isar = await ref.read(isarServiceProvider.future);
    await isar?.writeTxn(() async => isar.appPreferences.put(preferences));
  }
}
