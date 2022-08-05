import 'package:dio/dio.dart';

import '../utils/log.dart';

class RefreshTokenInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }
}

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Log.write('Req Started [${options.method.toUpperCase()}]', type: 'Req');
    Log.soft('[PATH] ${options.path}');
    options.headers.forEach((k, v) => Log.soft('$k: $v'));
    Log.divider(type: 'Req');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Log.success('Req Success [${response.statusCode}]', type: 'Resp');
    Log.soft('[PATH] ${response.requestOptions.path}', type: 'Resp');
    Log.soft('${response.data}', type: 'Resp');
    Log.divider(type: 'Resp');

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Log.error('Req Error [${err.response?.statusCode}]', type: 'Err');
    Log.soft('[PATH] ${err.response?.requestOptions.path}', type: 'Err');
    Log.soft('${err.response?.data}', type: 'Err');
    Log.divider(type: 'Err');

    return super.onError(err, handler);
  }
}
