import 'package:dio/dio.dart';

class ApiException implements Exception {
  String? message;
  int code;
  ApiException({this.message, this.code = -1});

  @override
  String toString() {
    return "$message($code)";
  }

  factory ApiException.dioError(DioError error) {
    String message;
    int code = -1;
    switch (error.type) {
      case DioErrorType.connectTimeout:
        message = '服务器连接超时';
        break;
      case DioErrorType.sendTimeout:
        message = '请求发送超时';
        break;
      case DioErrorType.receiveTimeout:
        message = '请求接收超时';
        break;
      case DioErrorType.cancel:
        message = '请求已取消';
        break;
      case DioErrorType.response:
        message = '服务器响应失败';
        code = error.response?.statusCode ?? -1;
        break;
      default:
        message = '未知错误，请稍后再试！';
        break;
    }

    return ApiException(code: code, message: message);
  }
}
