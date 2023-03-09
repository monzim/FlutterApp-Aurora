import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'services/routers/router_provider.dart';
import 'services/themes/providers/theme_mode_provider.dart';
import 'services/themes/helpers/dark_mode/dark_mode_helper.dart';
import 'services/themes/helpers/light_mode/light_mode_helper.dart';
import 'services/localization/providers/localization_provider.dart';
import 'services/app_preference/providers/app_settings_provider.dart';

import '/src/pages/splash/splash_scree.dart';

void main() {
  runApp(
    const ProviderScope(
      child: LoadBalance(),
    ),
  );
}

class LoadBalance extends ConsumerWidget {
  const LoadBalance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appSetting = ref.watch(appSettingsProvider);

    return appSetting.when(
      data: (value) {
        return const AuroraApp();
      },
      loading: () => const SplashScreen(),
      error: (error, stack) => const Center(
        child: Text('Something went wrong'),
      ),
    );
  }
}

class AuroraApp extends ConsumerWidget {
  const AuroraApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeServiceProvider);
    final routerConfig = ref.watch(routerProvider);
    final locale = ref.watch(appLocalizationServiceProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
      themeMode: themeMode,
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
    );
  }
}
