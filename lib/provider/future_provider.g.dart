// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterFutureGeneratorHash() =>
    r'66e2d727b8010e1f684fdf324ed6ea6d263ef9e7';

/// See also [counterFutureGenerator].
@ProviderFor(counterFutureGenerator)
final counterFutureGeneratorProvider = AutoDisposeFutureProvider<int>.internal(
  counterFutureGenerator,
  name: r'counterFutureGeneratorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterFutureGeneratorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CounterFutureGeneratorRef = AutoDisposeFutureProviderRef<int>;
String _$counterFutureGeneratorFamilyHash() =>
    r'96a205c587284fd6808bbc263fddad90f780517f';

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

/// See also [counterFutureGeneratorFamily].
@ProviderFor(counterFutureGeneratorFamily)
const counterFutureGeneratorFamilyProvider =
    CounterFutureGeneratorFamilyFamily();

/// See also [counterFutureGeneratorFamily].
class CounterFutureGeneratorFamilyFamily extends Family<AsyncValue<int>> {
  /// See also [counterFutureGeneratorFamily].
  const CounterFutureGeneratorFamilyFamily();

  /// See also [counterFutureGeneratorFamily].
  CounterFutureGeneratorFamilyProvider call(
    int a,
    int b,
  ) {
    return CounterFutureGeneratorFamilyProvider(
      a,
      b,
    );
  }

  @override
  CounterFutureGeneratorFamilyProvider getProviderOverride(
    covariant CounterFutureGeneratorFamilyProvider provider,
  ) {
    return call(
      provider.a,
      provider.b,
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
  String? get name => r'counterFutureGeneratorFamilyProvider';
}

/// See also [counterFutureGeneratorFamily].
class CounterFutureGeneratorFamilyProvider
    extends AutoDisposeFutureProvider<int> {
  /// See also [counterFutureGeneratorFamily].
  CounterFutureGeneratorFamilyProvider(
    int a,
    int b,
  ) : this._internal(
          (ref) => counterFutureGeneratorFamily(
            ref as CounterFutureGeneratorFamilyRef,
            a,
            b,
          ),
          from: counterFutureGeneratorFamilyProvider,
          name: r'counterFutureGeneratorFamilyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterFutureGeneratorFamilyHash,
          dependencies: CounterFutureGeneratorFamilyFamily._dependencies,
          allTransitiveDependencies:
              CounterFutureGeneratorFamilyFamily._allTransitiveDependencies,
          a: a,
          b: b,
        );

  CounterFutureGeneratorFamilyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.a,
    required this.b,
  }) : super.internal();

  final int a;
  final int b;

  @override
  Override overrideWith(
    FutureOr<int> Function(CounterFutureGeneratorFamilyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CounterFutureGeneratorFamilyProvider._internal(
        (ref) => create(ref as CounterFutureGeneratorFamilyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        a: a,
        b: b,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _CounterFutureGeneratorFamilyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterFutureGeneratorFamilyProvider &&
        other.a == a &&
        other.b == b;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, a.hashCode);
    hash = _SystemHash.combine(hash, b.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterFutureGeneratorFamilyRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `a` of this provider.
  int get a;

  /// The parameter `b` of this provider.
  int get b;
}

class _CounterFutureGeneratorFamilyProviderElement
    extends AutoDisposeFutureProviderElement<int>
    with CounterFutureGeneratorFamilyRef {
  _CounterFutureGeneratorFamilyProviderElement(super.provider);

  @override
  int get a => (origin as CounterFutureGeneratorFamilyProvider).a;
  @override
  int get b => (origin as CounterFutureGeneratorFamilyProvider).b;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
