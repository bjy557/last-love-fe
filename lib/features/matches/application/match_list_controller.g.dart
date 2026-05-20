// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$matchDetailHash() => r'eebbc1cb221c3b0c974fcb4f04187a8799d2074a';

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

/// One-shot fetch for the match detail screen.
///
/// Copied from [matchDetail].
@ProviderFor(matchDetail)
const matchDetailProvider = MatchDetailFamily();

/// One-shot fetch for the match detail screen.
///
/// Copied from [matchDetail].
class MatchDetailFamily extends Family<AsyncValue<MatchResponse>> {
  /// One-shot fetch for the match detail screen.
  ///
  /// Copied from [matchDetail].
  const MatchDetailFamily();

  /// One-shot fetch for the match detail screen.
  ///
  /// Copied from [matchDetail].
  MatchDetailProvider call(int matchId) {
    return MatchDetailProvider(matchId);
  }

  @override
  MatchDetailProvider getProviderOverride(
    covariant MatchDetailProvider provider,
  ) {
    return call(provider.matchId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'matchDetailProvider';
}

/// One-shot fetch for the match detail screen.
///
/// Copied from [matchDetail].
class MatchDetailProvider extends AutoDisposeFutureProvider<MatchResponse> {
  /// One-shot fetch for the match detail screen.
  ///
  /// Copied from [matchDetail].
  MatchDetailProvider(int matchId)
    : this._internal(
        (ref) => matchDetail(ref as MatchDetailRef, matchId),
        from: matchDetailProvider,
        name: r'matchDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$matchDetailHash,
        dependencies: MatchDetailFamily._dependencies,
        allTransitiveDependencies: MatchDetailFamily._allTransitiveDependencies,
        matchId: matchId,
      );

  MatchDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.matchId,
  }) : super.internal();

  final int matchId;

  @override
  Override overrideWith(
    FutureOr<MatchResponse> Function(MatchDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MatchDetailProvider._internal(
        (ref) => create(ref as MatchDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        matchId: matchId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MatchResponse> createElement() {
    return _MatchDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MatchDetailProvider && other.matchId == matchId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, matchId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MatchDetailRef on AutoDisposeFutureProviderRef<MatchResponse> {
  /// The parameter `matchId` of this provider.
  int get matchId;
}

class _MatchDetailProviderElement
    extends AutoDisposeFutureProviderElement<MatchResponse>
    with MatchDetailRef {
  _MatchDetailProviderElement(super.provider);

  @override
  int get matchId => (origin as MatchDetailProvider).matchId;
}

String _$matchListControllerHash() =>
    r'dc6deee99f0ed6e5708377cc00fdcbca043a4098';

/// Controller for the match list screen. Supports cursor pagination + pull
/// to refresh. We avoid auto-loading on scroll bottom: the list is typically
/// short and 40+ users benefit from explicit "더 보기".
///
/// Copied from [MatchListController].
@ProviderFor(MatchListController)
final matchListControllerProvider =
    AutoDisposeNotifierProvider<MatchListController, MatchListState>.internal(
      MatchListController.new,
      name: r'matchListControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$matchListControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MatchListController = AutoDisposeNotifier<MatchListState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
