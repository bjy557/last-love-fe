// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$blockControllerHash() => r'fecbde834afe067634a5409d0c64246ff4502086';

/// See also [BlockController].
@ProviderFor(BlockController)
final blockControllerProvider =
    AutoDisposeNotifierProvider<
      BlockController,
      AsyncValue<BlockResponse?>
    >.internal(
      BlockController.new,
      name: r'blockControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$blockControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BlockController = AutoDisposeNotifier<AsyncValue<BlockResponse?>>;
String _$blockListControllerHash() =>
    r'08f4a39152fac27ea56cb1f9c26c15dd92b1b12b';

/// See also [BlockListController].
@ProviderFor(BlockListController)
final blockListControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      BlockListController,
      BlockListResponse
    >.internal(
      BlockListController.new,
      name: r'blockListControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$blockListControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BlockListController = AutoDisposeAsyncNotifier<BlockListResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
