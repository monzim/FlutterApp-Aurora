import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aurora/services/app_preference/providers/app_settings_provider.dart';

class ErrorMaterial extends ConsumerWidget {
  const ErrorMaterial({super.key, required this.error});
  final Object error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ErrorWidget(error),
              TextButton(
                onPressed: () => ref.refresh(appSettingsProvider),
                child: const Text('Reload'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
