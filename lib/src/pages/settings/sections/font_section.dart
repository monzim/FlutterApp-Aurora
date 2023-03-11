import 'package:flutter/material.dart';

import '/services/themes/constants/app_fonts.dart';
import '/services/themes/providers/font_family_provider.dart';
import '/services/app_preference/providers/app_settings_provider.dart';

import '/src/global/global.dart';

class FontSettingSection extends ConsumerWidget {
  const FontSettingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final font = ref.watch(appFontServiceProvider);

    return ListTile(
      title: Text(context.l10n.changeFont),
      leading: const Icon(Icons.font_download),
      trailing: DropdownButton<String>(
          value: font,
          underline: const SizedBox.shrink(),
          alignment: Alignment.center,
          onChanged: (value) {
            ref.read(appSettingsProvider.notifier).updateFontFamily(value);
          },
          items: AppFonts.list
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e?.replaceAll('_regular', '') ?? '',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              .toList()),
    );
  }
}
