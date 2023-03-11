import 'package:flutter/material.dart' show Brightness, ThemeData;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/themes/providers/font_family_provider.dart';
import '/services/themes/providers/color_scheme_seed_provider.dart';

part 'light_mode_helper.g.dart';

@riverpod
ThemeData lightTheme(LightThemeRef ref) {
  final fontFamily = ref.watch(appFontServiceProvider);
  final colorSchemeSeed = ref.watch(appColorSchemeSeedProvider);

  ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorSchemeSeed: colorSchemeSeed,
      fontFamily: fontFamily,
    );
  }

  return lightTheme();
}
