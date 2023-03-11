import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/app_preference/providers/app_settings_provider.dart';

part 'font_family_provider.g.dart';

@riverpod
String? appFontService(AppFontServiceRef ref) {
  final appSettings =
      ref.watch(appSettingsProvider.select((data) => data.value?.fontFamily));
  return appSettings;
}
