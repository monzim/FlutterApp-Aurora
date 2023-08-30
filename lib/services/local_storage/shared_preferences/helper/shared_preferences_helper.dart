import 'package:shared_preferences/shared_preferences.dart';

// A helper class to store and retrieve data from SharedPreferences. This class is used by the SharedPrefService class.
class SharedPreferencesHelper {
  final SharedPreferences _preferences;

  SharedPreferencesHelper(this._preferences);

  String getString(String key) {
    return _preferences.getString(key) ?? '';
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  Future<bool> clear() async {
    return await _preferences.clear();
  }

  Future<bool> remove(String key) async {
    return await _preferences.remove(key);
  }

  Future<bool> containsKey(String key) async {
    return _preferences.containsKey(key);
  }

  dynamic get(String key) {
    return _preferences.get(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _preferences.setBool(key, value);
  }

  Future<bool> setInt(String key, int value) async {
    return await _preferences.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _preferences.setDouble(key, value);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return await _preferences.setStringList(key, value);
  }

  bool? getBool(String key) {
    return _preferences.getBool(key);
  }

  int? getInt(String key) {
    return _preferences.getInt(key);
  }

  double? getDouble(String key) {
    return _preferences.getDouble(key);
  }

  List<String>? getStringList(String key) {
    return _preferences.getStringList(key);
  }

  Set<String>? getKeys() {
    return _preferences.getKeys();
  }

  Future<void> reload() async {
    await _preferences.reload();
  }
}
