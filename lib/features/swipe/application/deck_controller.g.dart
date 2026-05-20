// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dailyDeckHash() => r'30d31ac80b1c5847910831c04bb11d5a361429df';

/// Loads today's deck once. Auto-disposes when the deck screen leaves the
/// stack; consumers should `ref.invalidate(dailyDeckProvider)` to force a
/// fresh fetch (e.g. after preference change with an empty deck).
///
/// Copied from [dailyDeck].
@ProviderFor(dailyDeck)
final dailyDeckProvider =
    AutoDisposeFutureProvider<DailySwipeCardsResponse>.internal(
      dailyDeck,
      name: r'dailyDeckProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$dailyDeckHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DailyDeckRef = AutoDisposeFutureProviderRef<DailySwipeCardsResponse>;
String _$deckControllerHash() => r'81fbf8fca76bfc034716108f37a2221239b2c3a4';

/// Per-screen controller. Subscribes to `dailyDeckProvider` to seed state,
/// then mutates locally as the user swipes.
///
/// Copied from [DeckController].
@ProviderFor(DeckController)
final deckControllerProvider =
    AutoDisposeNotifierProvider<DeckController, DeckState>.internal(
      DeckController.new,
      name: r'deckControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$deckControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$DeckController = AutoDisposeNotifier<DeckState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
