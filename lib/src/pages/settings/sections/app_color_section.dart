import 'package:flutter/material.dart';
import '/services/themes/providers/color_scheme_seed_provider.dart';
import '/src/global/global.dart';

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
      Colors.red,
      Colors.pink,
      Colors.purple,
      Colors.deepPurple,
      Colors.indigo,
      Colors.blue,
      Colors.lightBlue,
      Colors.cyan,
      Colors.teal,
      Colors.green,
      Colors.lightGreen,
      Colors.lime,
      Colors.yellow,
      Colors.amber,
      Colors.orange,
      Colors.deepOrange,
      Colors.brown,
      Colors.grey,
      Colors.blueGrey,
    ];

    final colorSchemeSeed = ref.watch(appColorSchemeSeedProvider);

    return ListTile(
      title: Text(context.l10n.changeColor),
      leading: const Icon(Icons.color_lens),
      trailing: DropdownButton<Color>(
        value: colorSchemeSeed,
        onChanged: (color) {
          if (color != null) {
            ref.read(appColorSchemeSeedProvider.notifier).changeColor(color);
          }
        },
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
