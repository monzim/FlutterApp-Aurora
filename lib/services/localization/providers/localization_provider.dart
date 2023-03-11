import 'package:flutter/material.dart' show Locale;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/app_preference/providers/app_settings_provider.dart';

part 'localization_provider.g.dart';

class AppLocales {
  static const enUS = Locale('en', 'US');
  static const bnBD = Locale('bn', 'BD');

  List<Locale> get supportedLocales => [enUS, bnBD];
  Locale get defaultLocale => enUS;

  static Locale getLocale(String language) {
    switch (language) {
      case 'en':
        return enUS;
      case 'bn':
        return bnBD;
      default:
        return enUS;
    }
  }
}

@riverpod
Locale? appLocalizationService(AppLocalizationServiceRef ref) {
  final appSettings = ref.watch(appSettingsProvider);

  final k =
      appSettings.whenData((value) => AppLocales.getLocale(value.language));

  return k.value;
}
