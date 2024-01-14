import 'dart:developer';
import 'package:dio/dio.dart';

class ApiAuthClient {
  late Dio _dio;

  dioService() {
    _dio = Dio();

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      if (options.data is FormData) {
        options.contentType = 'multipart/form-data';
      } else {
        options.contentType = 'application/json';
      }
      handler.next(options);
    }, onResponse: (Response response, handler) {
      handler.next(response);
    }, onError: (e, handler) {
      log('Api error: path: ${e.requestOptions.uri.path}  response: ${e.response} ');
      handler.next(e);
    }));
  }

  Dio get dio => _dio;

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }
}
