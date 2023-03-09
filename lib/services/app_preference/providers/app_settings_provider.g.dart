// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appSettingsHash() => r'0a817b09ea3a9df23b972fa529be8fc58a7e0c1d';

/// See also [AppSettings].
@ProviderFor(AppSettings)
final appSettingsProvider =
    AutoDisposeAsyncNotifierProvider<AppSettings, AppPreferences>.internal(
  AppSettings.new,
  name: r'appSettingsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appSettingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppSettings = AutoDisposeAsyncNotifier<AppPreferences>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
