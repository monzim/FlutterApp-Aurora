import 'package:aurora/services/local_storage/shared_preferences/helper/shared_preferences_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

// Get an instance of SharedPreferences Future
@riverpod
Future<SharedPreferences> getSharedPreferencesInstance(
    GetSharedPreferencesInstanceRef ref) async {
  return await SharedPreferences.getInstance();
}

// Get an instance of SharedPreferences
@riverpod
SharedPreferences? sharedPreferences(SharedPreferencesRef ref) {
  final pref = ref.watch(getSharedPreferencesInstanceProvider).value;
  return pref;
}

// Get an instance of SharedPreferencesHelper So that we can use it to store and retrieve data
@riverpod
class SharedPrefService extends _$SharedPrefService {
  late SharedPreferencesHelper _sharedPreferencesHelper;

  @override
  Future<SharedPreferencesHelper> build() async {
    final pref = await ref.watch(getSharedPreferencesInstanceProvider.future);

    _sharedPreferencesHelper = SharedPreferencesHelper(pref);
    return _sharedPreferencesHelper;
  }

  Future<void> clear() async {
    await _sharedPreferencesHelper.clear();
  }

  Future<bool> remove(String key) async {
    return await _sharedPreferencesHelper.remove(key);
  }

  Future<bool> containsKey(String key) async {
    return await _sharedPreferencesHelper.containsKey(key);
  }

  dynamic get(String key) {
    return _sharedPreferencesHelper.get(key);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferencesHelper.setBool(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _sharedPreferencesHelper.setDouble(key, value);
  }
}
