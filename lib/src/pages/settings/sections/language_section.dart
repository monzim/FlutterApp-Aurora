import 'package:flutter/material.dart';

import '/src/global/global.dart';
import '/services/localization/providers/localization_provider.dart';

class LanguageSettingSection extends ConsumerWidget {
  const LanguageSettingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationServiceProvider);

    return ListTile(
      title: Text(context.l10n.switchLanguage),
      leading: const Icon(Icons.language),
      trailing: DropdownButton<Locale>(
        value: locale,
        onChanged: (value) {
          ref
              .read(appLocalizationServiceProvider.notifier)
              .setLocale(value ?? AppLocales.bnBD);
        },
        items: [
          DropdownMenuItem(
            value: AppLocales.enUS,
            child: Text(context.l10n.english),
          ),
          DropdownMenuItem(
            value: AppLocales.bnBD,
            child: Text(context.l10n.bangla),
          ),
        ],
      ),
    );
  }
}
