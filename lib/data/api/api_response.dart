/// 假设数据结构如下, code 为 0时成功，其他失败:
/// {
///   "code": 0,
///   "error": "",
///   "data": {
///       "xxxx": "xxxxx"
///    }
/// }
class ApiResponse {
  dynamic data;
  int? code;
  String? error;

  ApiResponse(dynamic json) {
    code = json['code'] ?? -1;
    data = json['data'];
    error = json['error'];
  }
}
