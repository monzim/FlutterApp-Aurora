import 'package:flutter/material.dart';

import '/src/global/global.dart';
import '/services/themes/providers/color_scheme_seed_provider.dart';
import '/services/app_preference/providers/app_settings_provider.dart';

extension ColorToHex on Color {
  String toHex() {
    return '#${value.toRadixString(16).padLeft(8, '0').substring(2)}';
  }
}

class AppColorSection extends ConsumerWidget {
  const AppColorSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = [
      Colors.red.toHex().hexToColor(),
      Colors.pink.toHex().hexToColor(),
      Colors.purple.toHex().hexToColor(),
      Colors.deepPurple.toHex().hexToColor(),
      Colors.indigo.toHex().hexToColor(),
      Colors.blue.toHex().hexToColor(),
      Colors.lightBlue.toHex().hexToColor(),
      Colors.cyan.toHex().hexToColor(),
      Colors.teal.toHex().hexToColor(),
      Colors.green.toHex().hexToColor(),
      Colors.lightGreen.toHex().hexToColor(),
      Colors.lime.toHex().hexToColor(),
      Colors.yellow.toHex().hexToColor(),
      Colors.amber.toHex().hexToColor(),
      Colors.orange.toHex().hexToColor(),
      Colors.deepOrange.toHex().hexToColor(),
      Colors.brown.toHex().hexToColor(),
      Colors.grey.toHex().hexToColor(),
      Colors.blueGrey.toHex().hexToColor(),
    ];

    final colorSchemeSeed = ref.watch(appColorSchemeSeedProvider);

    return ListTile(
      title: Text(context.l10n.changeColor),
      leading: const Icon(Icons.color_lens),
      trailing: DropdownButton<Color>(
        value: colorSchemeSeed,
        onChanged: (color) {
          if (color != null) {
            ref.read(appSettingsProvider.notifier).updateColorSchemeSeed(color);
          }
        },
        underline: const SizedBox.shrink(),
        items: colors
            .map(
              (color) => DropdownMenuItem<Color>(
                value: color,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        color.toHex().toUpperCase(),
                        style: TextStyle(
                          color: color.computeLuminance() > 0.5
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
