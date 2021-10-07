import 'package:dio/dio.dart';
import 'package:flutter_app_template/data/api/api_exception.dart';

import 'interceptors/request_interceptor.dart';
import 'interceptors/response_interceptor.dart';

class HttpClient {
  late Dio _dio;
  HttpClient(String baseUrl) {
    _setupDio(baseUrl);
  }

  void _setupDio(String baseUrl) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      sendTimeout: 5000,
      contentType: Headers.formUrlEncodedContentType,
    ));

    _dio.interceptors.add(RequestInterceptor());
    _dio.interceptors.add(ResponseInterceptor());

    /// 其他功能拦截器
    /// - fresh_dio ： token自动刷新
    /// - network_logger : 带日志列表的UI，用于测试的时候
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final res = await _dio.get(
        uri,
        queryParameters: query,
        options: options,
        cancelToken: cancelToken,
      );
      return res.data;
    } on DioError catch (e) {
      throw ApiException.dioError(e);
    } catch (e) {
      throw ApiException(code: -1, message: e.toString());
    }
  }

  /// ignore: long-parameter-list
  Future<dynamic> post(
    String uri, {
    data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final res = await _dio.post(
        uri,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );
      return res.data;
    } on DioError catch (e) {
      throw ApiException.dioError(e);
    } catch (e) {
      throw ApiException(code: -1, message: e.toString());
    }
  }
}
