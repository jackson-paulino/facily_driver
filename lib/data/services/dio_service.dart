import 'package:dio/dio.dart';
import 'package:facily_driver/shared/app_custom_dio.dart';

class DioService {
  Future<Response> getRequest(String path,
      {Map<String, dynamic>? params, Map<String, String>? headers}) async {
    var dioResponse = await dio.get(path,
        queryParameters: params, options: Options(headers: headers));
    return dioResponse;
  }
}
