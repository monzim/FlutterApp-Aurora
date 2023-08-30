// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsPageHash() => r'd634dd8476cbdd9ac561121079f7a5ae333854f0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [settingsPage].
@ProviderFor(settingsPage)
const settingsPageProvider = SettingsPageFamily();

/// See also [settingsPage].
class SettingsPageFamily extends Family<void> {
  /// See also [settingsPage].
  const SettingsPageFamily();

  /// See also [settingsPage].
  SettingsPageProvider call({
    bool isDebug = false,
  }) {
    return SettingsPageProvider(
      isDebug: isDebug,
    );
  }

  @override
  SettingsPageProvider getProviderOverride(
    covariant SettingsPageProvider provider,
  ) {
    return call(
      isDebug: provider.isDebug,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'settingsPageProvider';
}

/// See also [settingsPage].
class SettingsPageProvider extends AutoDisposeProvider<void> {
  /// See also [settingsPage].
  SettingsPageProvider({
    bool isDebug = false,
  }) : this._internal(
          (ref) => settingsPage(
            ref as SettingsPageRef,
            isDebug: isDebug,
          ),
          from: settingsPageProvider,
          name: r'settingsPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$settingsPageHash,
          dependencies: SettingsPageFamily._dependencies,
          allTransitiveDependencies:
              SettingsPageFamily._allTransitiveDependencies,
          isDebug: isDebug,
        );

  SettingsPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isDebug,
  }) : super.internal();

  final bool isDebug;

  @override
  Override overrideWith(
    void Function(SettingsPageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SettingsPageProvider._internal(
        (ref) => create(ref as SettingsPageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isDebug: isDebug,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _SettingsPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SettingsPageProvider && other.isDebug == isDebug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isDebug.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SettingsPageRef on AutoDisposeProviderRef<void> {
  /// The parameter `isDebug` of this provider.
  bool get isDebug;
}

class _SettingsPageProviderElement extends AutoDisposeProviderElement<void>
    with SettingsPageRef {
  _SettingsPageProviderElement(super.provider);

  @override
  bool get isDebug => (origin as SettingsPageProvider).isDebug;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
