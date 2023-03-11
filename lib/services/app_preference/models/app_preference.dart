import 'package:isar/isar.dart';

import '/services/themes/extention/color_extention.dart';
import '/services/app_preference/constants/app_default_setting.dart';
import '/services/local_storage/isar/constants/isar_constants.dart';

part 'app_preference.g.dart';

@collection
class AppPreferences {
  Id id = IsarConstantsCollections.appPreferences;

  bool isDarkMode = AppDefaultSettings.isDarkMode;
  String? fontFamily = AppDefaultSettings.fontFamily;
  String language = AppDefaultSettings.locale.toLanguageTag();
  bool isSystemThemeMode = AppDefaultSettings.isSystemThemeMode;
  String colorSchemeSeed = AppDefaultSettings.colorSchemeSeed.toHex();
}
