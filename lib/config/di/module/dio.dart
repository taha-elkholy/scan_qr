import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:scan_qr/core/api/end_points.dart';
import 'package:scan_qr/core/network/network_info.dart';
import 'package:scan_qr/core/utils/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../injectable.dart';

@module
abstract class AppDioInject {
  Dio get dio {
    Dio dio = Dio();
    dio.interceptors.add(AppInterceptor());
    return dio;
  }
}

class AppInterceptor extends Interceptor {
  String? get token => _getToken();

  String? _getToken() {
    final token = getIt<SharedPreferences>().getString(AppStrings.tokenKey);
    // Todo a static valid token as i can get dynamic one from the login endpoint yet
    // must be removed when fix it
    return 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzA3Y2I2NGViYWU4MWNmNGM2MGU1NzliMTFmYWI3MmM3ZGZkYjU1NjFlNWM1ZDk5MWE5Mzc3MjZmODQyYmJhMzk4M2I3NmIwOTlmMmNkNGYiLCJpYXQiOjE2NzEzNjk3NDAsIm5iZiI6MTY3MTM2OTc0MCwiZXhwIjoxNzAyOTA1NzQwLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.UXuXEXFt6chujm7c-bUnwq_-Z_RRvKa3KaUstu4Lw_6PpRNGDwY3uoOIOXrAkQDFjHWyNL7bSomrFEEl69jL3LE_-NctJfDxWn9QwMQfhlEFixTz5PonjEQKq-sxv6x8D64JvFB_8WQwxE1GgH70W25TYl607zWypdIegKNNT2g8jepK8GRiajph9u0dXjwJrG8WjJXcZu1Fw3H4mILVyln16uYxeXBDTfWvY2xfj11OM64tqg2zonVjqJCtEDkorUfmhKXhaS1Br3owLUiVAZZ5dZLlPkqDZfj13DpHlXcMSGynl53opLx02F83bfDPijw9K8dJq7xyQsdOlWimj8Y4BmJn39fojvmIvmGY4VS6m_lFdHT99eGg7dIO-zIYbou-dzPgjOb9ZQyTD7yTrqi_GJQyRFD5PEUa8cV9SYIybykm8Pxm7qfsTcPAp8OwMELQjA11PYsb0tBKMu1L2hJ1obAqvvl3aE84qGYmLbAuGOxGAkEig_DPJzHPDzeDDE8GJTcOqGpY11iSWJDK1fCkDWGzXYZS0zKSdHbQLLg7nM3e4WporIdKXX8AMvsPj7rGt2jR1poWxl5HQdq1MCk9TZrKCXFALqorChhobNl8N1w4et3PBioLrofnCXugN5_nErfLYTiYBZKzL1wjIizll-HjiNoyKRCQXkOHeM8';
    return token;
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connection = await NetworkInfo().isConnected;

    debugPrint('AppInterceptor=> token:$token');
    debugPrint('AppInterceptor=> request path is:${options.path}');

    if (connection) {
      options.baseUrl = EndPoints.baseUrl;
      options.sendTimeout = const Duration(seconds: 60);
      options.connectTimeout = const Duration(seconds: 60);
      options.contentType = AppStrings.applicationJson;
      options.receiveTimeout = const Duration(seconds: 60);
      options.responseType = ResponseType.json;
      options.receiveDataWhenStatusError = true;
      options.followRedirects = false;
      options.validateStatus = (status) {
        return status! < 500;
      };

      options.headers.addAll(
        {
          AppStrings.accept: AppStrings.applicationJson,
          AppStrings.authorization: '${AppStrings.bearer} $token'
        },
      );

      handler.next(options);
    } else {
      handler.reject(
        DioError(
          requestOptions: options,
          type: DioErrorType.cancel,
          response: Response(
            requestOptions: options,
            statusCode: HttpStatus.networkConnectTimeoutError,
          ),
        ),
      );
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('AppInterceptor=> Dio Error Message is:${err.message}');
    if (err.error is SocketException) {
      debugPrint('AppInterceptor=>  socket Exception');
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('AppInterceptor=> response code is:${response.statusCode}');
    debugPrint('AppInterceptor=> response data is:${response.data}');
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        handler.reject(DioError(
          requestOptions: response.requestOptions,
          type: DioErrorType.badCertificate,
          response: Response(
            requestOptions: response.requestOptions,
            statusCode: HttpStatus.unauthorized,
          ),
          error: AppStrings.unAuthErrorMessage,
        ));
        break;
      default:
        handler.next(response);
        break;
    }
  }
}
