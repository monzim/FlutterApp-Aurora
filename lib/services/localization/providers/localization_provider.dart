import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_provider.g.dart';

abstract class AppLocales {
  static const enUS = Locale('en', 'US');
  static const bnBD = Locale('bn', 'BD');
}

@riverpod
class AppLocalizationService extends _$AppLocalizationService {
  @override
  Locale build() {
    return AppLocales.enUS;
  }

  void setLocale(Locale locale) {
    state = locale;
  }

  void setLocaleToEnUS() {
    state = AppLocales.enUS;
  }

  void setLocaleToBnBD() {
    state = AppLocales.bnBD;
  }
}
