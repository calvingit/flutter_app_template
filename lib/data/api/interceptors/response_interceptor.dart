import 'package:dio/dio.dart';

class ResponseInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    /// 结果处理
    handler.next(response);
  }
}
