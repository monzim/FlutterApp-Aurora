import 'dart:developer' show log;

class ProviderHelper {
  static onInit(String name, String hash) {
    log(
      'initialized with hash: ${hash.toUpperCase()}',
      name: '🚀 $name',
      time: DateTime.now(),
    );
  }

  static onCancel(String name, String hash) {
    log(
      'canceled with hash: ${hash.toUpperCase()}',
      name: '🛑 $name',
      time: DateTime.now(),
    );
  }

  static onDispose(String name, String hash) {
    log(
      'disposed with hash: ${hash.toUpperCase()}',
      name: '🚮 $name',
      time: DateTime.now(),
    );
  }

  static onRebuild(String name, String hash) {
    log(
      'rebuilt with hash: ${hash.toUpperCase()}',
      name: '🔁 $name',
      time: DateTime.now(),
    );
  }

  static onRead(String name, String hash) {
    log(
      'read with hash: ${hash.toUpperCase()}',
      name: '👁️ $name',
      time: DateTime.now(),
    );
  }

  static onProvider(String name, String hash) {
    log(
      'provider with hash: ${hash.toUpperCase()}',
      name: '📦 $name',
      time: DateTime.now(),
    );
  }

  static onWatch(String name, String hash) {
    log(
      'provider watched with hash: ${hash.toUpperCase()}',
      name: '👀 $name',
      time: DateTime.now(),
    );
  }

  static onAddListener(String name, String hash) {
    log(
      'add listener with hash: ${hash.toUpperCase()}',
      name: '👂 $name',
      time: DateTime.now(),
    );
  }

  static onRemoveListener(String name, String hash) {
    log(
      'remove listener with hash: ${hash.toUpperCase()}',
      name: '🔇 $name',
      time: DateTime.now(),
    );
  }

  static onUpdate(String name, String hash) {
    log(
      'updated with hash: ${hash.toUpperCase()}',
      name: '🔄  $name',
      time: DateTime.now(),
    );
  }
}
