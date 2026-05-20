// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icebreakers_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$icebreakersHash() => r'66035c9e6ca7fe67940680492e209cd3d16fa6ab';

/// Returns the 8 static icebreakers. We try to fetch the BE list once per
/// session, falling back to the local copy if anything goes wrong (the BE
/// returns the same set today).
///
/// Copied from [icebreakers].
@ProviderFor(icebreakers)
final icebreakersProvider = FutureProvider<List<Icebreaker>>.internal(
  icebreakers,
  name: r'icebreakersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$icebreakersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IcebreakersRef = FutureProviderRef<List<Icebreaker>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
