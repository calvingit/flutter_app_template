import 'package:dio/dio.dart';
import '/constants/constants.dart';
import 'api_response.dart';
import 'http_client.dart';

class ApiProvider {
  HttpClient client = HttpClient(Urls.devBaseUrl);
  ApiProvider();

  Future<ApiResponse> get(
    String uri, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      uri,
      query: query,
      options: options,
      cancelToken: cancelToken,
    );
    return ApiResponse(res);
  }
}
