// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$secureTokenStorageHash() =>
    r'0430adf2cabc65a0ea21098229dfc78f92401de6';

/// See also [secureTokenStorage].
@ProviderFor(secureTokenStorage)
final secureTokenStorageProvider = Provider<SecureTokenStorage>.internal(
  secureTokenStorage,
  name: r'secureTokenStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$secureTokenStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SecureTokenStorageRef = ProviderRef<SecureTokenStorage>;
String _$refreshDioHash() => r'35f8c46acdade5f3025cb1a07e1e238467ca58a3';

/// Independent dio used for `POST /auth/tokens/refresh`. Must not have the
/// auth interceptor or we'd recurse on 401.
///
/// Copied from [refreshDio].
@ProviderFor(refreshDio)
final refreshDioProvider = Provider<Dio>.internal(
  refreshDio,
  name: r'refreshDioProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshDioRef = ProviderRef<Dio>;
String _$s3DioHash() => r'a5a3d99d4ee3892e5ec0dbf24f35437e5fd598aa';

/// Plain dio for S3 PUT - no Authorization, no baseUrl.
///
/// Copied from [s3Dio].
@ProviderFor(s3Dio)
final s3DioProvider = Provider<Dio>.internal(
  s3Dio,
  name: r's3DioProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$s3DioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef S3DioRef = ProviderRef<Dio>;
String _$apiDioHash() => r'2182696a89750678a9fb13e3f57dba148d42ceab';

/// Main API dio with auth + refresh wiring.
///
/// Copied from [apiDio].
@ProviderFor(apiDio)
final apiDioProvider = Provider<Dio>.internal(
  apiDio,
  name: r'apiDioProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$apiDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiDioRef = ProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
