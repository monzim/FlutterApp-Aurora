import 'package:flutter/material.dart';

import '/src/global/global.dart';
import '/services/themes/providers/font_provider.dart';

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
          alignment: Alignment.center,
          onChanged: (value) {
            ref.read(appFontServiceProvider.notifier).setFontFamily(value);
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
