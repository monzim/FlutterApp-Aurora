// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSharedPreferencesInstanceHash() =>
    r'6004ea49ad20ec1521098c25cf6057b78ace3bd4';

/// See also [getSharedPreferencesInstance].
@ProviderFor(getSharedPreferencesInstance)
final getSharedPreferencesInstanceProvider =
    AutoDisposeFutureProvider<SharedPreferences>.internal(
  getSharedPreferencesInstance,
  name: r'getSharedPreferencesInstanceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSharedPreferencesInstanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSharedPreferencesInstanceRef
    = AutoDisposeFutureProviderRef<SharedPreferences>;
String _$sharedPreferencesHash() => r'0337bcb69d3940f750f84bc71a98b7cb80e452e1';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeProvider<SharedPreferences?>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = AutoDisposeProviderRef<SharedPreferences?>;
String _$sharedPrefServiceHash() => r'2b3972868499911acc4cc6ff36b9b6d89b43c993';

/// See also [SharedPrefService].
@ProviderFor(SharedPrefService)
final sharedPrefServiceProvider = AutoDisposeAsyncNotifierProvider<
    SharedPrefService, SharedPreferencesHelper>.internal(
  SharedPrefService.new,
  name: r'sharedPrefServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPrefServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SharedPrefService = AutoDisposeAsyncNotifier<SharedPreferencesHelper>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
