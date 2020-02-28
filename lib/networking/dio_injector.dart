import 'package:dio/dio.dart';
import 'package:flutter_quick_start/constants/url_provider.dart';
import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/log.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';

final DioInjector injector = DioInjector();

class DioInjector {
  static final _singleton = DioInjector._internal();
  final storage = locator<StorageService>();
  final log = getLogger("DioInjector");

  factory DioInjector() {
    return _singleton;
  }

  DioInjector._internal();

  Dio _dio;

  Dio get dio => _dio;

  init() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
    ));

    _dio.interceptors
      ..add(
        InterceptorsWrapper(onRequest: (options) {
          final authToken = storage.authToken;
          print("authToken $authToken");
          if (options.extra["multipart"] == true) {
            options.headers = {
              "Authorization": "Bearer $authToken",
              "Content-Type": "multipart/form-data",
            };
          } else if (options.extra["removeHeader"] == true) {
            options.headers = {"content-type": "application/json"};
          } else {
            options.headers = {
              "Authorization": "Bearer $authToken",
              "content-type": "application/json"
            };
          }
          return options;
        }),
      )
      ..add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          request: false,
          responseHeader: false));
  }
}
