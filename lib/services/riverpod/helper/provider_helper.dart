import 'package:flutter/foundation.dart' show debugPrint;

class ProviderHelper {
  static onInit(String name, String hash) {
    debugPrint('🚀 $name initialized with hash: ${hash.toUpperCase()}');
  }

  static onCancel(String name, String hash) {
    debugPrint('🛑 $name canceled with hash: ${hash.toUpperCase()}');
  }

  static onDispose(String name, String hash) {
    debugPrint('🗑️ $name disposed with hash: ${hash.toUpperCase()}');
  }

  static onRebuild(String name, String hash) {
    debugPrint('🔁 $name rebuilt with hash: ${hash.toUpperCase()}');
  }

  static onRead(String name, String hash) {
    debugPrint('👁️ $name read with hash: ${hash.toUpperCase()}');
  }

  static onProvider(String name, String hash) {
    debugPrint('📦 $name provider with hash: ${hash.toUpperCase()}');
  }

  static onWatch(String name, String hash) {
    debugPrint('👀 $name provider watched with hash: ${hash.toUpperCase()}');
  }

  static onAddListener(String name, String hash) {
    debugPrint('👂 $name add listener with hash: ${hash.toUpperCase()}');
  }

  static onRemoveListener(String name, String hash) {
    debugPrint('🔇 $name remove listener with hash: ${hash.toUpperCase()}');
  }
}
