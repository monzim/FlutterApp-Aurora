import 'dart:convert';

import 'package:aurora/src/pages/settings/sections/app_color_section.dart';

import '/services/app_preference/constants/app_default_setting.dart';

class AppPreferences {
  bool isDarkMode;
  String? fontFamily;
  String language;
  bool isSystemThemeMode;
  String colorSchemeSeed;

  AppPreferences({
    this.isDarkMode = AppDefaultSettings.isDarkMode,
    this.fontFamily,
    required this.language,
    this.isSystemThemeMode = AppDefaultSettings.isSystemThemeMode,
    required this.colorSchemeSeed,
  });

  factory AppPreferences.defaultPref() {
    return AppPreferences(
      isDarkMode: AppDefaultSettings.isDarkMode,
      fontFamily: AppDefaultSettings.fontFamily,
      language: AppDefaultSettings.locale.languageCode,
      isSystemThemeMode: AppDefaultSettings.isSystemThemeMode,
      colorSchemeSeed: AppDefaultSettings.colorSchemeSeed.toHex(),
    );
  }

  AppPreferences copyWith({
    bool? isDarkMode,
    String? fontFamily,
    String? language,
    bool? isSystemThemeMode,
    String? colorSchemeSeed,
  }) {
    return AppPreferences(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      fontFamily: fontFamily ?? this.fontFamily,
      language: language ?? this.language,
      isSystemThemeMode: isSystemThemeMode ?? this.isSystemThemeMode,
      colorSchemeSeed: colorSchemeSeed ?? this.colorSchemeSeed,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'isDarkMode': isDarkMode});
    if (fontFamily != null) {
      result.addAll({'fontFamily': fontFamily});
    }
    result.addAll({'language': language});
    result.addAll({'isSystemThemeMode': isSystemThemeMode});
    result.addAll({'colorSchemeSeed': colorSchemeSeed});

    return result;
  }

  factory AppPreferences.fromMap(Map<String, dynamic> map) {
    return AppPreferences(
      isDarkMode: map['isDarkMode'] ?? false,
      fontFamily: map['fontFamily'],
      language: map['language'] ?? '',
      isSystemThemeMode: map['isSystemThemeMode'] ?? false,
      colorSchemeSeed: map['colorSchemeSeed'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AppPreferences.fromJson(String source) =>
      AppPreferences.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AppPreferences(isDarkMode: $isDarkMode, fontFamily: $fontFamily, language: $language, isSystemThemeMode: $isSystemThemeMode, colorSchemeSeed: $colorSchemeSeed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppPreferences &&
        other.isDarkMode == isDarkMode &&
        other.fontFamily == fontFamily &&
        other.language == language &&
        other.isSystemThemeMode == isSystemThemeMode &&
        other.colorSchemeSeed == colorSchemeSeed;
  }

  @override
  int get hashCode {
    return isDarkMode.hashCode ^
        fontFamily.hashCode ^
        language.hashCode ^
        isSystemThemeMode.hashCode ^
        colorSchemeSeed.hashCode;
  }
}
