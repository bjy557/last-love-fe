import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../app/env.dart';
import 'api_error.dart';

/// Builds the primary dio instance used to call the BE.
///
/// Interceptors should be registered by the auth bootstrap once the
/// secure-storage-backed token providers are available.
Dio buildBaseDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
      connectTimeout: Env.connectTimeout,
      receiveTimeout: Env.receiveTimeout,
      sendTimeout: Env.connectTimeout,
      headers: const {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      // We treat 4xx/5xx as exceptions and convert them via the error mapper.
      validateStatus: (status) => status != null && status < 400,
      responseType: ResponseType.json,
    ),
  );

  // Convert dio failures into `ApiError`. Always registered first so the
  // refresh interceptor sees `ApiError` consistently.
  dio.interceptors.add(_ErrorMappingInterceptor());

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: false,
      responseHeader: false,
      logPrint: (msg) => debugPrint('[dio] $msg'),
    ));
  }

  return dio;
}

/// Plain dio for S3 PUT requests - no Authorization header, no baseUrl.
Dio buildS3Dio() {
  return Dio(
    BaseOptions(
      connectTimeout: Env.connectTimeout,
      receiveTimeout: Env.uploadTimeout,
      sendTimeout: Env.uploadTimeout,
      validateStatus: (status) => status != null && status < 400,
    ),
  );
}

class _ErrorMappingInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    final ApiError apiError;
    if (response != null) {
      apiError = ApiError.fromResponse(response);
    } else {
      apiError = ApiError.fromDio(err);
    }
    handler.reject(DioException(
      requestOptions: err.requestOptions,
      response: response,
      type: err.type,
      error: apiError,
      stackTrace: err.stackTrace,
    ));
  }
}
