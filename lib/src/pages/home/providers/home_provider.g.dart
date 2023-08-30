// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homePageHash() => r'88b727ba6d965b62b97bf480e1be4118407cd270';

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

/// See also [homePage].
@ProviderFor(homePage)
const homePageProvider = HomePageFamily();

/// See also [homePage].
class HomePageFamily extends Family<void> {
  /// See also [homePage].
  const HomePageFamily();

  /// See also [homePage].
  HomePageProvider call({
    bool isDebug = false,
  }) {
    return HomePageProvider(
      isDebug: isDebug,
    );
  }

  @override
  HomePageProvider getProviderOverride(
    covariant HomePageProvider provider,
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
  String? get name => r'homePageProvider';
}

/// See also [homePage].
class HomePageProvider extends AutoDisposeProvider<void> {
  /// See also [homePage].
  HomePageProvider({
    bool isDebug = false,
  }) : this._internal(
          (ref) => homePage(
            ref as HomePageRef,
            isDebug: isDebug,
          ),
          from: homePageProvider,
          name: r'homePageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homePageHash,
          dependencies: HomePageFamily._dependencies,
          allTransitiveDependencies: HomePageFamily._allTransitiveDependencies,
          isDebug: isDebug,
        );

  HomePageProvider._internal(
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
    void Function(HomePageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HomePageProvider._internal(
        (ref) => create(ref as HomePageRef),
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
    return _HomePageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomePageProvider && other.isDebug == isDebug;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isDebug.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomePageRef on AutoDisposeProviderRef<void> {
  /// The parameter `isDebug` of this provider.
  bool get isDebug;
}

class _HomePageProviderElement extends AutoDisposeProviderElement<void>
    with HomePageRef {
  _HomePageProviderElement(super.provider);

  @override
  bool get isDebug => (origin as HomePageProvider).isDebug;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
