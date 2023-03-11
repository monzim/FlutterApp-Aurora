import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/riverpod/riverpod.dart';

part 'settings_provider.g.dart';

@riverpod
void settingsPage(
  SettingsPageRef ref, {
  bool isDebug = false,
}) {
  if (isDebug) {
    final hash = ref.formatHash;

    ProviderHelper.onInit('SettingPageProvider', hash);
    ref.onResume(() => ProviderHelper.onWatch('SettingPageProvider', hash));
    ref.onDispose(() => ProviderHelper.onDispose('SettingPageProvider', hash));
  }
}
