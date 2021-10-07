import '/constants/constants.dart';

class Env {
  String baseUrl;

  Env._(this.baseUrl);

  /// 开发环境
  factory Env.dev() {
    return Env._(Urls.devBaseUrl);
  }

  /// 测试环境
  factory Env.test() {
    return Env._(Urls.testBaseUrl);
  }

  /// 生产环境
  factory Env.prod() {
    return Env._(Urls.provBaseUrl);
  }
}
