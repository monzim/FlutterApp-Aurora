import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kDebugMode;

import '/src/global/global.dart';
import '/services/themes/providers/themes_provider.dart';
import '/services/app_preference/providers/app_settings_provider.dart';

import 'providers/settings_provider.dart';
import 'widgets/theme_toggle_widget.dart';
import 'sections/language_section.dart';
import 'sections/font_section.dart';
import 'sections/app_color_section.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(settingsPageProvider(isDebug: kDebugMode));

    final themeIcon = ref.watch(themeIconProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settingsPageTitle),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(appSettingsProvider.notifier).reset();
        },
        icon: const Icon(
          Icons.refresh,
        ),
        label: Text(context.l10n.reset),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Appearance settings
            ListTile(
              title: Text(context.l10n.switchTheme),
              leading: Icon(themeIcon),
              trailing: const ThemeToggleWidget(),
            ),

            const LanguageSettingSection(),
            const FontSettingSection(),
            const AppColorSection()
          ],
        ),
      ),
    );
  }
}
