import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../errors/exceptions.dart';
import '../injection/service_locator.dart';
import '../utils/log.dart';

abstract class NetworkModule {
  final _dio = getIt<Dio>();

  /* Headers */
  Future<Map<String, String>> headers() async {
    return {
      'Content-Type': 'application/json',
    };
  }

  Future<Map<String, dynamic>> safeCallApi<T>(
    Future<Response<T>> call,
  ) async {
    try {
      var response = await call;
      return responseParser(response);
    }

    /* On Known Error */
    on DioError catch (dioErr) {
      String message = dioErr.message;
      String? code = '500';

      Log.error('Dio Error [${dioErr.type}]', type: 'Err');
      Log.soft(message, type: 'Err');

      List<DioErrorType> dioTimeout = [
        DioErrorType.connectTimeout,
        DioErrorType.receiveTimeout,
        DioErrorType.sendTimeout,
      ];

      if (dioTimeout.any((e) => dioErr.type == e)) {
        throw NetworkException();
      }

      if (dioErr.type == DioErrorType.response) {
        try {
          message = dioErr.response?.data['message'];
          code = dioErr.response?.statusCode?.toString();
        } catch (parseErr) {
          Log.warning('Parse Error', type: 'Err');
          Log.soft(
            'Unknown error message | ${dioErr.response?.realUri}',
            type: 'ERR',
          );
          Log.divider();

          message = 'N/A';
        }
      }

      throw ServerException(message: message, code: code);
    }
  }

  Map<String, dynamic> responseParser(Response response) {
    var data = <String, dynamic>{};

    try {
      data = json.decode(response.toString());
    } catch (e) {
      Log.warning('Parse Error', type: 'RESP');
      Log.soft(
        'Response format isn\'t as expected | ${response.realUri}',
        type: 'RESP',
      );
      Log.divider();
    }

    return data;
  }

  Future<Map<String, dynamic>> getMethod(
    String endpoint, {
    Map<String, dynamic>? params,
  }) async {
    Options options = Options(
      headers: await headers(),
    );

    var response = await safeCallApi(
      _dio.get(
        endpoint,
        queryParameters: params,
        options: options,
      ),
    );

    return response;
  }

  Future<Map<String, dynamic>> postMethod(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    Options options = Options(headers: await headers());

    var response = await safeCallApi(
      _dio.post(
        endpoint,
        data: body,
        options: options,
      ),
    );

    return response;
  }

  Future<Map<String, dynamic>> putMethod(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    Options options = Options(headers: await headers());

    var response = await safeCallApi(
      _dio.put(
        endpoint,
        data: body,
        options: options,
      ),
    );

    return response;
  }

  Future<Map<String, dynamic>> deleteMethod(
    String endpoint, {
    Map<String, dynamic>? body,
  }) async {
    Options options = Options(headers: await headers());

    var response = await safeCallApi(
      _dio.delete(
        endpoint,
        data: body,
        options: options,
      ),
    );

    return response;
  }
}

@LazySingleton(as: NetworkModule)
class NetworkModuleImpl extends NetworkModule {}
