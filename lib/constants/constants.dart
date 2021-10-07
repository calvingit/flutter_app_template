class Constants {}

extension Urls on Constants {
  static const devBaseUrl = 'https://baidu.com';
  static const testBaseUrl = 'https://baidu.com';
  static const provBaseUrl = 'https://baidu.com';
}

extension Timeouts on Constants {
  /// HTTP 连接超时，单位毫秒
  static const connectTimeout = 5000;

  /// HTTP 接收超时，单位毫秒
  static const receiveTimeout = 5000;

  /// HTTP 发送超时，单位毫秒
  static const sendTimeout = 5000;
}
