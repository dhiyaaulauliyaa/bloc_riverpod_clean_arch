import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'network_interceptor.dart';
import 'network_url.dart';

class NetworkClient {
  static final baseOptions = BaseOptions(
    baseUrl: NetworkURL.base,
    contentType: 'application/json',
    connectTimeout: 10000,
    sendTimeout: 10000,
    receiveTimeout: 10000,
  );

  static Dio init({BaseOptions? options}) {
    var dio = Dio(options ?? baseOptions);
    
    dio.httpClientAdapter = DefaultHttpClientAdapter();
    dio.options.baseUrl = NetworkURL.base;
    
    dio.interceptors.add(RefreshTokenInterceptor());
    dio.interceptors.add(LoggingInterceptor());

    return dio;
  }
}
