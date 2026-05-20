import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/application/auth_controller.dart';
import '../storage/secure_storage.dart';
import 'auth_interceptor.dart';
import 'dio_client.dart';

part 'api_providers.g.dart';

@Riverpod(keepAlive: true)
SecureTokenStorage secureTokenStorage(Ref ref) => SecureTokenStorage();

/// Independent dio used for `POST /auth/tokens/refresh`. Must not have the
/// auth interceptor or we'd recurse on 401.
@Riverpod(keepAlive: true)
Dio refreshDio(Ref ref) {
  return buildBaseDio();
}

/// Plain dio for S3 PUT - no Authorization, no baseUrl.
@Riverpod(keepAlive: true)
Dio s3Dio(Ref ref) => buildS3Dio();

/// Main API dio with auth + refresh wiring.
@Riverpod(keepAlive: true)
Dio apiDio(Ref ref) {
  final dio = buildBaseDio();
  final storage = ref.watch(secureTokenStorageProvider);
  final refresh = ref.watch(refreshDioProvider);

  dio.interceptors.add(AuthInterceptor(
    storage: storage,
    refreshClient: refresh,
    onAuthLost: () async {
      // Invalidating the auth controller forces a re-evaluation; the router
      // redirect picks up the new unauthenticated state.
      ref.read(authControllerProvider.notifier).signOutLocal();
    },
  ));

  // Inject dio into request extras so the auth interceptor can replay
  // failed requests via this exact instance.
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    options.extra['_dio'] = dio;
    handler.next(options);
  }));
  return dio;
}
