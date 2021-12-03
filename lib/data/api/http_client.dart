import 'package:dio/dio.dart';

import 'interceptors/request_interceptor.dart';
import 'interceptors/response_interceptor.dart';

enum HttpMethod { get, post }

class HttpClient {
  final dio = Dio();
  HttpClient(String baseUrl) {
    dio.options
      ..baseUrl = baseUrl
      ..connectTimeout = 5000
      ..receiveTimeout = 5000
      ..sendTimeout = 5000
      ..contentType = Headers.jsonContentType;

    /// 其他功能拦截器
    /// - freshdio ： token自动刷新
    /// - network_logger : 带日志列表的UI，用于测试的时候
    dio.interceptors
      ..add(RequestInterceptor())
      ..add(ResponseInterceptor())
      ..add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
  }

  Future<Response> request(
    String url, {
    HttpMethod method = HttpMethod.post,
    dynamic params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      if (method == HttpMethod.get) {
        return await dio.get(
          url,
          queryParameters: params,
          options: options,
          cancelToken: cancelToken,
        );
      } else {
        return await dio.post(
          url,
          data: params,
          options: options,
          cancelToken: cancelToken,
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
