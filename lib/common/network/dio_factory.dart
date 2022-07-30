import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioFactory {
  static final List<Interceptor> _defaultInterceptors = [
    PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
    )
  ];

  static Dio createDio(String apiUrl) {
    final dio = Dio(BaseOptions(baseUrl: apiUrl));

    dio.interceptors.addAll(_defaultInterceptors);

    return dio;
  }

  void getShared() async {}
}
