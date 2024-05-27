import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true));
  }

  static Future<Response> fetchData(
      {required String path, required Map<String, dynamic> data}) async {
    return await dio.get(path, queryParameters: data);
  }
}
