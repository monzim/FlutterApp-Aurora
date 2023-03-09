import 'package:flutter_riverpod/flutter_riverpod.dart';

extension ProviderHelperExtention on Ref {
  String get formatHash =>
      '0x${runtimeType.hashCode.toRadixString(32).padLeft(8, '0')}-${hashCode.toRadixString(23)}';
}
