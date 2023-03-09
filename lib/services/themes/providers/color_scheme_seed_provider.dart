import 'package:flutter/material.dart' show Color, Colors;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_scheme_seed_provider.g.dart';

@riverpod
class AppColorSchemeSeed extends _$AppColorSchemeSeed {
  @override
  Color build() {
    return Colors.indigo;
  }

  void changeColor(Color color) {
    state = color;
  }

  void resetColor() {
    state = Colors.indigo;
  }
}
