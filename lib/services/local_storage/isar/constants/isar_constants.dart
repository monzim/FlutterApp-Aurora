import 'dart:convert' show utf8;
import 'package:flutter/foundation.dart' show immutable;

extension ToBinarray on String {
  int toBinary() {
    return utf8
        .encode(this)
        .fold(0, (previousValue, element) => previousValue + element);
  }
}

@immutable
class IsarDatabeName {
  static String defaultName = 'flutterMonzimIsarDB';
}

@immutable
class IsarConstantsCollections {
  static int appPreferences = 'appPreferences'.toBinary();
}
