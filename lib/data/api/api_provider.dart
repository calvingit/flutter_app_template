import 'package:dio/dio.dart';
import 'package:flutter_app_template/data/api/api_exception.dart';
import 'api_response.dart';
import 'http_client.dart';

class ApiProvider {
  HttpClient client;
  ApiProvider({required String baseUrl}) : client = HttpClient(baseUrl);

  Future<ApiResponse> request(
    String url, {
    dynamic params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final res = await client.request(
        url,
        params: params,
        options: options,
        cancelToken: cancelToken,
      );
      return ApiResponse(res);
    } on DioError catch (e) {
      throw ApiException.dioError(e);
    } catch (e) {
      throw ApiException(code: -1, message: e.toString());
    }
  }
}
