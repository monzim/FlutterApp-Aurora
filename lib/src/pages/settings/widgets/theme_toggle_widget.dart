import 'package:flutter/material.dart';

import '/src/global/global.dart';
import '/services/themes/providers/themes_provider.dart';
import '/services/themes/providers/theme_mode_provider.dart';

class ThemeToggleWidget extends ConsumerWidget {
  const ThemeToggleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Switch(
      value: isDarkMode,
      onChanged: (value) {
        ref.read(themeModeServiceProvider.notifier).toggleTheme();
      },
    );
  }
}
