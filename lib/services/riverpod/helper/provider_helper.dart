import 'dart:developer' show log;

class ProviderHelper {
  static onInit(String name, String hash) {
    log(
      '🚀 $name initialized with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onCancel(String name, String hash) {
    log(
      '🛑 $name canceled with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper: $hash',
      time: DateTime.now(),
    );
  }

  static onDispose(String name, String hash) {
    log(
      '🚮 $name disposed with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onRebuild(String name, String hash) {
    log(
      '🔁 $name rebuilt with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onRead(String name, String hash) {
    log(
      '👁️ $name read with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onProvider(String name, String hash) {
    log(
      '📦 $name provider with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onWatch(String name, String hash) {
    log(
      '👀 $name provider watched with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onAddListener(String name, String hash) {
    log(
      '👂 $name add listener with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }

  static onRemoveListener(String name, String hash) {
    log(
      '🔇 $name remove listener with hash: ${hash.toUpperCase()}',
      name: 'ProviderHelper',
      time: DateTime.now(),
    );
  }
}
