import 'package:dio/dio.dart';

class RequestInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 添加请求判断逻辑，对特定接口做额外操作
    handler.next(options);
  }
}
