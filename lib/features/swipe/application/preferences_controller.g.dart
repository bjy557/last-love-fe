// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$swipePreferencesHash() => r'9222208ccb49c348cc40f92b0126a6660f672e19';

/// Loads current preferences once. UI should `ref.invalidate` if the user
/// re-enters the screen after saving.
///
/// Copied from [swipePreferences].
@ProviderFor(swipePreferences)
final swipePreferencesProvider =
    AutoDisposeFutureProvider<SwipePreferences>.internal(
      swipePreferences,
      name: r'swipePreferencesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$swipePreferencesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SwipePreferencesRef = AutoDisposeFutureProviderRef<SwipePreferences>;
String _$preferencesControllerHash() =>
    r'fe6d7795d0145860812824bae7fe3b49cddd9ffc';

/// See also [PreferencesController].
@ProviderFor(PreferencesController)
final preferencesControllerProvider =
    AutoDisposeNotifierProvider<PreferencesController, void>.internal(
      PreferencesController.new,
      name: r'preferencesControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$preferencesControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$PreferencesController = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
