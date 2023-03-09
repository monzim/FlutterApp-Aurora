import 'dart:ui' show Color;

extension ColorToHex on Color {
  String toHex() {
    return '#${value.toRadixString(16).padLeft(8, '0').substring(2)}';
  }
}
