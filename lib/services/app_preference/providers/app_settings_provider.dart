import 'dart:ui' show Color;
import 'package:aurora/services/app_preference/constants/app_default_setting.dart';
import 'package:aurora/services/local_storage/shared_preferences/constant/shared_pref_constant.dart';
import 'package:aurora/services/local_storage/shared_preferences/provider/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/riverpod/riverpod.dart';
import '/services/app_preference/models/app_preference.dart';
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

  /// Update the dark mode state.
  ///
  /// The [isDarkMode] parameter is used to update the dark mode state.
  void updateDarkMode(bool isDarkMode) {
    final appPreferences = state.value;
    appPreferences?.isDarkMode = isDarkMode;
    _update(appPreferences);
  }

  // This method toggles the theme of the app, if the theme is currently
  // dark, then it will set the theme to light, and if the theme is currently
  // light, then it will set the theme to dark.
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

  // This function is called to reset the preferences to their default values.
  void reset() {
    // Get the default preferences.
    final appPreferences = AppPreferences.defaultPref();
    // Update the preferences.
    _update(appPreferences);
  }

  void _update(AppPreferences? appPreferences) {
    // After updating the preferences, we need to set the state of the
    // preferences to the new value. The state can be one of three values:
    // We need to set the state to the new value in order to render the
    // preferences.
    ProviderHelper.onUpdate('AppSettings', ref.formatHash);

    // If the preferences are null, then we need to set the state to
    // AsyncValue.error. This is because we don't want to render the
    // preferences if they are null. We want to render the preferences
    if (appPreferences != null) {
      _savePreferences(appPreferences);
      state = AsyncValue.data(appPreferences);
    }
  }

  // Get the data from the shared preferences.
  Future<AppPreferences> _getData() async {
    late AppPreferences appPreferences;
    final prefService = await ref.read(sharedPrefServiceProvider.future);

    final isFirstRun = prefService.getBool(SharedPrefConstant.FIRSTRUN) ?? true;

    if (isFirstRun) {
      prefService.setBool(SharedPrefConstant.FIRSTRUN, false);

      final newAppPreferences = AppPreferences.defaultPref();
      _savePreferences(newAppPreferences);

      appPreferences = newAppPreferences;
    } else {
      final isDarkMode = prefService.getBool(
              SharedPrefConstant.withPref(SharedPrefConstant.isDarkMode)) ??
          AppDefaultSettings.isDarkMode;

      final isSystemThemeMode = prefService.getBool(SharedPrefConstant.withPref(
              SharedPrefConstant.isSystemThemeMode)) ??
          AppDefaultSettings.isSystemThemeMode;

      final fontFamily = prefService.getString(
          SharedPrefConstant.withPref(SharedPrefConstant.fontFamily));

      final language = prefService
          .getString(SharedPrefConstant.withPref(SharedPrefConstant.language));

      final colorSchemeSeed = prefService.getString(
          SharedPrefConstant.withPref(SharedPrefConstant.colorSchemeSeed));

      appPreferences = AppPreferences(
        isDarkMode: isDarkMode,
        isSystemThemeMode: isSystemThemeMode,
        colorSchemeSeed: colorSchemeSeed == ''
            ? AppDefaultSettings.colorSchemeSeed.toHex()
            : colorSchemeSeed,
        language:
            language == '' ? AppDefaultSettings.locale.languageCode : language,
        fontFamily:
            fontFamily == '' ? AppDefaultSettings.fontFamily : fontFamily,
      );
    }

    /*
      !TODO: Remove this delay if you don't want to show the splash screen  when the app is opened for the first time.
     */

    await Future.delayed(const Duration(milliseconds: 700));

    return appPreferences;
  }

  // Save the new preferences.
  Future<void> _savePreferences(AppPreferences newPref) async {
    final pref = await ref.read(sharedPrefServiceProvider.future);

    /*
      Check if the new preference is different from the default preference. 
      If it is different, then save it to the shared preference.
     */

    if (newPref.isDarkMode != AppDefaultSettings.isDarkMode) {
      pref.setBool(SharedPrefConstant.withPref(SharedPrefConstant.isDarkMode),
          newPref.isDarkMode);
    }

    if (newPref.isSystemThemeMode != AppDefaultSettings.isSystemThemeMode) {
      pref.setBool(
          SharedPrefConstant.withPref(SharedPrefConstant.isSystemThemeMode),
          newPref.isSystemThemeMode);
    }

    if (newPref.fontFamily != AppDefaultSettings.fontFamily) {
      pref.setString(SharedPrefConstant.withPref(SharedPrefConstant.fontFamily),
          newPref.fontFamily!);
    }

    if (newPref.language != AppDefaultSettings.locale.languageCode) {
      pref.setString(SharedPrefConstant.withPref(SharedPrefConstant.language),
          newPref.language);
    }

    if (newPref.colorSchemeSeed != AppDefaultSettings.colorSchemeSeed.toHex()) {
      pref.setString(
          SharedPrefConstant.withPref(SharedPrefConstant.colorSchemeSeed),
          newPref.colorSchemeSeed);
    }
  }
}
